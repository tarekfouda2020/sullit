import 'dart:developer';
import 'dart:io';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetDeviceId {
  FirebaseMessaging messaging = FirebaseMessaging.instance;

  Future<String?> get deviceId async {
    // var deviceToken = await messaging.getToken();
    // log("deviceTokenhhhhhhhhhhhhhhhhhhh: $deviceToken");
   return await messaging.getToken();
  }
}