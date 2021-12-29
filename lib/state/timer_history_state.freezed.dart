// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'timer_history_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TimerHistoryState _$TimerHistoryStateFromJson(Map<String, dynamic> json) {
  return _TimerHistoryState.fromJson(json);
}

/// @nodoc
class _$TimerHistoryStateTearOff {
  const _$TimerHistoryStateTearOff();

  _TimerHistoryState call({required Duration workTimeTotal}) {
    return _TimerHistoryState(
      workTimeTotal: workTimeTotal,
    );
  }

  TimerHistoryState fromJson(Map<String, Object?> json) {
    return TimerHistoryState.fromJson(json);
  }
}

/// @nodoc
const $TimerHistoryState = _$TimerHistoryStateTearOff();

/// @nodoc
mixin _$TimerHistoryState {
  Duration get workTimeTotal => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimerHistoryStateCopyWith<TimerHistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimerHistoryStateCopyWith<$Res> {
  factory $TimerHistoryStateCopyWith(
          TimerHistoryState value, $Res Function(TimerHistoryState) then) =
      _$TimerHistoryStateCopyWithImpl<$Res>;
  $Res call({Duration workTimeTotal});
}

/// @nodoc
class _$TimerHistoryStateCopyWithImpl<$Res>
    implements $TimerHistoryStateCopyWith<$Res> {
  _$TimerHistoryStateCopyWithImpl(this._value, this._then);

  final TimerHistoryState _value;
  // ignore: unused_field
  final $Res Function(TimerHistoryState) _then;

  @override
  $Res call({
    Object? workTimeTotal = freezed,
  }) {
    return _then(_value.copyWith(
      workTimeTotal: workTimeTotal == freezed
          ? _value.workTimeTotal
          : workTimeTotal // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc
abstract class _$TimerHistoryStateCopyWith<$Res>
    implements $TimerHistoryStateCopyWith<$Res> {
  factory _$TimerHistoryStateCopyWith(
          _TimerHistoryState value, $Res Function(_TimerHistoryState) then) =
      __$TimerHistoryStateCopyWithImpl<$Res>;
  @override
  $Res call({Duration workTimeTotal});
}

/// @nodoc
class __$TimerHistoryStateCopyWithImpl<$Res>
    extends _$TimerHistoryStateCopyWithImpl<$Res>
    implements _$TimerHistoryStateCopyWith<$Res> {
  __$TimerHistoryStateCopyWithImpl(
      _TimerHistoryState _value, $Res Function(_TimerHistoryState) _then)
      : super(_value, (v) => _then(v as _TimerHistoryState));

  @override
  _TimerHistoryState get _value => super._value as _TimerHistoryState;

  @override
  $Res call({
    Object? workTimeTotal = freezed,
  }) {
    return _then(_TimerHistoryState(
      workTimeTotal: workTimeTotal == freezed
          ? _value.workTimeTotal
          : workTimeTotal // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TimerHistoryState
    with DiagnosticableTreeMixin
    implements _TimerHistoryState {
  const _$_TimerHistoryState({required this.workTimeTotal});

  factory _$_TimerHistoryState.fromJson(Map<String, dynamic> json) =>
      _$$_TimerHistoryStateFromJson(json);

  @override
  final Duration workTimeTotal;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TimerHistoryState(workTimeTotal: $workTimeTotal)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TimerHistoryState'))
      ..add(DiagnosticsProperty('workTimeTotal', workTimeTotal));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TimerHistoryState &&
            (identical(other.workTimeTotal, workTimeTotal) ||
                other.workTimeTotal == workTimeTotal));
  }

  @override
  int get hashCode => Object.hash(runtimeType, workTimeTotal);

  @JsonKey(ignore: true)
  @override
  _$TimerHistoryStateCopyWith<_TimerHistoryState> get copyWith =>
      __$TimerHistoryStateCopyWithImpl<_TimerHistoryState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TimerHistoryStateToJson(this);
  }
}

abstract class _TimerHistoryState implements TimerHistoryState {
  const factory _TimerHistoryState({required Duration workTimeTotal}) =
      _$_TimerHistoryState;

  factory _TimerHistoryState.fromJson(Map<String, dynamic> json) =
      _$_TimerHistoryState.fromJson;

  @override
  Duration get workTimeTotal;
  @override
  @JsonKey(ignore: true)
  _$TimerHistoryStateCopyWith<_TimerHistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}
