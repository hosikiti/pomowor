import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pomowor/state/app_foreground_state.dart';

/// Provide app's foreground state
final appForegroundStateProvider =
    StateNotifierProvider<AppForegroundState, bool>(
        (ref) => AppForegroundState());
