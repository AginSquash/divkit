// Generated code. Do not modify.

import 'package:divkit/src/utils/parsing.dart';
import 'package:equatable/equatable.dart';

/// Specifies the end of the container as the scrolling end position.
class EndDestination extends Resolvable with EquatableMixin {
  const EndDestination();

  static const type = "end";

  @override
  List<Object?> get props => [];

  EndDestination? copyWith() => this;

  static EndDestination? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return const EndDestination();
  }

  @override
  EndDestination resolve(DivVariableContext context) => this;
}
