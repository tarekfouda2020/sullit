import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'package:auto_route/auto_route.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/global_context.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:injectable/injectable.dart';

import 'helper_methods.dart';

@lazySingleton
class GlobalNotification {
  static final StreamController<Map<String, dynamic>>
      _onMessageStreamController = StreamController.broadcast();

  late FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin;
  static GlobalNotification instance = GlobalNotification._();
  static FirebaseMessaging messaging = FirebaseMessaging.instance;

  GlobalNotification._();

  GlobalNotification();

  Future<void> setupNotification() async {
    _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
    const android = AndroidInitializationSettings("@mipmap/launcher_icon");
    const ios = DarwinInitializationSettings();
    const initSettings = InitializationSettings(android: android, iOS: ios);
    _flutterLocalNotificationsPlugin.initialize(
      initSettings,
      // onDidReceiveBackgroundNotificationResponse:(details)=> flutterNotificationClick( details.payload),
      // onDidReceiveNotificationResponse: (details)=> flutterNotificationClick( details.payload),
    );
    await Firebase.initializeApp();
    final settings = await messaging.requestPermission(provisional: true);
    print('User granted permission: ${settings.authorizationStatus}');

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      messaging.getToken().then((token) {
        print(token);
      });
      messaging.setForegroundNotificationPresentationOptions();
      FirebaseMessaging.onMessage.listen((RemoteMessage message) {
        print("_____________________Message data:${message.data}");
        print(
            "_____________________notification:${message.notification?.title}");
        _showLocalNotification(message);
        _onMessageStreamController.add(message.data);
        if (int.parse(message.data["type"] ?? "0") == -1) {
          HelperMethods.instance.clearSavedData();
          // AutoRouter.of(context).push(const LoginRoute());
        }
      });
      FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
        print('AonMessageOpenedApp event was published!');
        flutterNotificationClick(json.encode(message.data));
      });
      FirebaseMessaging.onBackgroundMessage(
          _firebaseMessagingBackgroundHandler);
    }
  }

  static Future<void> _firebaseMessagingBackgroundHandler(
      RemoteMessage message) async {
    log("Handling a background message: ${message.messageId}");
    await Firebase.initializeApp();
    flutterNotificationClick(json.encode(message.data));
  }

  StreamController<Map<String, dynamic>> get notificationSubject {
    return _onMessageStreamController;
  }

  Future<void> _showLocalNotification(RemoteMessage? message) async {
    if (message == null) return;
    final android = AndroidNotificationDetails(
      "${DateTime.now()}",
      "Default",
      priority: Priority.high,
      importance: Importance.max,
      shortcutId: DateTime.now().toIso8601String(),
    );
    const ios = DarwinNotificationDetails();
    final platform = NotificationDetails(android: android, iOS: ios);
    _flutterLocalNotificationsPlugin.show(
        DateTime.now().microsecond,
        "${message.notification?.title}",
        "${message.notification?.body}",
        platform,
        payload: json.encode(message.data));
  }

  static Future flutterNotificationClick(String? details) async {
    print("fcm>>>>>>$details");
    var data = json.decode("$details");
    int id = data["item_type_id"];
    var context = getIt<GlobalContext>().context();
    AutoRouter.of(context).push(OrderSummaryRoute(orderId: id));
  }
}
