
import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/user/notifications/data/models/notification_model/notification_model.dart';


abstract class NotificationsDataSources {
  Future<Either<Failure, List<NotificationModel>>> getNotifications (bool param);
}