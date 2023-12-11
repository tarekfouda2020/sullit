import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/models/model_to_domain/model_to_domain.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_paginate_params.dart';
import 'package:flutter_tdd/features/user/notifications/data/data_sources/notifications_data_sources.dart';
import 'package:flutter_tdd/features/user/notifications/domain/models/notification.dart';
import 'package:flutter_tdd/features/user/notifications/domain/repository/notifications_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: NotificationsRepository)
class ImplNotificationsRepository extends NotificationsRepository with ModelToDomain {
  var dataSources = getIt<NotificationsDataSources>();

  @override
  Future<Either<Failure, List<NotificationDomainModel>>> getNotifications(
      GenericPaginateParams param) async {
    var result = await dataSources.getNotifications(param);
    return toDomainResultList(result);
  }
}
