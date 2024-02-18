import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pomowor/feature/timer/timer_types.dart';
part 'timer_state.freezed.dart';

@freezed
class TimerState with _$TimerState {
  const factory TimerState({
    // work time duration
    @Default(20) int workDuration,
    // work time count
    @Default(0) int workCount,
    // how many count needed to trigger long break
    @Default(4) int workCountForLongBreak,
    // timer running state
    @Default(false) bool isRunning,
    // timer reset state
    @Default(true) bool isReset,
    // current timer's duration
    @Default(20) int currentTimerMinutes,
    // when the current timer stops
    DateTime? timeUntil,
    // how much time left
    @Default(0) int timeLeft,
    // how many minutes will be added/subtraced on tap access/slow button
    @Default(5) int increaseMinutesBy,
    @Default(TimerMode.work) TimerMode mode,
    @Default(5) int shortBreakDuration,
    @Default(15) int longBreakDuration,
  }) = _TimerState;
}
