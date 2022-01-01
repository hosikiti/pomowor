// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'timer_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TimerStateTearOff {
  const _$TimerStateTearOff();

  _TimerState call(
      {int workDuration = 20,
      int workCount = 0,
      int workCountForLongBreak = 4,
      bool isRunning = false,
      bool isReset = true,
      int currentTimerMinutes = 20,
      DateTime? timeUntil,
      int timeLeft = 0,
      int increaseMinutesBy = 5,
      TimerMode mode = TimerMode.work,
      int shortBreakDuration = 5,
      int longBreakDuration = 15}) {
    return _TimerState(
      workDuration: workDuration,
      workCount: workCount,
      workCountForLongBreak: workCountForLongBreak,
      isRunning: isRunning,
      isReset: isReset,
      currentTimerMinutes: currentTimerMinutes,
      timeUntil: timeUntil,
      timeLeft: timeLeft,
      increaseMinutesBy: increaseMinutesBy,
      mode: mode,
      shortBreakDuration: shortBreakDuration,
      longBreakDuration: longBreakDuration,
    );
  }
}

/// @nodoc
const $TimerState = _$TimerStateTearOff();

/// @nodoc
mixin _$TimerState {
// work time duration
  int get workDuration => throw _privateConstructorUsedError; // work time count
  int get workCount =>
      throw _privateConstructorUsedError; // how many count needed to trigger long break
  int get workCountForLongBreak =>
      throw _privateConstructorUsedError; // timer running state
  bool get isRunning => throw _privateConstructorUsedError; // timer reset state
  bool get isReset =>
      throw _privateConstructorUsedError; // current timer's duration
  int get currentTimerMinutes =>
      throw _privateConstructorUsedError; // when the current timer stops
  DateTime? get timeUntil =>
      throw _privateConstructorUsedError; // how much time left
  int get timeLeft =>
      throw _privateConstructorUsedError; // how many minutes will be added/subtraced on tap access/slow button
  int get increaseMinutesBy => throw _privateConstructorUsedError;
  TimerMode get mode => throw _privateConstructorUsedError;
  int get shortBreakDuration => throw _privateConstructorUsedError;
  int get longBreakDuration => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TimerStateCopyWith<TimerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimerStateCopyWith<$Res> {
  factory $TimerStateCopyWith(
          TimerState value, $Res Function(TimerState) then) =
      _$TimerStateCopyWithImpl<$Res>;
  $Res call(
      {int workDuration,
      int workCount,
      int workCountForLongBreak,
      bool isRunning,
      bool isReset,
      int currentTimerMinutes,
      DateTime? timeUntil,
      int timeLeft,
      int increaseMinutesBy,
      TimerMode mode,
      int shortBreakDuration,
      int longBreakDuration});
}

/// @nodoc
class _$TimerStateCopyWithImpl<$Res> implements $TimerStateCopyWith<$Res> {
  _$TimerStateCopyWithImpl(this._value, this._then);

  final TimerState _value;
  // ignore: unused_field
  final $Res Function(TimerState) _then;

  @override
  $Res call({
    Object? workDuration = freezed,
    Object? workCount = freezed,
    Object? workCountForLongBreak = freezed,
    Object? isRunning = freezed,
    Object? isReset = freezed,
    Object? currentTimerMinutes = freezed,
    Object? timeUntil = freezed,
    Object? timeLeft = freezed,
    Object? increaseMinutesBy = freezed,
    Object? mode = freezed,
    Object? shortBreakDuration = freezed,
    Object? longBreakDuration = freezed,
  }) {
    return _then(_value.copyWith(
      workDuration: workDuration == freezed
          ? _value.workDuration
          : workDuration // ignore: cast_nullable_to_non_nullable
              as int,
      workCount: workCount == freezed
          ? _value.workCount
          : workCount // ignore: cast_nullable_to_non_nullable
              as int,
      workCountForLongBreak: workCountForLongBreak == freezed
          ? _value.workCountForLongBreak
          : workCountForLongBreak // ignore: cast_nullable_to_non_nullable
              as int,
      isRunning: isRunning == freezed
          ? _value.isRunning
          : isRunning // ignore: cast_nullable_to_non_nullable
              as bool,
      isReset: isReset == freezed
          ? _value.isReset
          : isReset // ignore: cast_nullable_to_non_nullable
              as bool,
      currentTimerMinutes: currentTimerMinutes == freezed
          ? _value.currentTimerMinutes
          : currentTimerMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      timeUntil: timeUntil == freezed
          ? _value.timeUntil
          : timeUntil // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      timeLeft: timeLeft == freezed
          ? _value.timeLeft
          : timeLeft // ignore: cast_nullable_to_non_nullable
              as int,
      increaseMinutesBy: increaseMinutesBy == freezed
          ? _value.increaseMinutesBy
          : increaseMinutesBy // ignore: cast_nullable_to_non_nullable
              as int,
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as TimerMode,
      shortBreakDuration: shortBreakDuration == freezed
          ? _value.shortBreakDuration
          : shortBreakDuration // ignore: cast_nullable_to_non_nullable
              as int,
      longBreakDuration: longBreakDuration == freezed
          ? _value.longBreakDuration
          : longBreakDuration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$TimerStateCopyWith<$Res> implements $TimerStateCopyWith<$Res> {
  factory _$TimerStateCopyWith(
          _TimerState value, $Res Function(_TimerState) then) =
      __$TimerStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int workDuration,
      int workCount,
      int workCountForLongBreak,
      bool isRunning,
      bool isReset,
      int currentTimerMinutes,
      DateTime? timeUntil,
      int timeLeft,
      int increaseMinutesBy,
      TimerMode mode,
      int shortBreakDuration,
      int longBreakDuration});
}

/// @nodoc
class __$TimerStateCopyWithImpl<$Res> extends _$TimerStateCopyWithImpl<$Res>
    implements _$TimerStateCopyWith<$Res> {
  __$TimerStateCopyWithImpl(
      _TimerState _value, $Res Function(_TimerState) _then)
      : super(_value, (v) => _then(v as _TimerState));

  @override
  _TimerState get _value => super._value as _TimerState;

  @override
  $Res call({
    Object? workDuration = freezed,
    Object? workCount = freezed,
    Object? workCountForLongBreak = freezed,
    Object? isRunning = freezed,
    Object? isReset = freezed,
    Object? currentTimerMinutes = freezed,
    Object? timeUntil = freezed,
    Object? timeLeft = freezed,
    Object? increaseMinutesBy = freezed,
    Object? mode = freezed,
    Object? shortBreakDuration = freezed,
    Object? longBreakDuration = freezed,
  }) {
    return _then(_TimerState(
      workDuration: workDuration == freezed
          ? _value.workDuration
          : workDuration // ignore: cast_nullable_to_non_nullable
              as int,
      workCount: workCount == freezed
          ? _value.workCount
          : workCount // ignore: cast_nullable_to_non_nullable
              as int,
      workCountForLongBreak: workCountForLongBreak == freezed
          ? _value.workCountForLongBreak
          : workCountForLongBreak // ignore: cast_nullable_to_non_nullable
              as int,
      isRunning: isRunning == freezed
          ? _value.isRunning
          : isRunning // ignore: cast_nullable_to_non_nullable
              as bool,
      isReset: isReset == freezed
          ? _value.isReset
          : isReset // ignore: cast_nullable_to_non_nullable
              as bool,
      currentTimerMinutes: currentTimerMinutes == freezed
          ? _value.currentTimerMinutes
          : currentTimerMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      timeUntil: timeUntil == freezed
          ? _value.timeUntil
          : timeUntil // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      timeLeft: timeLeft == freezed
          ? _value.timeLeft
          : timeLeft // ignore: cast_nullable_to_non_nullable
              as int,
      increaseMinutesBy: increaseMinutesBy == freezed
          ? _value.increaseMinutesBy
          : increaseMinutesBy // ignore: cast_nullable_to_non_nullable
              as int,
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as TimerMode,
      shortBreakDuration: shortBreakDuration == freezed
          ? _value.shortBreakDuration
          : shortBreakDuration // ignore: cast_nullable_to_non_nullable
              as int,
      longBreakDuration: longBreakDuration == freezed
          ? _value.longBreakDuration
          : longBreakDuration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_TimerState with DiagnosticableTreeMixin implements _TimerState {
  const _$_TimerState(
      {this.workDuration = 20,
      this.workCount = 0,
      this.workCountForLongBreak = 4,
      this.isRunning = false,
      this.isReset = true,
      this.currentTimerMinutes = 20,
      this.timeUntil,
      this.timeLeft = 0,
      this.increaseMinutesBy = 5,
      this.mode = TimerMode.work,
      this.shortBreakDuration = 5,
      this.longBreakDuration = 15});

  @JsonKey(defaultValue: 20)
  @override // work time duration
  final int workDuration;
  @JsonKey(defaultValue: 0)
  @override // work time count
  final int workCount;
  @JsonKey(defaultValue: 4)
  @override // how many count needed to trigger long break
  final int workCountForLongBreak;
  @JsonKey(defaultValue: false)
  @override // timer running state
  final bool isRunning;
  @JsonKey(defaultValue: true)
  @override // timer reset state
  final bool isReset;
  @JsonKey(defaultValue: 20)
  @override // current timer's duration
  final int currentTimerMinutes;
  @override // when the current timer stops
  final DateTime? timeUntil;
  @JsonKey(defaultValue: 0)
  @override // how much time left
  final int timeLeft;
  @JsonKey(defaultValue: 5)
  @override // how many minutes will be added/subtraced on tap access/slow button
  final int increaseMinutesBy;
  @JsonKey(defaultValue: TimerMode.work)
  @override
  final TimerMode mode;
  @JsonKey(defaultValue: 5)
  @override
  final int shortBreakDuration;
  @JsonKey(defaultValue: 15)
  @override
  final int longBreakDuration;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TimerState(workDuration: $workDuration, workCount: $workCount, workCountForLongBreak: $workCountForLongBreak, isRunning: $isRunning, isReset: $isReset, currentTimerMinutes: $currentTimerMinutes, timeUntil: $timeUntil, timeLeft: $timeLeft, increaseMinutesBy: $increaseMinutesBy, mode: $mode, shortBreakDuration: $shortBreakDuration, longBreakDuration: $longBreakDuration)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TimerState'))
      ..add(DiagnosticsProperty('workDuration', workDuration))
      ..add(DiagnosticsProperty('workCount', workCount))
      ..add(DiagnosticsProperty('workCountForLongBreak', workCountForLongBreak))
      ..add(DiagnosticsProperty('isRunning', isRunning))
      ..add(DiagnosticsProperty('isReset', isReset))
      ..add(DiagnosticsProperty('currentTimerMinutes', currentTimerMinutes))
      ..add(DiagnosticsProperty('timeUntil', timeUntil))
      ..add(DiagnosticsProperty('timeLeft', timeLeft))
      ..add(DiagnosticsProperty('increaseMinutesBy', increaseMinutesBy))
      ..add(DiagnosticsProperty('mode', mode))
      ..add(DiagnosticsProperty('shortBreakDuration', shortBreakDuration))
      ..add(DiagnosticsProperty('longBreakDuration', longBreakDuration));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TimerState &&
            (identical(other.workDuration, workDuration) ||
                other.workDuration == workDuration) &&
            (identical(other.workCount, workCount) ||
                other.workCount == workCount) &&
            (identical(other.workCountForLongBreak, workCountForLongBreak) ||
                other.workCountForLongBreak == workCountForLongBreak) &&
            (identical(other.isRunning, isRunning) ||
                other.isRunning == isRunning) &&
            (identical(other.isReset, isReset) || other.isReset == isReset) &&
            (identical(other.currentTimerMinutes, currentTimerMinutes) ||
                other.currentTimerMinutes == currentTimerMinutes) &&
            (identical(other.timeUntil, timeUntil) ||
                other.timeUntil == timeUntil) &&
            (identical(other.timeLeft, timeLeft) ||
                other.timeLeft == timeLeft) &&
            (identical(other.increaseMinutesBy, increaseMinutesBy) ||
                other.increaseMinutesBy == increaseMinutesBy) &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.shortBreakDuration, shortBreakDuration) ||
                other.shortBreakDuration == shortBreakDuration) &&
            (identical(other.longBreakDuration, longBreakDuration) ||
                other.longBreakDuration == longBreakDuration));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      workDuration,
      workCount,
      workCountForLongBreak,
      isRunning,
      isReset,
      currentTimerMinutes,
      timeUntil,
      timeLeft,
      increaseMinutesBy,
      mode,
      shortBreakDuration,
      longBreakDuration);

  @JsonKey(ignore: true)
  @override
  _$TimerStateCopyWith<_TimerState> get copyWith =>
      __$TimerStateCopyWithImpl<_TimerState>(this, _$identity);
}

abstract class _TimerState implements TimerState {
  const factory _TimerState(
      {int workDuration,
      int workCount,
      int workCountForLongBreak,
      bool isRunning,
      bool isReset,
      int currentTimerMinutes,
      DateTime? timeUntil,
      int timeLeft,
      int increaseMinutesBy,
      TimerMode mode,
      int shortBreakDuration,
      int longBreakDuration}) = _$_TimerState;

  @override // work time duration
  int get workDuration;
  @override // work time count
  int get workCount;
  @override // how many count needed to trigger long break
  int get workCountForLongBreak;
  @override // timer running state
  bool get isRunning;
  @override // timer reset state
  bool get isReset;
  @override // current timer's duration
  int get currentTimerMinutes;
  @override // when the current timer stops
  DateTime? get timeUntil;
  @override // how much time left
  int get timeLeft;
  @override // how many minutes will be added/subtraced on tap access/slow button
  int get increaseMinutesBy;
  @override
  TimerMode get mode;
  @override
  int get shortBreakDuration;
  @override
  int get longBreakDuration;
  @override
  @JsonKey(ignore: true)
  _$TimerStateCopyWith<_TimerState> get copyWith =>
      throw _privateConstructorUsedError;
}
