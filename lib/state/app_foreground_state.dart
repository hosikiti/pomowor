import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Manage the app's foreground state based on app lifecycle events
class AppForegroundState extends StateNotifier<bool>
    with WidgetsBindingObserver {
  AppForegroundState() : super(true) {
    WidgetsBinding.instance!.addObserver(this);
  }

  onDispose() {
    WidgetsBinding.instance!.removeObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused) {
      this.state = false;
    } else if (state == AppLifecycleState.resumed) {
      this.state = true;
    }
  }
}
