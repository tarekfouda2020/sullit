part of 'notifications_widgets_imports.dart';

class BuildNotificationsItem extends StatelessWidget {
  final NotificationDomainModel notification;

  const BuildNotificationsItem({Key? key, required this.notification}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => AutoRouter.of(context).push(OrderSummaryRoute(orderId: notification.orderId)),
      child: Container(
        margin: Dimens.paddingVertical5PX,
        padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 16),
        decoration: CustomDecoration(radius: Dimens.borderRadius12PX),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(Res.newSplashImage, width: 50, height: 50),
            Gaps.hGap10,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    /// edit from back end
                    notification.text,
                    style: AppTextStyle.s14_w400(color: context.colors.black).copyWith(height: 1.3),
                  ),
                  Gaps.vGap7,
                  Text(
                    notification.normalizeDate(),
                    style: AppTextStyle.s12_w400(color: context.colors.gray5),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
