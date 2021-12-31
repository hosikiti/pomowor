import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:timezone/timezone.dart' as tz;

const int timerId = 10000;
const String timerChannelId = "pomowor_timer";

final flutterLocalNotificationsProvider =
    Provider<FlutterLocalNotificationsPlugin>(
        (ref) => throw UnimplementedError());

// Flutter local notification plugin wrapper
class LocalNotification {
  final Reader _reader;
  late final _localNotification = _reader(flutterLocalNotificationsProvider);
  LocalNotification(this._reader);

  Future<void> scheduledNotification(String body, Duration showIn) async {
    await _localNotification.zonedSchedule(
        timerId,
        'Pomowor',
        body,
        tz.TZDateTime.now(tz.local).add(showIn),
        const NotificationDetails(
          android: AndroidNotificationDetails(timerChannelId, "Pomowor",
              importance: Importance.max, priority: Priority.high),
        ),
        androidAllowWhileIdle: true,
        uiLocalNotificationDateInterpretation:
            UILocalNotificationDateInterpretation.absoluteTime);
  }

  void cancelTimer() {
    _localNotification.cancel(timerId);
  }
}

final localNotificationProvider =
    Provider<LocalNotification>((ref) => LocalNotification(ref.read));
