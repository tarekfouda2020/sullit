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
        padding: Dimens.paddingAll5PX,
        decoration: CustomDecoration(),
        child: ListTile(
          title: Text(
            notification.text,
            style: AppTextStyle.s12_w400(color: context.colors.black),
          ),
          leading: Image.asset(
            Res.suliitLogo,
            height: 40.r,
            width: 40.h,
          ),
          trailing: Text(
            notification.createdAt,
            style: AppTextStyle.s12_w400(color: context.colors.blackOpacity),
          ),
          minLeadingWidth: 10.w,
        ),
      ),
    );
  }
}
