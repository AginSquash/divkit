// Generated code. Do not modify.

import 'package:divkit/src/schema/div.dart';
import 'package:divkit/src/schema/div_accessibility.dart';
import 'package:divkit/src/schema/div_action.dart';
import 'package:divkit/src/schema/div_alignment_horizontal.dart';
import 'package:divkit/src/schema/div_alignment_vertical.dart';
import 'package:divkit/src/schema/div_animation.dart';
import 'package:divkit/src/schema/div_appearance_transition.dart';
import 'package:divkit/src/schema/div_aspect.dart';
import 'package:divkit/src/schema/div_background.dart';
import 'package:divkit/src/schema/div_base.dart';
import 'package:divkit/src/schema/div_border.dart';
import 'package:divkit/src/schema/div_change_transition.dart';
import 'package:divkit/src/schema/div_collection_item_builder.dart';
import 'package:divkit/src/schema/div_content_alignment_horizontal.dart';
import 'package:divkit/src/schema/div_content_alignment_vertical.dart';
import 'package:divkit/src/schema/div_disappear_action.dart';
import 'package:divkit/src/schema/div_drawable.dart';
import 'package:divkit/src/schema/div_edge_insets.dart';
import 'package:divkit/src/schema/div_extension.dart';
import 'package:divkit/src/schema/div_focus.dart';
import 'package:divkit/src/schema/div_layout_provider.dart';
import 'package:divkit/src/schema/div_match_parent_size.dart';
import 'package:divkit/src/schema/div_size.dart';
import 'package:divkit/src/schema/div_tooltip.dart';
import 'package:divkit/src/schema/div_transform.dart';
import 'package:divkit/src/schema/div_transition_trigger.dart';
import 'package:divkit/src/schema/div_trigger.dart';
import 'package:divkit/src/schema/div_variable.dart';
import 'package:divkit/src/schema/div_visibility.dart';
import 'package:divkit/src/schema/div_visibility_action.dart';
import 'package:divkit/src/schema/div_wrap_content_size.dart';
import 'package:divkit/src/utils/parsing_utils.dart';
import 'package:equatable/equatable.dart';

class DivContainer extends Preloadable with EquatableMixin implements DivBase {
  const DivContainer({
    this.accessibility = const DivAccessibility(),
    this.action,
    this.actionAnimation = const DivAnimation(
      duration: ValueExpression(
        100,
      ),
      endValue: ValueExpression(
        0.6,
      ),
      name: ValueExpression(
        DivAnimationName.fade,
      ),
      startValue: ValueExpression(
        1,
      ),
    ),
    this.actions,
    this.alignmentHorizontal,
    this.alignmentVertical,
    this.alpha = const ValueExpression(1.0),
    this.aspect,
    this.background,
    this.border = const DivBorder(),
    this.clipToBounds = const ValueExpression(true),
    this.columnSpan,
    this.contentAlignmentHorizontal =
        const ValueExpression(DivContentAlignmentHorizontal.start),
    this.contentAlignmentVertical =
        const ValueExpression(DivContentAlignmentVertical.top),
    this.disappearActions,
    this.doubletapActions,
    this.extensions,
    this.focus,
    this.height = const DivSize.divWrapContentSize(
      DivWrapContentSize(),
    ),
    this.id,
    this.itemBuilder,
    this.items,
    this.layoutMode = const ValueExpression(DivContainerLayoutMode.noWrap),
    this.layoutProvider,
    this.lineSeparator,
    this.longtapActions,
    this.margins = const DivEdgeInsets(),
    this.orientation = const ValueExpression(DivContainerOrientation.vertical),
    this.paddings = const DivEdgeInsets(),
    this.reuseId,
    this.rowSpan,
    this.selectedActions,
    this.separator,
    this.tooltips,
    this.transform = const DivTransform(),
    this.transitionChange,
    this.transitionIn,
    this.transitionOut,
    this.transitionTriggers,
    this.variableTriggers,
    this.variables,
    this.visibility = const ValueExpression(DivVisibility.visible),
    this.visibilityAction,
    this.visibilityActions,
    this.width = const DivSize.divMatchParentSize(
      DivMatchParentSize(),
    ),
  });

  static const type = "container";

  @override
  final DivAccessibility accessibility;

  final DivAction? action;
  // default value: const DivAnimation(duration: ValueExpression(100,), endValue: ValueExpression(0.6,), name: ValueExpression(DivAnimationName.fade,), startValue: ValueExpression(1,),)
  final DivAnimation actionAnimation;

  final List<DivAction>? actions;

  @override
  final Expression<DivAlignmentHorizontal>? alignmentHorizontal;

