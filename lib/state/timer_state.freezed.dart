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
// ワークタイム
  int get workDuration => throw _privateConstructorUsedError; // ワークタイムのカウント
  int get workCount =>
      throw _privateConstructorUsedError; // 何回ワークしたらLong breakするか
  int get workCountForLongBreak =>
      throw _privateConstructorUsedError; // タイマーが稼働しているか
  bool get isRunning => throw _privateConstructorUsedError; // タイマーがリセットされた状態か
  bool get isReset => throw _privateConstructorUsedError; // 現在のタイマー
  int get currentTimerMinutes =>
      throw _privateConstructorUsedError; // タイマーが終わる日時
  DateTime? get timeUntil => throw _privateConstructorUsedError; // タイマーの残りが何秒か
  int get timeLeft =>
      throw _privateConstructorUsedError; // Accel/Slowのたびに、どのくらい時間を増やすか
  int get increaseMinutesBy => throw _privateConstructorUsedError;
  TimerMode get mode => throw _privateConstructorUsedError; // 休み時間
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
  @override // ワークタイム
  final int workDuration;
  @JsonKey(defaultValue: 0)
  @override // ワークタイムのカウント
  final int workCount;
  @JsonKey(defaultValue: 4)
  @override // 何回ワークしたらLong breakするか
  final int workCountForLongBreak;
  @JsonKey(defaultValue: false)
  @override // タイマーが稼働しているか
  final bool isRunning;
  @JsonKey(defaultValue: true)
  @override // タイマーがリセットされた状態か
  final bool isReset;
  @JsonKey(defaultValue: 20)
  @override // 現在のタイマー
  final int currentTimerMinutes;
  @override // タイマーが終わる日時
  final DateTime? timeUntil;
  @JsonKey(defaultValue: 0)
  @override // タイマーの残りが何秒か
  final int timeLeft;
  @JsonKey(defaultValue: 5)
  @override // Accel/Slowのたびに、どのくらい時間を増やすか
  final int increaseMinutesBy;
  @JsonKey(defaultValue: TimerMode.work)
  @override
  final TimerMode mode;
  @JsonKey(defaultValue: 5)
  @override // 休み時間
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

  @override // ワークタイム
  int get workDuration;
  @override // ワークタイムのカウント
  int get workCount;
  @override // 何回ワークしたらLong breakするか
  int get workCountForLongBreak;
  @override // タイマーが稼働しているか
  bool get isRunning;
  @override // タイマーがリセットされた状態か
  bool get isReset;
  @override // 現在のタイマー
  int get currentTimerMinutes;
  @override // タイマーが終わる日時
  DateTime? get timeUntil;
  @override // タイマーの残りが何秒か
  int get timeLeft;
  @override // Accel/Slowのたびに、どのくらい時間を増やすか
  int get increaseMinutesBy;
  @override
  TimerMode get mode;
  @override // 休み時間
  int get shortBreakDuration;
  @override
  int get longBreakDuration;
  @override
  @JsonKey(ignore: true)
  _$TimerStateCopyWith<_TimerState> get copyWith =>
      throw _privateConstructorUsedError;
}
