import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pomowor/provider/timer_history.dart';

class TotalWorkTime extends ConsumerWidget {
  /// Show total work time in minutes
  const TotalWorkTime({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final total = ref.watch(timerHistoryProvider).workTimeTotal;
    if (total.inMicroseconds == 0) {
      return const Text("-");
    }

    final h = (total.inMinutes / 60).floor().toInt().toString().padLeft(2, '0');
    final m = (total.inMinutes % 60).toInt().toString().padLeft(2, '0');

    return Text("$h:$m:00");
  }
}