  @override
  final Expression<DivAlignmentVertical>? alignmentVertical;
  // constraint: number >= 0.0 && number <= 1.0; default value: 1.0
  @override
  final Expression<double> alpha;

  final DivAspect? aspect;

  @override
  final List<DivBackground>? background;

  @override
  final DivBorder border;
  // default value: true
  final Expression<bool> clipToBounds;
  // constraint: number >= 0
  @override
  final Expression<int>? columnSpan;
  // default value: DivContentAlignmentHorizontal.start
  final Expression<DivContentAlignmentHorizontal> contentAlignmentHorizontal;
  // default value: DivContentAlignmentVertical.top
  final Expression<DivContentAlignmentVertical> contentAlignmentVertical;

  @override
  final List<DivDisappearAction>? disappearActions;

  final List<DivAction>? doubletapActions;

  @override
  final List<DivExtension>? extensions;

  @override
  final DivFocus? focus;
  // default value: const DivSize.divWrapContentSize(DivWrapContentSize(),)
  @override
  final DivSize height;

  @override
  final String? id;

  final DivCollectionItemBuilder? itemBuilder;

  final List<Div>? items;
  // default value: DivContainerLayoutMode.noWrap
  final Expression<DivContainerLayoutMode> layoutMode;

  @override
  final DivLayoutProvider? layoutProvider;

  final DivContainerSeparator? lineSeparator;

  final List<DivAction>? longtapActions;

  @override
  final DivEdgeInsets margins;
  // default value: DivContainerOrientation.vertical
  final Expression<DivContainerOrientation> orientation;

  @override
  final DivEdgeInsets paddings;

  @override
  final Expression<String>? reuseId;
  // constraint: number >= 0
  @override
  final Expression<int>? rowSpan;

  @override
  final List<DivAction>? selectedActions;

  final DivContainerSeparator? separator;

  @override
  final List<DivTooltip>? tooltips;

  @override
  final DivTransform transform;

  @override
  final DivChangeTransition? transitionChange;

  @override
  final DivAppearanceTransition? transitionIn;

  @override
  final DivAppearanceTransition? transitionOut;
  // at least 1 elements
  @override
  final List<DivTransitionTrigger>? transitionTriggers;

  @override
  final List<DivTrigger>? variableTriggers;

  @override
  final List<DivVariable>? variables;
  // default value: DivVisibility.visible
  @override
  final Expression<DivVisibility> visibility;

  @override
  final DivVisibilityAction? visibilityAction;

  @override
  final List<DivVisibilityAction>? visibilityActions;
  // default value: const DivSize.divMatchParentSize(DivMatchParentSize(),)
  @override
  final DivSize width;

  @override
  List<Object?> get props => [
        accessibility,
        action,
        actionAnimation,
        actions,
        alignmentHorizontal,
        alignmentVertical,
        alpha,
        aspect,
        background,
        border,
        clipToBounds,
        columnSpan,
        contentAlignmentHorizontal,
        contentAlignmentVertical,
        disappearActions,
        doubletapActions,
        extensions,
        focus,
        height,
        id,
        itemBuilder,
        items,
        layoutMode,
        layoutProvider,
        lineSeparator,
        longtapActions,
        margins,
        orientation,
        paddings,
        reuseId,
        rowSpan,
        selectedActions,
        separator,
        tooltips,
        transform,
        transitionChange,
        transitionIn,
        transitionOut,
        transitionTriggers,
        variableTriggers,
        variables,
        visibility,
        visibilityAction,
        visibilityActions,
        width,
      ];

