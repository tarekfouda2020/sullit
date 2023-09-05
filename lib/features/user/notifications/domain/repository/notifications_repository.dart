import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/user/notifications/domain/models/notification.dart';

abstract class NotificationsRepository {
  Future<Either<Failure, List<NotificationDomainModel>>> getNotifications (bool param);

}