import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TimerCircle extends ConsumerWidget {
  final bool isActive;
  final double? progress;

  const TimerCircle({Key? key, required this.isActive, this.progress})
      : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(32.0),
          child: AspectRatio(
              aspectRatio: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: CircularProgressIndicator(
                      strokeWidth: isActive ? 3 : 1,
                      value: isActive ? progress : 1,
                      color: isActive ? Colors.white : null,
                    ),
                  ),
                ],
              )),
        ),
      ],
    );
  }
}
