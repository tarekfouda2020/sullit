part of 'notifications_imports.dart';

class Notifications extends StatefulWidget {
  final HomeController homeController;

  const Notifications({Key? key, required this.homeController})
      : super(key: key);

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
      appBar: BuildHomeAppBar(homeController: widget.homeController),
      backgroundColor: context.colors.customBackground,
      body: BlocBuilder<GenericBloc<List<NotificationDomainModel>>,
          GenericState<List<NotificationDomainModel>>>(
        bloc: controller.notificationsBloc,
        builder: (context, state) {
          if (state is GenericUpdateState) {
            return RefreshIndicator(
              child: Visibility(
                visible: state.data.isNotEmpty,
                replacement: Center(
                  child: Text(
                    tr('noNotifies'),
                    style: AppTextStyle.s14_w400(color: context.colors.black),
                  ),
                ),
                child: ListView.builder(
                  padding: Dimens.paddingAll15PX,
                  itemCount: state.data.length,
                  itemBuilder: (context, index) => BuildNotificationsItem(
                    notification: state.data[index],
                  ),
                ),
              ),
              onRefresh: () => controller.getNotifications(),
            );
          } else {
            return const BuildNotifiesLoading();
          }
        },
      ),
    );
  }
}