  DivContainer copyWith({
    DivAccessibility? accessibility,
    DivAction? Function()? action,
    DivAnimation? actionAnimation,
    List<DivAction>? Function()? actions,
    Expression<DivAlignmentHorizontal>? Function()? alignmentHorizontal,
    Expression<DivAlignmentVertical>? Function()? alignmentVertical,
    Expression<double>? alpha,
    DivAspect? Function()? aspect,
    List<DivBackground>? Function()? background,
    DivBorder? border,
    Expression<bool>? clipToBounds,
    Expression<int>? Function()? columnSpan,
    Expression<DivContentAlignmentHorizontal>? contentAlignmentHorizontal,
    Expression<DivContentAlignmentVertical>? contentAlignmentVertical,
    List<DivDisappearAction>? Function()? disappearActions,
    List<DivAction>? Function()? doubletapActions,
    List<DivExtension>? Function()? extensions,
    DivFocus? Function()? focus,
    DivSize? height,
    String? Function()? id,
    DivCollectionItemBuilder? Function()? itemBuilder,
    List<Div>? Function()? items,
    Expression<DivContainerLayoutMode>? layoutMode,
    DivLayoutProvider? Function()? layoutProvider,
    DivContainerSeparator? Function()? lineSeparator,
    List<DivAction>? Function()? longtapActions,
    DivEdgeInsets? margins,
    Expression<DivContainerOrientation>? orientation,
    DivEdgeInsets? paddings,
    Expression<String>? Function()? reuseId,
    Expression<int>? Function()? rowSpan,
    List<DivAction>? Function()? selectedActions,
    DivContainerSeparator? Function()? separator,
    List<DivTooltip>? Function()? tooltips,
    DivTransform? transform,
    DivChangeTransition? Function()? transitionChange,
    DivAppearanceTransition? Function()? transitionIn,
    DivAppearanceTransition? Function()? transitionOut,
    List<DivTransitionTrigger>? Function()? transitionTriggers,
    List<DivTrigger>? Function()? variableTriggers,
    List<DivVariable>? Function()? variables,
    Expression<DivVisibility>? visibility,
    DivVisibilityAction? Function()? visibilityAction,
    List<DivVisibilityAction>? Function()? visibilityActions,
    DivSize? width,
  }) =>
      DivContainer(
        accessibility: accessibility ?? this.accessibility,
        action: action != null ? action.call() : this.action,
        actionAnimation: actionAnimation ?? this.actionAnimation,
        actions: actions != null ? actions.call() : this.actions,
        alignmentHorizontal: alignmentHorizontal != null
            ? alignmentHorizontal.call()
            : this.alignmentHorizontal,
        alignmentVertical: alignmentVertical != null
            ? alignmentVertical.call()
            : this.alignmentVertical,
        alpha: alpha ?? this.alpha,
        aspect: aspect != null ? aspect.call() : this.aspect,
        background: background != null ? background.call() : this.background,
        border: border ?? this.border,
        clipToBounds: clipToBounds ?? this.clipToBounds,
        columnSpan: columnSpan != null ? columnSpan.call() : this.columnSpan,
        contentAlignmentHorizontal:
            contentAlignmentHorizontal ?? this.contentAlignmentHorizontal,
        contentAlignmentVertical:
            contentAlignmentVertical ?? this.contentAlignmentVertical,
        disappearActions: disappearActions != null
            ? disappearActions.call()
            : this.disappearActions,
        doubletapActions: doubletapActions != null
            ? doubletapActions.call()
            : this.doubletapActions,
        extensions: extensions != null ? extensions.call() : this.extensions,
        focus: focus != null ? focus.call() : this.focus,
        height: height ?? this.height,
        id: id != null ? id.call() : this.id,
        itemBuilder:
            itemBuilder != null ? itemBuilder.call() : this.itemBuilder,
        items: items != null ? items.call() : this.items,
        layoutMode: layoutMode ?? this.layoutMode,
        layoutProvider: layoutProvider != null
            ? layoutProvider.call()
            : this.layoutProvider,
        lineSeparator:
            lineSeparator != null ? lineSeparator.call() : this.lineSeparator,
        longtapActions: longtapActions != null
            ? longtapActions.call()
            : this.longtapActions,
        margins: margins ?? this.margins,
        orientation: orientation ?? this.orientation,
        paddings: paddings ?? this.paddings,
        reuseId: reuseId != null ? reuseId.call() : this.reuseId,
        rowSpan: rowSpan != null ? rowSpan.call() : this.rowSpan,
        selectedActions: selectedActions != null
            ? selectedActions.call()
            : this.selectedActions,
        separator: separator != null ? separator.call() : this.separator,
        tooltips: tooltips != null ? tooltips.call() : this.tooltips,
        transform: transform ?? this.transform,
        transitionChange: transitionChange != null
            ? transitionChange.call()
            : this.transitionChange,
        transitionIn:
            transitionIn != null ? transitionIn.call() : this.transitionIn,
        transitionOut:
            transitionOut != null ? transitionOut.call() : this.transitionOut,
        transitionTriggers: transitionTriggers != null
            ? transitionTriggers.call()
            : this.transitionTriggers,
        variableTriggers: variableTriggers != null
            ? variableTriggers.call()
            : this.variableTriggers,
        variables: variables != null ? variables.call() : this.variables,
        visibility: visibility ?? this.visibility,
        visibilityAction: visibilityAction != null
            ? visibilityAction.call()
            : this.visibilityAction,
        visibilityActions: visibilityActions != null
            ? visibilityActions.call()
            : this.visibilityActions,
        width: width ?? this.width,
      );

