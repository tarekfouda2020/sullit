part of'notifications_imports.dart';
class NotificationsController {
  final GenericBloc<List<NotificationDomainModel>> notificationsBloc =
      GenericBloc([]);

  NotificationsController(){
    getNotifications(refresh: false);
    getNotifications();
  }

  Future<void> getNotifications({bool refresh = false}) async {
    return await GetNotifications().call(refresh).then(
          (value) => notificationsBloc.onUpdateData(value),
        );
  }
}