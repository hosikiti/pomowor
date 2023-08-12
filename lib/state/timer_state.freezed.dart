// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timer_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
      _$TimerStateCopyWithImpl<$Res, TimerState>;
  @useResult
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
class _$TimerStateCopyWithImpl<$Res, $Val extends TimerState>
    implements $TimerStateCopyWith<$Res> {
  _$TimerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workDuration = null,
    Object? workCount = null,
    Object? workCountForLongBreak = null,
    Object? isRunning = null,
    Object? isReset = null,
    Object? currentTimerMinutes = null,
    Object? timeUntil = freezed,
    Object? timeLeft = null,
    Object? increaseMinutesBy = null,
    Object? mode = null,
    Object? shortBreakDuration = null,
    Object? longBreakDuration = null,
  }) {
    return _then(_value.copyWith(
      workDuration: null == workDuration
          ? _value.workDuration
          : workDuration // ignore: cast_nullable_to_non_nullable
              as int,
      workCount: null == workCount
          ? _value.workCount
          : workCount // ignore: cast_nullable_to_non_nullable
              as int,
      workCountForLongBreak: null == workCountForLongBreak
          ? _value.workCountForLongBreak
          : workCountForLongBreak // ignore: cast_nullable_to_non_nullable
              as int,
      isRunning: null == isRunning
          ? _value.isRunning
          : isRunning // ignore: cast_nullable_to_non_nullable
              as bool,
      isReset: null == isReset
          ? _value.isReset
          : isReset // ignore: cast_nullable_to_non_nullable
              as bool,
      currentTimerMinutes: null == currentTimerMinutes
          ? _value.currentTimerMinutes
          : currentTimerMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      timeUntil: freezed == timeUntil
          ? _value.timeUntil
          : timeUntil // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      timeLeft: null == timeLeft
          ? _value.timeLeft
          : timeLeft // ignore: cast_nullable_to_non_nullable
              as int,
      increaseMinutesBy: null == increaseMinutesBy
          ? _value.increaseMinutesBy
          : increaseMinutesBy // ignore: cast_nullable_to_non_nullable
              as int,
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as TimerMode,
      shortBreakDuration: null == shortBreakDuration
          ? _value.shortBreakDuration
          : shortBreakDuration // ignore: cast_nullable_to_non_nullable
              as int,
      longBreakDuration: null == longBreakDuration
          ? _value.longBreakDuration
          : longBreakDuration // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TimerStateCopyWith<$Res>
    implements $TimerStateCopyWith<$Res> {
  factory _$$_TimerStateCopyWith(
          _$_TimerState value, $Res Function(_$_TimerState) then) =
      __$$_TimerStateCopyWithImpl<$Res>;
  @override
  @useResult
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
class __$$_TimerStateCopyWithImpl<$Res>
    extends _$TimerStateCopyWithImpl<$Res, _$_TimerState>
    implements _$$_TimerStateCopyWith<$Res> {
  __$$_TimerStateCopyWithImpl(
      _$_TimerState _value, $Res Function(_$_TimerState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workDuration = null,
    Object? workCount = null,
    Object? workCountForLongBreak = null,
    Object? isRunning = null,
    Object? isReset = null,
    Object? currentTimerMinutes = null,
    Object? timeUntil = freezed,
    Object? timeLeft = null,
    Object? increaseMinutesBy = null,
    Object? mode = null,
    Object? shortBreakDuration = null,
    Object? longBreakDuration = null,
  }) {
    return _then(_$_TimerState(
      workDuration: null == workDuration
          ? _value.workDuration
          : workDuration // ignore: cast_nullable_to_non_nullable
              as int,
      workCount: null == workCount
          ? _value.workCount
          : workCount // ignore: cast_nullable_to_non_nullable
              as int,
      workCountForLongBreak: null == workCountForLongBreak
          ? _value.workCountForLongBreak
          : workCountForLongBreak // ignore: cast_nullable_to_non_nullable
              as int,
      isRunning: null == isRunning
          ? _value.isRunning
          : isRunning // ignore: cast_nullable_to_non_nullable
              as bool,
      isReset: null == isReset
          ? _value.isReset
          : isReset // ignore: cast_nullable_to_non_nullable
              as bool,
      currentTimerMinutes: null == currentTimerMinutes
          ? _value.currentTimerMinutes
          : currentTimerMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      timeUntil: freezed == timeUntil
          ? _value.timeUntil
          : timeUntil // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      timeLeft: null == timeLeft
          ? _value.timeLeft
          : timeLeft // ignore: cast_nullable_to_non_nullable
              as int,
      increaseMinutesBy: null == increaseMinutesBy
          ? _value.increaseMinutesBy
          : increaseMinutesBy // ignore: cast_nullable_to_non_nullable
              as int,
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as TimerMode,
      shortBreakDuration: null == shortBreakDuration
          ? _value.shortBreakDuration
          : shortBreakDuration // ignore: cast_nullable_to_non_nullable
              as int,
      longBreakDuration: null == longBreakDuration
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

// work time duration
  @override
  @JsonKey()
  final int workDuration;
// work time count
  @override
  @JsonKey()
  final int workCount;
// how many count needed to trigger long break
  @override
  @JsonKey()
  final int workCountForLongBreak;
// timer running state
  @override
  @JsonKey()
  final bool isRunning;
// timer reset state
  @override
  @JsonKey()
  final bool isReset;
// current timer's duration
  @override
  @JsonKey()
  final int currentTimerMinutes;
// when the current timer stops
  @override
  final DateTime? timeUntil;
// how much time left
  @override
  @JsonKey()
  final int timeLeft;
// how many minutes will be added/subtraced on tap access/slow button
  @override
  @JsonKey()
  final int increaseMinutesBy;
  @override
  @JsonKey()
  final TimerMode mode;
  @override
  @JsonKey()
  final int shortBreakDuration;
  @override
  @JsonKey()
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
            other is _$_TimerState &&
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
  @pragma('vm:prefer-inline')
  _$$_TimerStateCopyWith<_$_TimerState> get copyWith =>
      __$$_TimerStateCopyWithImpl<_$_TimerState>(this, _$identity);
}

abstract class _TimerState implements TimerState {
  const factory _TimerState(
      {final int workDuration,
      final int workCount,
      final int workCountForLongBreak,
      final bool isRunning,
      final bool isReset,
      final int currentTimerMinutes,
      final DateTime? timeUntil,
      final int timeLeft,
      final int increaseMinutesBy,
      final TimerMode mode,
      final int shortBreakDuration,
      final int longBreakDuration}) = _$_TimerState;

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
  _$$_TimerStateCopyWith<_$_TimerState> get copyWith =>
      throw _privateConstructorUsedError;
}
