// ignore_for_file: avoid_dynamic_calls

import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart';
import 'package:flutter_tdd/core/http/models/http_request_model.dart';
import 'package:flutter_tdd/features/user/notifications/data/data_sources/notifications_data_sources.dart';
import 'package:flutter_tdd/features/user/notifications/data/models/notification_model/notification_model.dart';
import 'package:injectable/injectable.dart';
@Injectable(as: NotificationsDataSources)
class ImplNotificationsDataSources extends NotificationsDataSources {
  @override
  Future<Either<Failure, List<NotificationModel>>> getNotifications(bool param)async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.notifications,
      requestMethod: RequestMethod.get,
      refresh: param,
      responseType: ResType.list,
      showLoader: true,
      toJsonFunc: (json) => List<NotificationModel>.from(
        json.map(
              (e) => NotificationModel.fromJson(e),
        ),
      ),
      responseKey: (data) => data["data"]['notifications'],
      errorFunc: (data) => data["msg"],
    );
    return await GenericHttpImpl<List<NotificationModel>>().call(model);
  }

}