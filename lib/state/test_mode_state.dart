import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'test_mode_state.freezed.dart';

@freezed
class TestModeState with _$TestModeState {
  const factory TestModeState({
    @Default(0) int counter,
    @Default(false) bool isTestMode,
  }) = _TestModeState;
}
