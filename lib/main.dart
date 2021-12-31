import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pomowor/local_notification.dart';
import 'package:pomowor/page/home/home.dart';
import 'package:pomowor/provider/local_notification.dart';
import 'package:pomowor/provider/storage.dart';
import 'package:pomowor/style/theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final sharedPref = await SharedPreferences.getInstance();
  final localNotification = await initLocalNotification();
  runApp(ProviderScope(
    overrides: [
      storageProvider.overrideWithValue(sharedPref),
      flutterLocalNotificationsProvider.overrideWithValue(localNotification),
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
        '/': (context) => const HomePage(),
      },
    );
  }
}
