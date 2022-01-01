// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'test_mode_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TestModeStateTearOff {
  const _$TestModeStateTearOff();

  _TestModeState call({int counter = 0, bool isTestMode = false}) {
    return _TestModeState(
      counter: counter,
      isTestMode: isTestMode,
    );
  }
}

/// @nodoc
const $TestModeState = _$TestModeStateTearOff();

/// @nodoc
mixin _$TestModeState {
  int get counter => throw _privateConstructorUsedError;
  bool get isTestMode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TestModeStateCopyWith<TestModeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestModeStateCopyWith<$Res> {
  factory $TestModeStateCopyWith(
          TestModeState value, $Res Function(TestModeState) then) =
      _$TestModeStateCopyWithImpl<$Res>;
  $Res call({int counter, bool isTestMode});
}

/// @nodoc
class _$TestModeStateCopyWithImpl<$Res>
    implements $TestModeStateCopyWith<$Res> {
  _$TestModeStateCopyWithImpl(this._value, this._then);

  final TestModeState _value;
  // ignore: unused_field
  final $Res Function(TestModeState) _then;

  @override
  $Res call({
    Object? counter = freezed,
    Object? isTestMode = freezed,
  }) {
    return _then(_value.copyWith(
      counter: counter == freezed
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      isTestMode: isTestMode == freezed
          ? _value.isTestMode
          : isTestMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$TestModeStateCopyWith<$Res>
    implements $TestModeStateCopyWith<$Res> {
  factory _$TestModeStateCopyWith(
          _TestModeState value, $Res Function(_TestModeState) then) =
      __$TestModeStateCopyWithImpl<$Res>;
  @override
  $Res call({int counter, bool isTestMode});
}

/// @nodoc
class __$TestModeStateCopyWithImpl<$Res>
    extends _$TestModeStateCopyWithImpl<$Res>
    implements _$TestModeStateCopyWith<$Res> {
  __$TestModeStateCopyWithImpl(
      _TestModeState _value, $Res Function(_TestModeState) _then)
      : super(_value, (v) => _then(v as _TestModeState));

  @override
  _TestModeState get _value => super._value as _TestModeState;

  @override
  $Res call({
    Object? counter = freezed,
    Object? isTestMode = freezed,
  }) {
    return _then(_TestModeState(
      counter: counter == freezed
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      isTestMode: isTestMode == freezed
          ? _value.isTestMode
          : isTestMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_TestModeState with DiagnosticableTreeMixin implements _TestModeState {
  const _$_TestModeState({this.counter = 0, this.isTestMode = false});

  @JsonKey(defaultValue: 0)
  @override
  final int counter;
  @JsonKey(defaultValue: false)
  @override
  final bool isTestMode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TestModeState(counter: $counter, isTestMode: $isTestMode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TestModeState'))
      ..add(DiagnosticsProperty('counter', counter))
      ..add(DiagnosticsProperty('isTestMode', isTestMode));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TestModeState &&
            (identical(other.counter, counter) || other.counter == counter) &&
            (identical(other.isTestMode, isTestMode) ||
                other.isTestMode == isTestMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, counter, isTestMode);

  @JsonKey(ignore: true)
  @override
  _$TestModeStateCopyWith<_TestModeState> get copyWith =>
      __$TestModeStateCopyWithImpl<_TestModeState>(this, _$identity);
}

abstract class _TestModeState implements TestModeState {
  const factory _TestModeState({int counter, bool isTestMode}) =
      _$_TestModeState;

  @override
  int get counter;
  @override
  bool get isTestMode;
  @override
  @JsonKey(ignore: true)
  _$TestModeStateCopyWith<_TestModeState> get copyWith =>
      throw _privateConstructorUsedError;
}
