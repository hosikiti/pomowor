import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pomowor/common/provider/local_notification.dart';
import 'package:pomowor/common/util/local_notification.dart';
import 'package:pomowor/feature/timer/timer_page.dart';
import 'package:pomowor/common/provider/storage.dart';
import 'package:pomowor/common/style/theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final sharedPref = await SharedPreferences.getInstance();
  final localNotificationPlugin = await initLocalNotification();

  runApp(ProviderScope(
    overrides: [
      storageProvider.overrideWithValue(sharedPref),
      flutterLocalNotificationsProvider
          .overrideWithValue(localNotificationPlugin),
    ],
    child: const App(),
  ));
}

class App extends ConsumerWidget {
  const App({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ref.watch(appThemeProvider),
      initialRoute: '/',
      routes: {
        '/': (context) => const TimerPage(),
      },
    );
  }
}
