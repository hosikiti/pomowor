import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pomowor/common/util/local_notification.dart';
import 'package:timezone/timezone.dart' as tz;

const int timerId = 10000;
const String timerChannelId = "pomowor_timer";

final flutterLocalNotificationsProvider =
    Provider<FlutterLocalNotificationsPlugin>(
        (ref) => throw UnimplementedError());

// Flutter local notification plugin wrapper
class LocalNotification {
  LocalNotification();

  Future<FlutterLocalNotificationsPlugin> get plugin async =>
      await initLocalNotification();

  /// Make scheduled notification
  Future<void> scheduledNotification(String body, Duration showIn) async {
    (await plugin).zonedSchedule(
        timerId,
        'Pomowor',
        body,
        tz.TZDateTime.now(tz.local).add(showIn),
        const NotificationDetails(
          iOS: IOSNotificationDetails(),
          android: AndroidNotificationDetails(timerChannelId, "Pomowor",
              importance: Importance.max, priority: Priority.high),
        ),
        androidAllowWhileIdle: true,
        uiLocalNotificationDateInterpretation:
            UILocalNotificationDateInterpretation.absoluteTime);
  }

  /// Cancel created timer
  void cancelTimer() async {
    (await plugin).cancel(timerId);
  }
}

final localNotificationProvider =
    Provider<LocalNotification>((ref) => LocalNotification());
