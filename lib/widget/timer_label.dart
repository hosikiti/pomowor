import 'package:flutter/material.dart';

class TimerLabel extends StatelessWidget {
  /// This widget shows time in "00:00" format
  const TimerLabel({Key? key, required this.timeLeftSec}) : super(key: key);

  final int timeLeftSec;

  String get label {
    String m, s;
    final min = (timeLeftSec / 60).floor().toInt();
    m = min.toString().padLeft(2, "0");
    final sec = timeLeftSec % 60;
    s = sec.toString().padLeft(2, "0");
    return "$m:$s";
  }

  @override
  Widget build(BuildContext context) {
    return Text(label, style: const TextStyle(fontSize: 80));
  }
}
