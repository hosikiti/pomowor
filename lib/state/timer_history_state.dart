import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'timer_history_state.freezed.dart';
part 'timer_history_state.g.dart';

@freezed
class TimerHistoryState with _$TimerHistoryState {
  const factory TimerHistoryState({
    required Duration workTimeTotal,
  }) = _TimerHistoryState;

  factory TimerHistoryState.fromJson(Map<String, dynamic> json) =>
      _$TimerHistoryStateFromJson(json);
}
