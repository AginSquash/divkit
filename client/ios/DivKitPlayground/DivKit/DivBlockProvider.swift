import UIKit

import CommonCorePublic
import DivKit
import DivKitExtensions
import LayoutKit
import Serialization

typealias JsonProvider = () throws -> [String: Any]

struct ObservableJsonProvider {
  @ObservableProperty
  private var provider: JsonProvider = { [:] }

  var signal: Signal<JsonProvider> {
    $provider.currentAndNewValues
  }

  func load(url: URL) {
    provider = {
      try Data(contentsOf: url).asJsonDictionary()
    }
  }
}

extension Data {
  func asJsonDictionary() throws -> [String: Any] {
    try JSONSerialization.jsonObject(with: self, options: []) as! [String: Any]
  }
}

final class DivBlockProvider {
  private let divKitComponents: DivKitComponents
  private let sizeProviderExtensionHandler: SizeProviderExtensionHandler?
  private let disposePool = AutodisposePool()

  private var divData: DivData?
  public weak var parentScrollView: ScrollView?
  let divRenderTime = TimeMeasure()
  let divDataParsingTime = TimeMeasure()
  let divTemplateParsingTime = TimeMeasure()

  @ObservableProperty
  private(set) var block: Block = noDataBlock
  @Property
  private(set) var errors: [UIStatePayload.Error] = []

  init(
    json: Signal<JsonProvider>,
    divKitComponents: DivKitComponents,
    shouldResetOnDataChange: Bool
  ) {
    self.divKitComponents = divKitComponents

    sizeProviderExtensionHandler = divKitComponents.extensionHandlers
      .compactMap { $0 as? SizeProviderExtensionHandler }
      .first

    json
      .addObserver { [weak self] in
        if shouldResetOnDataChange {
          self?.divKitComponents.reset()
        }
        self?.update(jsonProvider: $0)
      }
      .dispose(in: disposePool)

    divKitComponents.updateCardSignal
      .addObserver { [weak self] in self?.update(reasons: $0) }.dispose(in: disposePool)
  }

  func update(reasons: [DivActionURLHandler.UpdateReason]) {
    guard var divData = divData else {
      block = makeErrorsBlock(errors.map { $0.description })
      return
    }

    sizeProviderExtensionHandler?.onCardUpdated(reasons: reasons)

    reasons.compactMap(\.patch).forEach {
      divData = divData.applyPatch($0)
    }
    self.divData = divData

    let context = divKitComponents.makeContext(
      cardId: cardId,
      cachedImageHolders: block.getImageHolders(),
      debugParams: AppComponents.debugParams,
      parentScrollView: parentScrollView
    )
    do {
      divRenderTime.start()
      let newBlock = try divData.makeBlock(
        context: context
      )
      divRenderTime.stop()
      block = newBlock
        .addingTime(
          dataParsing: divDataParsingTime.time,
          templateParsing: divTemplateParsingTime.time,
          render: divRenderTime.time
        )
        .addingErrorsInfo(
          errors.map { $0.description } +
            context.errorsStorage.errors.map { UIStatePayload.Error($0).description }
        )
    } catch {
      errors = [UIStatePayload.Error(error as CustomStringConvertible)]
        + context.errorsStorage.errors.map { UIStatePayload.Error($0 as CustomStringConvertible) }
        + errors
      block = makeErrorsBlock(errors.map { $0.description })
      AppLogger.error("Failed to build block: \(error)")
    }
  }

  func update(withStates blockStates: BlocksState) {
    do {
      block = try block.updated(withStates: blockStates)
    } catch {
      errors = [UIStatePayload.Error(error as CustomStringConvertible)] + errors
      block = makeErrorsBlock(errors.map { $0.description })

      AppLogger.error("Failed to update block: \(error)")
    }
  }

  private func update(jsonProvider: JsonProvider) {
    divData = nil
    block = noDataBlock
    errors = []

    do {
      let json = try jsonProvider()
      if json.isEmpty {
        return
      }

      let palette = Palette(json: try json.getOptionalField("palette") ?? [:])
      divKitComponents.variablesStorage
        .set(
          variables: palette.makeVariables(theme: UserPreferences.playgroundTheme),
          triggerUpdate: false
        )

      let result = try parseDivDataWithTemplates(json, cardId: cardId)

      divData = result.value
      errors = result.errorsOrWarnings?
        .map { (error: DeserializationError) -> UIStatePayload.Error in
          UIStatePayload.Error(error)
        }
        ?? []
    } catch {
      errors = [UIStatePayload.Error(error as CustomStringConvertible)]
      block = makeErrorsBlock(errors.map { "\($0.description)" })

      AppLogger.error("Failed to parse DivData: \(error)")
      return
    }

    update(reasons: [])
  }

