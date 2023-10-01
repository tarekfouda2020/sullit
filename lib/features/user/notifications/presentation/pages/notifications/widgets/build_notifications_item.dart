part of 'notifications_widgets_imports.dart';

class BuildNotificationsItem extends StatelessWidget {
  final NotificationDomainModel notification;

  const BuildNotificationsItem({Key? key, required this.notification})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // onTap: ()=>AutoRouter.of(context).push( OrderSummaryRoute()),
      child: Container(
        margin: Dimens.paddingVertical5PX,
        padding: Dimens.paddingH10V20,
        decoration: CustomDecoration(),
        child: Row(
          children: [
            Image.asset(
              Res.logo,
              height: 40.r,
              width: 40.h,
            ),
            Gaps.hGap12,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    notification.text,
                    style: AppTextStyle.s12_w400(color: context.colors.black),
                  ),
                  Gaps.vGap10,
                  Text(
                    notification.createdAt,
                    style: AppTextStyle.s12_w400(
                        color: context.colors.blackOpacity),
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
