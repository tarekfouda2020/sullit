// ignore_for_file: avoid_dynamic_calls

import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../errors/failures.dart';
import '../../../helpers/custom_toast.dart';

@lazySingleton
class HandleErrors {
  void catchError({Response? response, required Function(dynamic) errorFunc}) {
    if (response == null) {
      log("failed response Check Server");
      CustomToast.showSimpleToast(msg: "Check Server");
    } else {
      log("failed response ${response.statusCode}");
      log("failed response ${response.data}");
      var data = response.data;
      try {
        if (data is String) data = json.decode(response.data);
        String message = "";
        if (response.statusCode != 422) {
          message = errorFunc(data).toString();
        }
        switch (response.statusCode) {
          case 503:
          case 404:
            CustomToast.showSnakeBar(message);
            if (message == "Not Authorized") {
              _tokenExpired();
            }
            break;
          case 500:
            CustomToast.showSnakeBar(message.toString());
            break;
          case 502:
            CustomToast.showSnakeBar("check your request");
            break;
          case 422:
          case 400:
            if (data["msg"] != null) {
              CustomToast.showSnakeBar(data["msg"]);
            } else {
              CustomToast.showSnakeBar(message);
            }
            break;
          case 401:
          case 301:
          case 302:
            _tokenExpired();
            break;
        }
      } catch (e) {
        CustomToast.showSnakeBar(e.toString());
      }
    }
  }

  Either<ServerFailure, Response> statusError(
      Response response, Function(dynamic) errorFunc) {
    if (response.data["key"] != "success" &&
        response.data['key'] != 'redirect' &&
        response.data["key"] != "needActive") {
      CustomToast.showSnakeBar(
        response.data["msg"].toString(),
        toastGravity: ToastGravity.BOTTOM,
      );
      return Left(ServerFailure());
    }
    return Right(response);
  }

  void _tokenExpired() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove("user");
    CustomToast.showSnakeBar("You don't have permission");
    // Phoenix.rebirth(getIt<BuildContext>());
  }
}