  static DivContainer? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    try {
      return DivContainer(
        accessibility: safeParseObj(
          DivAccessibility.fromJson(json['accessibility']),
          fallback: const DivAccessibility(),
        )!,
        action: safeParseObj(
          DivAction.fromJson(json['action']),
        ),
        actionAnimation: safeParseObj(
          DivAnimation.fromJson(json['action_animation']),
          fallback: const DivAnimation(
            duration: ValueExpression(
              100,
            ),
            endValue: ValueExpression(
              0.6,
            ),
            name: ValueExpression(
              DivAnimationName.fade,
            ),
            startValue: ValueExpression(
              1,
            ),
          ),
        )!,
        actions: safeParseObj(
          safeListMap(
            json['actions'],
            (v) => safeParseObj(
              DivAction.fromJson(v),
            )!,
          ),
        ),
        alignmentHorizontal: safeParseStrEnumExpr(
          json['alignment_horizontal'],
          parse: DivAlignmentHorizontal.fromJson,
        ),
        alignmentVertical: safeParseStrEnumExpr(
          json['alignment_vertical'],
          parse: DivAlignmentVertical.fromJson,
        ),
        alpha: safeParseDoubleExpr(
          json['alpha'],
          fallback: 1.0,
        )!,
        aspect: safeParseObj(
          DivAspect.fromJson(json['aspect']),
        ),
        background: safeParseObj(
          safeListMap(
            json['background'],
            (v) => safeParseObj(
              DivBackground.fromJson(v),
            )!,
          ),
        ),
        border: safeParseObj(
          DivBorder.fromJson(json['border']),
          fallback: const DivBorder(),
        )!,
        clipToBounds: safeParseBoolExpr(
          json['clip_to_bounds'],
          fallback: true,
        )!,
        columnSpan: safeParseIntExpr(
          json['column_span'],
        ),
        contentAlignmentHorizontal: safeParseStrEnumExpr(
          json['content_alignment_horizontal'],
          parse: DivContentAlignmentHorizontal.fromJson,
          fallback: DivContentAlignmentHorizontal.start,
        )!,
        contentAlignmentVertical: safeParseStrEnumExpr(
          json['content_alignment_vertical'],
          parse: DivContentAlignmentVertical.fromJson,
          fallback: DivContentAlignmentVertical.top,
        )!,
        disappearActions: safeParseObj(
          safeListMap(
            json['disappear_actions'],
            (v) => safeParseObj(
              DivDisappearAction.fromJson(v),
            )!,
          ),
        ),
        doubletapActions: safeParseObj(
          safeListMap(
            json['doubletap_actions'],
            (v) => safeParseObj(
              DivAction.fromJson(v),
            )!,
          ),
        ),
        extensions: safeParseObj(
          safeListMap(
            json['extensions'],
            (v) => safeParseObj(
              DivExtension.fromJson(v),
            )!,
          ),
        ),
        focus: safeParseObj(
          DivFocus.fromJson(json['focus']),
        ),
        height: safeParseObj(
          DivSize.fromJson(json['height']),
          fallback: const DivSize.divWrapContentSize(
            DivWrapContentSize(),
          ),
        )!,
        id: safeParseStr(
          json['id']?.toString(),
        ),
        itemBuilder: safeParseObj(
          DivCollectionItemBuilder.fromJson(json['item_builder']),
        ),
        items: safeParseObj(
          safeListMap(
            json['items'],
            (v) => safeParseObj(
              Div.fromJson(v),
            )!,
          ),
        ),
        layoutMode: safeParseStrEnumExpr(
          json['layout_mode'],
          parse: DivContainerLayoutMode.fromJson,
          fallback: DivContainerLayoutMode.noWrap,
        )!,
        layoutProvider: safeParseObj(
          DivLayoutProvider.fromJson(json['layout_provider']),
        ),
        lineSeparator: safeParseObj(
          DivContainerSeparator.fromJson(json['line_separator']),
        ),
        longtapActions: safeParseObj(
          safeListMap(
            json['longtap_actions'],
            (v) => safeParseObj(
              DivAction.fromJson(v),
            )!,
          ),
        ),
        margins: safeParseObj(
          DivEdgeInsets.fromJson(json['margins']),
          fallback: const DivEdgeInsets(),
        )!,
        orientation: safeParseStrEnumExpr(
          json['orientation'],
          parse: DivContainerOrientation.fromJson,
          fallback: DivContainerOrientation.vertical,
        )!,
        paddings: safeParseObj(
          DivEdgeInsets.fromJson(json['paddings']),
          fallback: const DivEdgeInsets(),
        )!,
        reuseId: safeParseStrExpr(
          json['reuse_id']?.toString(),
        ),
        rowSpan: safeParseIntExpr(
          json['row_span'],
        ),
        selectedActions: safeParseObj(
          safeListMap(
            json['selected_actions'],
            (v) => safeParseObj(
              DivAction.fromJson(v),
            )!,
          ),
        ),
        separator: safeParseObj(
          DivContainerSeparator.fromJson(json['separator']),
        ),
        tooltips: safeParseObj(
          safeListMap(
            json['tooltips'],
            (v) => safeParseObj(
              DivTooltip.fromJson(v),
            )!,
          ),
        ),
        transform: safeParseObj(
          DivTransform.fromJson(json['transform']),
          fallback: const DivTransform(),
        )!,
        transitionChange: safeParseObj(
          DivChangeTransition.fromJson(json['transition_change']),
        ),
        transitionIn: safeParseObj(
          DivAppearanceTransition.fromJson(json['transition_in']),
        ),
        transitionOut: safeParseObj(
          DivAppearanceTransition.fromJson(json['transition_out']),
        ),
        transitionTriggers: safeParseObj(
          safeListMap(
            json['transition_triggers'],
            (v) => safeParseStrEnum(
              v,
              parse: DivTransitionTrigger.fromJson,
            )!,
          ),
        ),
        variableTriggers: safeParseObj(
          safeListMap(
            json['variable_triggers'],
            (v) => safeParseObj(
              DivTrigger.fromJson(v),
            )!,
          ),
        ),
        variables: safeParseObj(
          safeListMap(
            json['variables'],
            (v) => safeParseObj(
              DivVariable.fromJson(v),
            )!,
          ),
        ),
        visibility: safeParseStrEnumExpr(
          json['visibility'],
          parse: DivVisibility.fromJson,
          fallback: DivVisibility.visible,
        )!,
        visibilityAction: safeParseObj(
          DivVisibilityAction.fromJson(json['visibility_action']),
        ),
        visibilityActions: safeParseObj(
          safeListMap(
            json['visibility_actions'],
            (v) => safeParseObj(
              DivVisibilityAction.fromJson(v),
            )!,
          ),
        ),
        width: safeParseObj(
          DivSize.fromJson(json['width']),
          fallback: const DivSize.divMatchParentSize(
            DivMatchParentSize(),
          ),
        )!,
      );
    } catch (e) {
      return null;
    }
  }

  static Future<DivContainer?> parse(
    Map<String, dynamic>? json,
  ) async {
    if (json == null) {
      return null;
    }
    try {
      return DivContainer(
        accessibility: (await safeParseObjAsync(
          DivAccessibility.fromJson(json['accessibility']),
          fallback: const DivAccessibility(),
        ))!,
        action: await safeParseObjAsync(
          DivAction.fromJson(json['action']),
        ),
        actionAnimation: (await safeParseObjAsync(
          DivAnimation.fromJson(json['action_animation']),
          fallback: const DivAnimation(
            duration: ValueExpression(
              100,
            ),
            endValue: ValueExpression(
              0.6,
            ),
            name: ValueExpression(
              DivAnimationName.fade,
            ),
            startValue: ValueExpression(
              1,
            ),
          ),
        ))!,
        actions: await safeParseObjAsync(
          await safeListMapAsync(
            json['actions'],
            (v) => safeParseObj(
              DivAction.fromJson(v),
            )!,
          ),
        ),
        alignmentHorizontal: await safeParseStrEnumExprAsync(
          json['alignment_horizontal'],
          parse: DivAlignmentHorizontal.fromJson,
        ),
        alignmentVertical: await safeParseStrEnumExprAsync(
          json['alignment_vertical'],
          parse: DivAlignmentVertical.fromJson,
        ),
        alpha: (await safeParseDoubleExprAsync(
          json['alpha'],
          fallback: 1.0,
        ))!,
        aspect: await safeParseObjAsync(
          DivAspect.fromJson(json['aspect']),
        ),
        background: await safeParseObjAsync(
          await safeListMapAsync(
            json['background'],
            (v) => safeParseObj(
              DivBackground.fromJson(v),
            )!,
          ),
        ),
        border: (await safeParseObjAsync(
          DivBorder.fromJson(json['border']),
          fallback: const DivBorder(),
        ))!,
        clipToBounds: (await safeParseBoolExprAsync(
          json['clip_to_bounds'],
          fallback: true,
        ))!,
        columnSpan: await safeParseIntExprAsync(
          json['column_span'],
        ),
        contentAlignmentHorizontal: (await safeParseStrEnumExprAsync(
          json['content_alignment_horizontal'],
          parse: DivContentAlignmentHorizontal.fromJson,
          fallback: DivContentAlignmentHorizontal.start,
        ))!,
        contentAlignmentVertical: (await safeParseStrEnumExprAsync(
          json['content_alignment_vertical'],
          parse: DivContentAlignmentVertical.fromJson,
          fallback: DivContentAlignmentVertical.top,
        ))!,
        disappearActions: await safeParseObjAsync(
          await safeListMapAsync(
            json['disappear_actions'],
            (v) => safeParseObj(
              DivDisappearAction.fromJson(v),
            )!,
          ),
        ),
        doubletapActions: await safeParseObjAsync(
          await safeListMapAsync(
            json['doubletap_actions'],
            (v) => safeParseObj(
              DivAction.fromJson(v),
            )!,
          ),
        ),
        extensions: await safeParseObjAsync(
          await safeListMapAsync(
            json['extensions'],
            (v) => safeParseObj(
              DivExtension.fromJson(v),
            )!,
          ),
        ),
        focus: await safeParseObjAsync(
          DivFocus.fromJson(json['focus']),
        ),
        height: (await safeParseObjAsync(
          DivSize.fromJson(json['height']),
          fallback: const DivSize.divWrapContentSize(
            DivWrapContentSize(),
          ),
        ))!,
        id: await safeParseStrAsync(
          json['id']?.toString(),
        ),
        itemBuilder: await safeParseObjAsync(
          DivCollectionItemBuilder.fromJson(json['item_builder']),
        ),
        items: await safeParseObjAsync(
          await safeListMapAsync(
            json['items'],
            (v) => safeParseObj(
              Div.fromJson(v),
            )!,
          ),
        ),
        layoutMode: (await safeParseStrEnumExprAsync(
          json['layout_mode'],
          parse: DivContainerLayoutMode.fromJson,
          fallback: DivContainerLayoutMode.noWrap,
        ))!,
        layoutProvider: await safeParseObjAsync(
          DivLayoutProvider.fromJson(json['layout_provider']),
        ),
        lineSeparator: await safeParseObjAsync(
          DivContainerSeparator.fromJson(json['line_separator']),
        ),
        longtapActions: await safeParseObjAsync(
          await safeListMapAsync(
            json['longtap_actions'],
            (v) => safeParseObj(
              DivAction.fromJson(v),
            )!,
          ),
        ),
        margins: (await safeParseObjAsync(
          DivEdgeInsets.fromJson(json['margins']),
          fallback: const DivEdgeInsets(),
        ))!,
        orientation: (await safeParseStrEnumExprAsync(
          json['orientation'],
          parse: DivContainerOrientation.fromJson,
          fallback: DivContainerOrientation.vertical,
        ))!,
        paddings: (await safeParseObjAsync(
          DivEdgeInsets.fromJson(json['paddings']),
          fallback: const DivEdgeInsets(),
        ))!,
        reuseId: await safeParseStrExprAsync(
          json['reuse_id']?.toString(),
        ),
        rowSpan: await safeParseIntExprAsync(
          json['row_span'],
        ),
        selectedActions: await safeParseObjAsync(
          await safeListMapAsync(
            json['selected_actions'],
            (v) => safeParseObj(
              DivAction.fromJson(v),
            )!,
          ),
        ),
        separator: await safeParseObjAsync(
          DivContainerSeparator.fromJson(json['separator']),
        ),
        tooltips: await safeParseObjAsync(
          await safeListMapAsync(
            json['tooltips'],
            (v) => safeParseObj(
              DivTooltip.fromJson(v),
            )!,
          ),
        ),
        transform: (await safeParseObjAsync(
          DivTransform.fromJson(json['transform']),
          fallback: const DivTransform(),
        ))!,
        transitionChange: await safeParseObjAsync(
          DivChangeTransition.fromJson(json['transition_change']),
        ),
        transitionIn: await safeParseObjAsync(
          DivAppearanceTransition.fromJson(json['transition_in']),
        ),
        transitionOut: await safeParseObjAsync(
          DivAppearanceTransition.fromJson(json['transition_out']),
        ),
        transitionTriggers: await safeParseObjAsync(
          await safeListMapAsync(
            json['transition_triggers'],
            (v) => safeParseStrEnum(
              v,
              parse: DivTransitionTrigger.fromJson,
            )!,
          ),
        ),
        variableTriggers: await safeParseObjAsync(
          await safeListMapAsync(
            json['variable_triggers'],
            (v) => safeParseObj(
              DivTrigger.fromJson(v),
            )!,
          ),
        ),
        variables: await safeParseObjAsync(
          await safeListMapAsync(
            json['variables'],
            (v) => safeParseObj(
              DivVariable.fromJson(v),
            )!,
          ),
        ),
        visibility: (await safeParseStrEnumExprAsync(
          json['visibility'],
          parse: DivVisibility.fromJson,
          fallback: DivVisibility.visible,
        ))!,
        visibilityAction: await safeParseObjAsync(
          DivVisibilityAction.fromJson(json['visibility_action']),
        ),
        visibilityActions: await safeParseObjAsync(
          await safeListMapAsync(
            json['visibility_actions'],
            (v) => safeParseObj(
              DivVisibilityAction.fromJson(v),
            )!,
          ),
        ),
        width: (await safeParseObjAsync(
          DivSize.fromJson(json['width']),
          fallback: const DivSize.divMatchParentSize(
            DivMatchParentSize(),
          ),
        ))!,
      );
    } catch (e) {
      return null;
    }
  }

  @override
  Future<void> preload(
    Map<String, dynamic> context,
  ) async {
    try {
      await accessibility.preload(context);
      await action?.preload(context);
      await actionAnimation.preload(context);
      await safeFuturesWait(actions, (v) => v.preload(context));
      await alignmentHorizontal?.preload(context);
      await alignmentVertical?.preload(context);
      await alpha.preload(context);
      await aspect?.preload(context);
      await safeFuturesWait(background, (v) => v.preload(context));
      await border.preload(context);
      await clipToBounds.preload(context);
      await columnSpan?.preload(context);
      await contentAlignmentHorizontal.preload(context);
      await contentAlignmentVertical.preload(context);
      await safeFuturesWait(disappearActions, (v) => v.preload(context));
      await safeFuturesWait(doubletapActions, (v) => v.preload(context));
      await safeFuturesWait(extensions, (v) => v.preload(context));
      await focus?.preload(context);
      await height.preload(context);
      await itemBuilder?.preload(context);
      await safeFuturesWait(items, (v) => v.preload(context));
      await layoutMode.preload(context);
      await layoutProvider?.preload(context);
      await lineSeparator?.preload(context);
      await safeFuturesWait(longtapActions, (v) => v.preload(context));
      await margins.preload(context);
      await orientation.preload(context);
      await paddings.preload(context);
      await reuseId?.preload(context);
      await rowSpan?.preload(context);
      await safeFuturesWait(selectedActions, (v) => v.preload(context));
      await separator?.preload(context);
      await safeFuturesWait(tooltips, (v) => v.preload(context));
      await transform.preload(context);
      await transitionChange?.preload(context);
      await transitionIn?.preload(context);
      await transitionOut?.preload(context);
      await safeFuturesWait(transitionTriggers, (v) => v.preload(context));
      await safeFuturesWait(variableTriggers, (v) => v.preload(context));
      await safeFuturesWait(variables, (v) => v.preload(context));
      await visibility.preload(context);
      await visibilityAction?.preload(context);
      await safeFuturesWait(visibilityActions, (v) => v.preload(context));
      await width.preload(context);
    } catch (e) {
      return;
    }
  }
}

