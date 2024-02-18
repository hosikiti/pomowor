import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pomowor/feature/timer/provider/timer.dart';
import 'package:pomowor/feature/timer/timer_types.dart';

final _defaultWorkTheme = ThemeData.dark().copyWith(
  colorScheme: ThemeData.dark().colorScheme.copyWith(
        primary: Colors.red[300],
      ),
  scaffoldBackgroundColor: Colors.red[700],
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(foregroundColor: Colors.white),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        backgroundColor: Colors.red[300], foregroundColor: Colors.white),
  ),
);

final _defaultBreakTheme = ThemeData.dark().copyWith(
  colorScheme: ThemeData.dark().colorScheme.copyWith(
        primary: Colors.green[400],
      ),
  scaffoldBackgroundColor: Colors.green[700],
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(foregroundColor: Colors.white),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green[400], foregroundColor: Colors.white),
  ),
);

class AppTheme extends StateNotifier<ThemeData> {
  final StateNotifierProviderRef _ref;

  AppTheme(this._ref) : super(_defaultWorkTheme) {
    _initWatcher();
  }

  _initWatcher() {
    _ref.listen<TimerMode>(timerNotifierProvider.select((value) => value.mode),
        (prev, next) {
      _updateTheme(next);
    });
  }

  _updateTheme(TimerMode mode) {
    if (mode == TimerMode.work) {
      state = _getWorkTheme();
    } else {
      state = _getBreakTheme();
    }
  }

  ThemeData _getWorkTheme() {
    return _defaultWorkTheme.copyWith();
  }

  ThemeData _getBreakTheme() {
    return _defaultBreakTheme.copyWith();
  }
}

final appThemeProvider =
    StateNotifierProvider<AppTheme, ThemeData>((ref) => AppTheme(ref));
