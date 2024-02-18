import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pomowor/feature/timer/provider/test_mode_state.dart';

class TestMode extends StateNotifier<TestModeState> {
  /// TestMode handles app's testing mode.
  /// [onEvent] method should be called on specific UI event to trigger testing mode.
  TestMode() : super(const TestModeState());

  onEvent() {
    if (state.isTestMode) {
      state = state.copyWith(counter: 0, isTestMode: false);
    } else {
      // After 5 times this methods be called, trigger testing mode.
      final c = state.counter + 1;
      state = state.copyWith(counter: c, isTestMode: c >= 5);
    }
  }
}

final testModeProvider =
    StateNotifierProvider<TestMode, TestModeState>((ref) => TestMode());