class DivContainerSeparator extends Preloadable with EquatableMixin {
  const DivContainerSeparator({
    this.margins = const DivEdgeInsets(),
    this.showAtEnd = const ValueExpression(false),
    this.showAtStart = const ValueExpression(false),
    this.showBetween = const ValueExpression(true),
    required this.style,
  });

  final DivEdgeInsets margins;
  // default value: false
  final Expression<bool> showAtEnd;
  // default value: false
  final Expression<bool> showAtStart;
  // default value: true
  final Expression<bool> showBetween;

  final DivDrawable style;

  @override
  List<Object?> get props => [
        margins,
        showAtEnd,
        showAtStart,
        showBetween,
        style,
      ];

  DivContainerSeparator copyWith({
    DivEdgeInsets? margins,
    Expression<bool>? showAtEnd,
    Expression<bool>? showAtStart,
    Expression<bool>? showBetween,
    DivDrawable? style,
  }) =>
      DivContainerSeparator(
        margins: margins ?? this.margins,
        showAtEnd: showAtEnd ?? this.showAtEnd,
        showAtStart: showAtStart ?? this.showAtStart,
        showBetween: showBetween ?? this.showBetween,
        style: style ?? this.style,
      );

  static DivContainerSeparator? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    try {
      return DivContainerSeparator(
        margins: safeParseObj(
          DivEdgeInsets.fromJson(json['margins']),
          fallback: const DivEdgeInsets(),
        )!,
        showAtEnd: safeParseBoolExpr(
          json['show_at_end'],
          fallback: false,
        )!,
        showAtStart: safeParseBoolExpr(
          json['show_at_start'],
          fallback: false,
        )!,
        showBetween: safeParseBoolExpr(
          json['show_between'],
          fallback: true,
        )!,
        style: safeParseObj(
          DivDrawable.fromJson(json['style']),
        )!,
      );
    } catch (e) {
      return null;
    }
  }

  static Future<DivContainerSeparator?> parse(
    Map<String, dynamic>? json,
  ) async {
    if (json == null) {
      return null;
    }
    try {
      return DivContainerSeparator(
        margins: (await safeParseObjAsync(
          DivEdgeInsets.fromJson(json['margins']),
          fallback: const DivEdgeInsets(),
        ))!,
        showAtEnd: (await safeParseBoolExprAsync(
          json['show_at_end'],
          fallback: false,
        ))!,
        showAtStart: (await safeParseBoolExprAsync(
          json['show_at_start'],
          fallback: false,
        ))!,
        showBetween: (await safeParseBoolExprAsync(
          json['show_between'],
          fallback: true,
        ))!,
        style: (await safeParseObjAsync(
          DivDrawable.fromJson(json['style']),
        ))!,
      );
    } catch (e) {
      return null;
    }
  }

  @override
  Future<void> preload(
    Map<String, dynamic> context,
  ) async {
    try {
      await margins.preload(context);
      await showAtEnd.preload(context);
      await showAtStart.preload(context);
      await showBetween.preload(context);
      await style.preload(context);
    } catch (e) {
      return;
    }
  }
}

