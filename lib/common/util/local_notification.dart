import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_timezone/flutter_timezone.dart';
import 'package:timezone/data/latest_all.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

// init local notification and request permissions if needed
Future<FlutterLocalNotificationsPlugin> initLocalNotification() async {
  const AndroidInitializationSettings initializationSettingsAndroid =
      AndroidInitializationSettings('ic_stat_access_alarm');
  const IOSInitializationSettings initializationSettingsIOS =
      IOSInitializationSettings(
    requestAlertPermission: true,
    requestBadgePermission: true,
    requestSoundPermission: true,
  );
  const initializationSettings = InitializationSettings(
      android: initializationSettingsAndroid, iOS: initializationSettingsIOS);
  final flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  await flutterLocalNotificationsPlugin.initialize(initializationSettings,
      onSelectNotification: selectNotification);

  // init timezone
  final localTimezone = await _getLocalTimeZone();
  tz.initializeTimeZones();
  tz.setLocalLocation(tz.getLocation(localTimezone));
  return flutterLocalNotificationsPlugin;
}

void selectNotification(String? payload) async {}

Future<String> _getLocalTimeZone() async {
  try {
    return await FlutterTimezone.getLocalTimezone();
  } catch (e) {
    debugPrint("$e");
    return "Asia/Tokyo";
  }
}
