import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pomowor/common/widget/circle_button.dart';
import 'package:pomowor/feature/timer/provider/test_mode.dart';
import 'package:pomowor/feature/timer/provider/timer.dart';
import 'package:pomowor/common/util/dialogs.dart';
import 'package:pomowor/feature/timer/provider/timer_progress.dart';
import 'package:pomowor/feature/timer/widget/timer_circle.dart';
import 'package:pomowor/feature/timer/widget/timer_label.dart';

class TimerPage extends ConsumerWidget {
  const TimerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        // stop audio when user tap anywhere on the screen
        ref.read(timerNotifierProvider.notifier).stopAudio();
      },
      child: SafeArea(
        bottom: true,
        child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Consumer(
                  /// draw base circle
                  /// as it is not changed overtime, use child prop so that this widget will be used as cache.
                  child: const TimerCircle(
                    isActive: false,
                  ),
                  builder: (context, ref, child) {
                    final stat = ref.watch(timerProgressProvider);

                    return Stack(
                      children: [
                        child!, // draw base circle widget
                        TimerCircle(
                          isActive: true,
                          progress: stat.progress,
                        ),
                        Center(
                          child: TimerLabel(
                            timeLeftSec: stat.timeLeft,
                          ),
                        )
                      ],
                    );
                  },
                ),
              ),
              Consumer(
                builder: (context, ref, child) => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleButton(
                      icon: CupertinoIcons.minus,
                      onPressed: !ref.watch(timerNotifierProvider).isReset
                          ? null
                          : () {
                              ref
                                  .read(timerNotifierProvider.notifier)
                                  .setShorterTimer();
                            },
                      size: CircleButtonSize.medium,
                    ),
                    CircleButton(
                        size: CircleButtonSize.large,
                        icon: ref.watch(timerNotifierProvider).isRunning
                            ? Icons.pause
                            : Icons.play_arrow_rounded,
                        onPressed: () {
                          var timer = ref.read(timerNotifierProvider.notifier);
                          if (ref.read(timerNotifierProvider).isRunning) {
                            timer.stopTimer(clearNotification: true);
                          } else {
                            timer.startTimer(resume: true);
                          }
                        }),
                    // Set longer timer!
                    CircleButton(
                        icon: CupertinoIcons.plus,
                        onPressed: !ref.watch(timerNotifierProvider).isReset
                            ? null
                            : () {
                                ref
                                    .read(timerNotifierProvider.notifier)
                                    .setLongerTimer();
                              })
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onPanStart: (_) {
                        // trigger testing mode!
                        ref.read(testModeProvider.notifier).onEvent();
                      },
                      child: Consumer(
                        builder: (context, ref, child) => Container(
                            width: 80,
                            height: 44,
                            color: Colors.transparent,
                            child: ref.watch(testModeProvider).isTestMode
                                ? const Center(child: Text("TESTING"))
                                : null),
                      ),
                    ),
                    TextButton(
                      onPressed: () async {
                        final yes =
                            await showConfirmDialog(context, "Reset timer?");
                        if (yes) {
                          ref.read(timerNotifierProvider.notifier).resetTimer();
                        }
                      },
                      child: const Text("Skip"),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const SizedBox(width: 80, height: 44),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