enum DivContainerOrientation implements Preloadable {
  vertical('vertical'),
  horizontal('horizontal'),
  overlap('overlap');

  final String value;

  const DivContainerOrientation(this.value);
  bool get isVertical => this == vertical;

  bool get isHorizontal => this == horizontal;

  bool get isOverlap => this == overlap;

  T map<T>({
    required T Function() vertical,
    required T Function() horizontal,
    required T Function() overlap,
  }) {
    switch (this) {
      case DivContainerOrientation.vertical:
        return vertical();
      case DivContainerOrientation.horizontal:
        return horizontal();
      case DivContainerOrientation.overlap:
        return overlap();
    }
  }

  T maybeMap<T>({
    T Function()? vertical,
    T Function()? horizontal,
    T Function()? overlap,
    required T Function() orElse,
  }) {
    switch (this) {
      case DivContainerOrientation.vertical:
        return vertical?.call() ?? orElse();
      case DivContainerOrientation.horizontal:
        return horizontal?.call() ?? orElse();
      case DivContainerOrientation.overlap:
        return overlap?.call() ?? orElse();
    }
  }

  @override
  Future<void> preload(Map<String, dynamic> context) async {}

  static DivContainerOrientation? fromJson(
    String? json,
  ) {
    if (json == null) {
      return null;
    }
    try {
      switch (json) {
        case 'vertical':
          return DivContainerOrientation.vertical;
        case 'horizontal':
          return DivContainerOrientation.horizontal;
        case 'overlap':
          return DivContainerOrientation.overlap;
      }
      return null;
    } catch (e) {
      return null;
    }
  }

