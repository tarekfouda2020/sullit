part of 'notifications_imports.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  late NotificationsController controller;

  @override
  void initState() {
    controller = NotificationsController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(title: tr('notifications')),
      backgroundColor: context.colors.customBackground,

      body: CustomRefreshIndicatorWidget(
        onRefresh: () => controller.getNotifications(1),
        child: PagedListView<int, NotificationDomainModel>(
          padding: Dimens.paddingAll15PX,
          pagingController: controller.pagingController,
          builderDelegate: PagedChildBuilderDelegate<NotificationDomainModel>(
            firstPageProgressIndicatorBuilder: (_) =>
            const  BuildNotifiesLoading(),
            itemBuilder: (_, item, index) =>
                BuildNotificationsItem(
                  notification: item,
                ),
            noItemsFoundIndicatorBuilder: (cxt) {
              return  Center(
                child: Text(
                  tr('noNotifies'),
                  style: AppTextStyle.s16_w700(color: context.colors.black),
                ),
              );
            },
          ),
        ),
      ),


    );
  }
}
