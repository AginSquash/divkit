@testable import DivKit
@testable import LayoutKit

import XCTest

import BaseUIPublic
import CommonCorePublic

final class DivDataExtensionsTests: XCTestCase {
  func test_WhenStateIsNil_TakesFirstState() throws {
    let block = try data
      .makeBlock(context: .default)
      .withoutStateBlock()
    let expectedBlock = try data.states[0].div.value
      .makeBlock(context: .default)
    XCTAssertTrue(block == expectedBlock)
  }

  func test_WhenStateIsPresent_TakesCorrespondingState() throws {
    let context = DivBlockModelingContext()
    context.stateManager.setStateWithHistory(
      path: DivData.rootPath,
      stateID: DivStateID(rawValue: "1")
    )
    let block = try data
      .makeBlock(context: context)
      .withoutStateBlock()
    let expectedBlock = try data.states[1].div.value
      .makeBlock(context: .default)
    XCTAssertTrue(block == expectedBlock)
  }

  func test_WhenStateIsNotFound_TakesFirstState() throws {
    let context = DivBlockModelingContext()
    context.stateManager.setStateWithHistory(
      path: DivData.rootPath,
      stateID: DivStateID(rawValue: "100500")
    )
    let block = try data
      .makeBlock(context: context)
      .withoutStateBlock()
    let expectedBlock = try data.states[0].div.value
      .makeBlock(context: .default)
    XCTAssertTrue(block == expectedBlock)
  }

  func test_PathContainsRoot() throws {
    let block = try dataWithDivWithAction
      .makeBlock(context: .default)
      .withoutStateBlock() as? DecoratingBlock
    let expectedActionPath = UIElementPath.root + divWithAction.action!.logId
    XCTAssertEqual(block?.actions?.first.path, expectedActionPath)
  }

  func test_GalleryPathContainsRoot() throws {
    let block = try dataWithGallery
      .makeBlock(context: .default)
      .withoutStateBlock() as? DecoratingBlock
    let galleryBlock = block?.child as? GalleryBlock
    let expectedPath = UIElementPath.root + "0" + DivGallery.type
    XCTAssertEqual(galleryBlock?.model.path, expectedPath)
  }
}

private let data = makeDivData(
  logId: DivKitTests.cardLogId,
  states: [
    .init(div: .divText(DivText(text: .value("0" as CFString))), stateId: 0),
    .init(div: .divText(DivText(text: .value("1" as CFString))), stateId: 1),
    .init(div: .divText(DivText(text: .value("2" as CFString))), stateId: 2),
  ]
)

private let divWithAction = DivText(
  action: DivAction(logId: "action_log_id"),
  text: .value("0" as CFString)
)

private let dataWithDivWithAction = makeDivData(
  logId: DivKitTests.cardLogId,
  states: [.init(div: .divText(divWithAction), stateId: 0)]
)

private let gallery = makeDivGallery(
  items: [
    .divText(DivText(
      text: .value("0" as CFString),
      width: .divFixedSize(.init(value: .value(10)))
    )),
  ]
)

private let dataWithGallery = makeDivData(
  logId: DivKitTests.cardLogId,
  states: [.init(div: .divGallery(gallery), stateId: 0)]
)

extension Block {
  fileprivate func withoutStateBlock() -> Block {
    if let stateBlock = self as? StateBlock {
      return stateBlock.child
    }
    return self
  }
}