  static Future<DivContainerOrientation?> parse(
    String? json,
  ) async {
    if (json == null) {
      return null;
    }
    try {
      switch (json) {
        case 'vertical':
          return DivContainerOrientation.vertical;
        case 'horizontal':
          return DivContainerOrientation.horizontal;
        case 'overlap':
          return DivContainerOrientation.overlap;
      }
      return null;
    } catch (e) {
      return null;
    }
  }
}

enum DivContainerLayoutMode implements Preloadable {
  noWrap('no_wrap'),
  wrap('wrap');

  final String value;

  const DivContainerLayoutMode(this.value);
  bool get isNoWrap => this == noWrap;

  bool get isWrap => this == wrap;

  T map<T>({
    required T Function() noWrap,
    required T Function() wrap,
  }) {
    switch (this) {
      case DivContainerLayoutMode.noWrap:
        return noWrap();
      case DivContainerLayoutMode.wrap:
        return wrap();
    }
  }

  T maybeMap<T>({
    T Function()? noWrap,
    T Function()? wrap,
    required T Function() orElse,
  }) {
    switch (this) {
      case DivContainerLayoutMode.noWrap:
        return noWrap?.call() ?? orElse();
      case DivContainerLayoutMode.wrap:
        return wrap?.call() ?? orElse();
    }
  }

  @override
  Future<void> preload(Map<String, dynamic> context) async {}

  static DivContainerLayoutMode? fromJson(
    String? json,
  ) {
    if (json == null) {
      return null;
    }
    try {
      switch (json) {
        case 'no_wrap':
          return DivContainerLayoutMode.noWrap;
        case 'wrap':
          return DivContainerLayoutMode.wrap;
      }
      return null;
    } catch (e) {
      return null;
    }
  }

  static Future<DivContainerLayoutMode?> parse(
    String? json,
  ) async {
    if (json == null) {
      return null;
    }
    try {
      switch (json) {
        case 'no_wrap':
          return DivContainerLayoutMode.noWrap;
        case 'wrap':
          return DivContainerLayoutMode.wrap;
      }
      return null;
    } catch (e) {
      return null;
    }
  }
}
