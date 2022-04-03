import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pomowor/provider/storage.dart';
import 'package:pomowor/state/timer_history_state.dart';

class TimerHistory extends StateNotifier<TimerHistoryState> {
  static const String _cacheKey = "timer_history";
  final Reader _reader;

  TimerHistory(this._reader)
      : super(const TimerHistoryState(workTimeTotal: Duration())) {
    _restoreState();
  }

  void addWorkTime(int min) {
    state = state.copyWith(
        workTimeTotal: state.workTimeTotal + Duration(minutes: min));
    _saveState();
  }

  void clearWorkTime() {
    state = state.copyWith(workTimeTotal: const Duration());
    _saveState();
  }

  _restoreState() {
    final jsonValue = _reader(storageProvider).getString(_cacheKey);
    if (jsonValue == null) {
      return;
    }
    try {
      state = TimerHistoryState.fromJson(json.decode(jsonValue));
    } catch (e) {
      debugPrint("$e");
    }
  }

  _saveState() {
    _reader(storageProvider).setString(_cacheKey, json.encode(state.toJson()));
  }
}

final timerHistoryProvider =
    StateNotifierProvider<TimerHistory, TimerHistoryState>(
        (ref) => TimerHistory(ref.read));
