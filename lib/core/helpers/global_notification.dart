import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_tdd/core/constants/local_storage_keys.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/global_context.dart';
import 'package:flutter_tdd/core/helpers/global_state.dart';
import 'package:flutter_tdd/core/helpers/orders_helper.dart';
import 'package:flutter_tdd/core/helpers/user_service_helper.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/features/general/auth/domain/models/user_domain_model.dart';
import 'package:flutter_tdd/features/general/auth/presentation/manager/user_cubit/user_cubit.dart';
import 'package:flutter_tdd/features/user/notifications/domain/entities/notify_enum.dart';
import 'package:flutter_tdd/features/user/profile/domain/use_cases/get_profile.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
    log('User granted permission: ${settings.authorizationStatus}');

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      messaging.getToken().then((token) {
        print(token);
      });
      GlobalState.instance.set(GlobalStateKeys.notificationGranted, true);
      messaging.setForegroundNotificationPresentationOptions();
      FirebaseMessaging.onMessage.listen((RemoteMessage message) {
        log("_____________________Message data:${message.data}");
        log("___________________notification:${message.notification?.title}");
        _onMessageStreamController.add(message.data);
        _showLocalNotification(message);
        if (message.data['item_type'] == NotifyEnum.emailChanged.getValue()) {
          onSaveUserData();
        }
        if (message.data['item_type'] == NotifyEnum.emailVerified.getValue()) {
          var context = getIt<GlobalContext>().context();
          AutoRouter.of(context).push(const LoginRoute());
        }
        if (message.data['item_type'] == NotifyEnum.newLogin.getValue()) {
          var context = getIt<GlobalContext>().context();
          getIt<UserServiceHelper>().clearUserData(context);
          // AutoRouter.of(context).push(const SplashRoute());
          AutoRouter.of(context).push(const LoginRoute());
        }
        var itemType = message.data['item_type'];
        var isOrder = itemType ==  NotifyEnum.order.getValue();
        var updatedFromDashBoard = itemType ==  NotifyEnum.customerChangeOrderStatus.getValue();
        if(itemType != null && (isOrder || updatedFromDashBoard) ){
          bool isDelivered = message.data['body'].toString().split(" ").last.replaceAll(".", "") == "delivered";
          // OrdersHelper.instance.getHome(setLoading: false);
          var orderId = int.tryParse(message.data['item_type_id']);
          if( orderId != null){
            OrdersHelper.instance.updateOrderInHomeFromOrderDetails(id: orderId);
            OrdersHelper.instance.updateTrackOrderFromFcm(orderId);
          }
          // if(isDelivered){
          //   var id = int.tryParse(message.data['item_type_id']);
          //   if(id!=null){
          //     OrdersHelper.instance.addPurchasedEvent(id);
          //   }
          // }
        }
      });
      FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
        log('AonMessageOpenedApp event was published!');
        flutterNotificationClick(json.encode(message.data));
      });
      FirebaseMessaging.onBackgroundMessage(
          _firebaseMessagingBackgroundHandler);
    }else{
      GlobalState.instance.set(GlobalStateKeys.notificationGranted, false);
    }
  }

  static Future<void> _firebaseMessagingBackgroundHandler(
      RemoteMessage message) async {
    log("Handling a background message: ${message.messageId}");
    await Firebase.initializeApp();
    flutterNotificationClick(json.encode(message.data));
  }

  static StreamController<Map<String, dynamic>> get notificationSubject {
    return _onMessageStreamController;
  }

  Future<void> _showLocalNotification(RemoteMessage? message) async {
    if (message == null) return;
    if (message.notification == null) return ;
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
    var data = json.decode("$details");
    int id = data["item_type_id"];
    String type = data["item_type"];
    onNotifyClick(type, id);
  }

  static void onNotifyClick(String type, int id) {
    var isShareHolderOffer = type == NotifyEnum.shareholderProducts.getValue();
    if (type == NotifyEnum.message.getValue()) {
      var context = getIt<GlobalContext>().context();
      AutoRouter.of(context).push(const SupportRoute());
    } else if (type == NotifyEnum.order.getValue()) {
      var context = getIt<GlobalContext>().context();
      AutoRouter.of(context).push(OrderSummaryRoute(orderId: id));
    } else if (type == NotifyEnum.emailVerified.getValue() || type == NotifyEnum.newLogin.getValue()) {
      var context = getIt<GlobalContext>().context();
      AutoRouter.of(context).push(const LoginRoute());
    }else if(isShareHolderOffer){
      var context = getIt<GlobalContext>().context();
      AutoRouter.of(context).push(HomeRoute(index: 3));
    }
  }

  static void onSaveUserData() async {
    var context = getIt<GlobalContext>().context();
    var data = await GetProfile().call(true);
    SharedPreferences pref = await SharedPreferences.getInstance();
    UserDomainModel model = data!;
    await pref.setString("user", json.encode(model.toJson()));
    context.read<UserCubit>().onUpdateUserData(data);
  }
}
