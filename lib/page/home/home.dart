import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pomowor/provider/test_mode.dart';
import 'package:pomowor/provider/timer.dart';
import 'package:pomowor/util/dialogs.dart';
import 'package:pomowor/widget/timer_label.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

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
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(32.0),
                        child: AspectRatio(
                            aspectRatio: 1,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Expanded(
                                  child: CircularProgressIndicator(
                                    strokeWidth: 1,
                                    value: 1,
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ],
                  ),
                  builder: (context, ref, child) {
                    final timerMin = ref.watch(timerNotifierProvider
                            .select((value) => value.currentTimerMinutes)) *
                        60;
                    final timeLeft = ref.watch(timerNotifierProvider
                        .select((value) => value.timeLeft));
                    final progress = (timerMin - timeLeft) / timerMin;

                    return Stack(
                      children: [
                        child!, // draw base circle widget
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(32.0),
                              child: AspectRatio(
                                  aspectRatio: 1,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Expanded(
                                        child: CircularProgressIndicator(
                                          color: Colors.white,
                                          strokeWidth: 3,
                                          value: progress,
                                        ),
                                      ),
                                    ],
                                  )),
                            ),
                          ],
                        ),
                        Center(
                          child: TimerLabel(
                            timeLeftSec: timeLeft,
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
                    ElevatedButton(
                        onPressed: !ref.watch(timerNotifierProvider).isReset
                            ? null
                            : () {
                                ref
                                    .read(timerNotifierProvider.notifier)
                                    .setShorterTimer();
                              },
                        style: ElevatedButton.styleFrom(
                          animationDuration: const Duration(seconds: 0),
                          minimumSize: const Size(60, 60),
                          shape: const CircleBorder(),
                        ),
                        child: const Column(
                          children: [Icon(CupertinoIcons.minus)],
                        )),
                    ElevatedButton(
                      child: Icon(
                        ref.watch(timerNotifierProvider).isRunning
                            ? Icons.pause
                            : Icons.play_arrow_rounded,
                        size: 60,
                      ),
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(100, 100),
                        shape: const CircleBorder(),
                      ),
                      onPressed: () {
                        var timer = ref.read(timerNotifierProvider.notifier);
                        if (ref.read(timerNotifierProvider).isRunning) {
                          timer.stopTimer(clearNotification: true);
                        } else {
                          timer.startTimer(resume: true);
                        }
                      },
                    ),
                    // Set longer timer!
                    ElevatedButton(
                        onPressed: !ref.watch(timerNotifierProvider).isReset
                            ? null
                            : () {
                                ref
                                    .read(timerNotifierProvider.notifier)
                                    .setLongerTimer();
                              },
                        style: ElevatedButton.styleFrom(
                          animationDuration: const Duration(seconds: 0),
                          minimumSize: const Size(60, 60),
                          shape: const CircleBorder(),
                        ),
                        child: const Column(
                          children: [Icon(CupertinoIcons.plus)],
                        )),
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
                        final result =
                            await showConfirmDialog(context, "Reset timer?");
                        if (result) {
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
