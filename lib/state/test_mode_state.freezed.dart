// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_mode_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
      _$TestModeStateCopyWithImpl<$Res, TestModeState>;
  @useResult
  $Res call({int counter, bool isTestMode});
}

/// @nodoc
class _$TestModeStateCopyWithImpl<$Res, $Val extends TestModeState>
    implements $TestModeStateCopyWith<$Res> {
  _$TestModeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? isTestMode = null,
  }) {
    return _then(_value.copyWith(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      isTestMode: null == isTestMode
          ? _value.isTestMode
          : isTestMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TestModeStateCopyWith<$Res>
    implements $TestModeStateCopyWith<$Res> {
  factory _$$_TestModeStateCopyWith(
          _$_TestModeState value, $Res Function(_$_TestModeState) then) =
      __$$_TestModeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int counter, bool isTestMode});
}

/// @nodoc
class __$$_TestModeStateCopyWithImpl<$Res>
    extends _$TestModeStateCopyWithImpl<$Res, _$_TestModeState>
    implements _$$_TestModeStateCopyWith<$Res> {
  __$$_TestModeStateCopyWithImpl(
      _$_TestModeState _value, $Res Function(_$_TestModeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? isTestMode = null,
  }) {
    return _then(_$_TestModeState(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      isTestMode: null == isTestMode
          ? _value.isTestMode
          : isTestMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_TestModeState with DiagnosticableTreeMixin implements _TestModeState {
  const _$_TestModeState({this.counter = 0, this.isTestMode = false});

  @override
  @JsonKey()
  final int counter;
  @override
  @JsonKey()
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
            other is _$_TestModeState &&
            (identical(other.counter, counter) || other.counter == counter) &&
            (identical(other.isTestMode, isTestMode) ||
                other.isTestMode == isTestMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, counter, isTestMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TestModeStateCopyWith<_$_TestModeState> get copyWith =>
      __$$_TestModeStateCopyWithImpl<_$_TestModeState>(this, _$identity);
}

abstract class _TestModeState implements TestModeState {
  const factory _TestModeState({final int counter, final bool isTestMode}) =
      _$_TestModeState;

  @override
  int get counter;
  @override
  bool get isTestMode;
  @override
  @JsonKey(ignore: true)
  _$$_TestModeStateCopyWith<_$_TestModeState> get copyWith =>
      throw _privateConstructorUsedError;
}
