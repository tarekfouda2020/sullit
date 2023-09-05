import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/notifications/domain/models/notification.dart';
import 'package:flutter_tdd/features/user/notifications/domain/repository/notifications_repository.dart';

class GetNotifications implements UseCase<List<NotificationDomainModel>, bool> {
  @override
  Future<List<NotificationDomainModel>> call(bool param) async {
    var result = await getIt<NotificationsRepository>().getNotifications(param);
    return result.fold(
      (l) => [],
      (r) => r,
    );
  }
}
