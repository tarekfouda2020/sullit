import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_tdd/core/constants/local_storage_keys.dart';
import 'package:flutter_tdd/core/helpers/global_state.dart';
import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:injectable/injectable.dart';


@lazySingleton
class PusherAuthHelper {
  Future<Map<dynamic, dynamic>> onAuthorizer(
    String channelName,
    String socketId,
    dynamic options,
  ) async {
    String token = GlobalState.instance.get(GlobalStateKeys.token);
    try {
      log("Pusher auth => channelName: $channelName, socketId: $socketId");
      String authUrl = ApiNames.pusherAuthUrl;
      var result = await Dio().post(
        authUrl,
        options: Options(headers: _headers(token)),
        data: _pusherFormData(socketId, channelName),
      );
      log(
        " Pusher auth response => statusCode: ${result.statusCode}, data: ${result.data}",
      );
      return {"auth": result.data['auth']};
    } catch (e) {
      log(" Pusher auth error: $e");
      return {};
    }
  }

  FormData _pusherFormData(String socketId, String channelName) {
    return FormData.fromMap({
      'socket_id': socketId,
      'channel_name': channelName,
    });
  }

  Map<String, dynamic> _headers(String token) {
    return {
      'Accept': 'application/json',
      if (token.isNotEmpty) 'Authorization': 'Bearer $token',
    };
  }
}
