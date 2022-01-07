import 'dart:async';

import 'package:audio_session/audio_session.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pomowor/provider/app_foreground_state.dart';
import 'package:pomowor/provider/local_notification.dart';
import 'package:pomowor/provider/test_mode.dart';
import 'package:pomowor/provider/timer_history.dart';
import 'package:pomowor/state/timer_mode.dart';
import 'package:pomowor/state/timer_state.dart';
import 'package:just_audio/just_audio.dart';

/// Speed up rate for test mode
/// If the rate is 50, it makes the timer speed 50x faster!
const _testModeSpeedUpRate = 50;

class TimerNotifier extends StateNotifier<TimerState> {
  final Reader _reader;

  TimerNotifier(this._reader) : super(const TimerState()) {
    _initAudio();
    setTimer(20, false);
  }

  Timer? _timer;
  late final AudioPlayer _player;

  _initAudio() async {
    _player = AudioPlayer(
      /// Use manual audio session configuration
      handleAudioSessionActivation: false,
    );

    /// Set audio mode to ambient so that the app does not stop background music
    AudioSession.instance.then((session) async {
      await session.configure(
        const AudioSessionConfiguration(
          avAudioSessionCategory: AVAudioSessionCategory.ambient,
        ),
      );
    });
  }

  /// Set timer in specified [min] minutes
  ///
  /// If [start] is true, the timer starts immediately
  void setTimer(int min, bool start) {
    if (min <= 0) {
      return;
    }

    DateTime timeUntil;
    int timeLeft;
    timeUntil = DateTime.now().add(Duration(minutes: min));
    timeLeft = min * 60; // time left in seconds until timer ends

    state = state.copyWith(
        isRunning: start,
        currentTimerMinutes: min,
        timeUntil: timeUntil,
        timeLeft: timeLeft);

    if (start) {
      startTimer(resume: false);
    }
  }

  /// Start timer
  void startTimer({required bool resume}) {
    if (state.timeUntil == null) {
      return;
    }
    if (resume) {
      final timeUntil = DateTime.now().add(Duration(seconds: state.timeLeft));
      state = state.copyWith(timeUntil: timeUntil);
    }

    // Set notification
    _reader(localNotificationProvider)
      ..cancelTimer()
      ..scheduledNotification(
          "Current timer has ended!",
          Duration(
              seconds: _reader(testModeProvider).isTestMode
                  ? (state.timeLeft ~/ _testModeSpeedUpRate)
                  : state.timeLeft));

    _timer = Timer.periodic(const Duration(milliseconds: 100), (timer) {
      var diff = state.timeUntil!.difference(DateTime.now()).inSeconds;

      // If testmode is true, timer speed will be xx times faster!
      if (_reader(testModeProvider).isTestMode) {
        final timePassed = (state.currentTimerMinutes * 60) - diff;
        diff = (state.currentTimerMinutes * 60) -
            (timePassed * _testModeSpeedUpRate);
      }

      state =
          state.copyWith(timeLeft: diff, isRunning: diff >= 0, isReset: false);
      if (diff <= 0) {
        // Do not show notification when the app is foreground
        if (_reader(appForegroundStateProvider)) {
          _reader(localNotificationProvider).cancelTimer();
        }
        _onTimerDone();
      }
    });
  }

  void stopTimer({bool clearNotification = false}) {
    state = state.copyWith(isRunning: false);
    _timer?.cancel();
    if (clearNotification) {
      _reader(localNotificationProvider).cancelTimer();
    }
  }

  void _onTimerDone() {
    stopTimer();
    _playAudio();

    if (state.mode == TimerMode.work) {
      // add to work time history
      _reader(timerHistoryProvider.notifier)
          .addWorkTime(state.currentTimerMinutes);
    }

    _switchMode();
  }

  void resetTimer() {
    _timer?.cancel();
    _switchMode();
  }

  void setLongerTimer() {
    if (state.mode == TimerMode.shortBreak) {
      state = state.copyWith(
          shortBreakDuration:
              state.shortBreakDuration + state.increaseMinutesBy);
      setTimer(state.shortBreakDuration, false);
    } else if (state.mode == TimerMode.longBreak) {
      state = state.copyWith(
          longBreakDuration: state.longBreakDuration + state.increaseMinutesBy);
      setTimer(state.longBreakDuration, false);
    } else {
      state = state.copyWith(
          workDuration: state.workDuration + state.increaseMinutesBy);
      setTimer(state.workDuration, false);
    }
  }

  void setShorterTimer() {
    if (state.mode == TimerMode.shortBreak) {
      if (state.shortBreakDuration - state.increaseMinutesBy <= 0) {
        return;
      }
      state = state.copyWith(
          shortBreakDuration:
              state.shortBreakDuration - state.increaseMinutesBy);
      setTimer(state.shortBreakDuration, false);
    } else if (state.mode == TimerMode.longBreak) {
      if (state.longBreakDuration - state.increaseMinutesBy <= 0) {
        return;
      }
      state = state.copyWith(
          longBreakDuration: state.longBreakDuration - state.increaseMinutesBy);
      setTimer(state.longBreakDuration, false);
    } else {
      if (state.workDuration - state.increaseMinutesBy <= 0) {
        return;
      }
      state = state.copyWith(
          workDuration: state.workDuration - state.increaseMinutesBy);
      setTimer(state.workDuration, false);
    }
  }

  /// Change timer mode to next
  void _switchMode() {
    final currentMode = state.mode;
    if (currentMode == TimerMode.work) {
      state = state.copyWith(workCount: state.workCount + 1);
    }

    final nextMode = _getNextMode();
    state = state.copyWith(mode: nextMode, isReset: true);
    switch (nextMode) {
      case TimerMode.work:
        setTimer(state.workDuration, false);
        break;
      case TimerMode.longBreak:
        // reset work count to zero
        state = state.copyWith(workCount: 0);
        setTimer(state.longBreakDuration, false);
        break;
      case TimerMode.shortBreak:
        setTimer(state.shortBreakDuration, false);
        break;
    }
  }

  TimerMode _getNextMode() {
    if (state.mode == TimerMode.longBreak ||
        state.mode == TimerMode.shortBreak) {
      return TimerMode.work;
    } else {
      // work -> shortBreak or longBreak
      if (state.workCount == state.workCountForLongBreak) {
        return TimerMode.longBreak;
      } else {
        return TimerMode.shortBreak;
      }
    }
  }

  _playAudio() {
    _player.setAsset("asset/alarm.mp3");
    _player.play();
  }

  stopAudio() {
    _player.stop();
  }

  // Callback on resume
  onAppResume() {
    if (!state.isRunning) {
      // Clear all notifications on resume so that
      // the user will not see notifications after activating the app after the timer ends
      _reader(localNotificationProvider).cancelTimer();
    }
  }

  onDispose() {
    _player.dispose();
  }
}

final timerNotifierProvider =
    StateNotifierProvider<TimerNotifier, TimerState>((ref) {
  final instance = TimerNotifier(ref.read);
  ref.onDispose(() {
    instance.dispose();
  });

  // Notify on app's foreground state change
  ref.listen<bool>(appForegroundStateProvider, (_, isForeground) {
    if (isForeground) {
      instance.onAppResume();
    }
  });
  return instance;
});
