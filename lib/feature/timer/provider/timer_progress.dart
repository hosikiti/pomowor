import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pomowor/feature/timer/provider/timer.dart';

final timerProgressProvider = StateProvider((ref) {
  final timerMin = ref.watch(
          timerNotifierProvider.select((value) => value.currentTimerMinutes)) *
      60;
  final timeLeft =
      ref.watch(timerNotifierProvider.select((value) => value.timeLeft));
  final progress = (timerMin - timeLeft) / timerMin;
  return (progress: progress, timeLeft: timeLeft);
});
