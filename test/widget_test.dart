// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pomowor/local_notification.dart';
import 'package:pomowor/main.dart';
import 'package:pomowor/provider/local_notification.dart';
import 'package:pomowor/provider/storage.dart';
import 'package:pomowor/widget/timer_label.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  testWidgets('TimerLabel widget test', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: TimerLabel(timeLeftSec: 179),
    ));

    expect(find.text('02:59'), findsOneWidget);
  });

  // Create later
  // testWidgets('App test', ((tester) async {
  //   final sharedPref = await SharedPreferences.getInstance();
  //   final localNotification = await initLocalNotification();

  //   await tester.pumpWidget(ProviderScope(
  //       overrides: [
  //         storageProvider.overrideWithValue(sharedPref),
  //         flutterLocalNotificationsProvider
  //             .overrideWithValue(localNotification),
  //       ],
  //       child: MaterialApp(
  //         home: App(),
  //       )));
  // }));
}