  private func parseDivDataWithTemplates(
    _ jsonDict: [String: Any],
    cardId: DivCardID
  ) throws -> DeserializationResult<DivData> {
    let rawDivData = try RawDivData(dictionary: jsonDict)
    divTemplateParsingTime.start()
    let templates = DivTemplates(dictionary: rawDivData.templates)
    divTemplateParsingTime.stop()
    divDataParsingTime.start()
    let result = templates.parseValue(type: DivDataTemplate.self, from: rawDivData.card)
    if let divData = result.value {
      divKitComponents.setVariablesAndTriggers(divData: divData, cardId: cardId)
      divKitComponents.setTimers(divData: divData, cardId: cardId)
    }
    divDataParsingTime.stop()
    return result
  }
}

private let cardId: DivCardID = "sample_card"

private let noDataBlock = EmptyBlock.zeroSized

private func makeErrorBlock(_ text: String) -> Block {
  TextBlock(
    widthTrait: .resizable,
    text: text.withTypo(size: 18)
  ).addingEdgeGaps(20)
}

private func makeErrorsBlock(_ errors: [String]) -> Block {
  guard !errors.isEmpty else {
    return noDataBlock
  }

  let separator = SeparatorBlock(color: .gray, direction: .horizontal)
  let errorsHeader = TextBlock(
    widthTrait: .resizable,
    text: "Errors: \(errors.count)".withTypo(size: 18, weight: .bold)
  ).addingEdgeGaps(10)

  let errorBlocks = errors.map {
    TextBlock(
      widthTrait: .resizable,
      text: $0.withTypo(size: 14, weight: .regular)
    ).addingEdgeGaps(10)
  }
  return try! ContainerBlock(
    layoutDirection: .vertical,
    children: [separator, errorsHeader] + errorBlocks
  )
}

extension Block {
  func addingTime(
    dataParsing: TimeMeasure.Time?,
    templateParsing: TimeMeasure.Time?,
    render: TimeMeasure.Time?
  ) -> Block {
    guard UserPreferences.showRenderingTime,
          let render = render,
          let dataParsing = dataParsing,
          let templateParsing = templateParsing else {
      return self
    }

    let text =
      """
      Rendering time:

      - Div.Render.Total.\(render.description) ms
      - Div.Parsing.Data.\(dataParsing.description) ms
      - Div.Parsing.Templates.\(templateParsing.description) ms
      """

    let textBlock = TextBlock(
      widthTrait: .resizable,
      text: text.withTypo(size: 18)
    ).addingEdgeGaps(20)

    let block = try? ContainerBlock(
      layoutDirection: .vertical,
      children: [self, textBlock]
    )

    return block ?? self
  }
}

extension Block {
  func addingErrorsInfo(_ errorList: [String]) -> Block {
    guard !errorList.isEmpty else {
      return self
    }
    let errorsBlock = makeErrorsBlock(errorList)

    let block = try? ContainerBlock(
      layoutDirection: .vertical,
      children: [self, errorsBlock]
    )

    return block ?? self
  }
}

extension TimeMeasure.Time {
  fileprivate var description: String {
    "\(status.rawValue.capitalized): \(value)"
  }
}

extension UIStatePayload.Error {
  var description: String {
    "\(message)\nPath: \(stack.isEmpty ? "nil" : stack.joined(separator: "/"))" +
      (additional.isEmpty ? "" : "\nAdditional: \(additional)")
  }

  init(_ error: CustomStringConvertible) {
    switch error {
    case let deserializationError as DeserializationError:
      message = deserializationError.errorMessage
      stack = deserializationError.stack
      additional = deserializationError.userInfo
    default:
      message = (error as CustomStringConvertible).description
      stack = []
      additional = [:]
    }
  }
}

extension DeserializationError {
  fileprivate var stack: [String] {
    switch self {
    case let .nestedObjectError(field, error):
      return [field] + error.stack
    default:
      return []
    }
  }
}
