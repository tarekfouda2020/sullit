part of'notifications_widgets_imports.dart';
class BuildNotificationsItem extends StatelessWidget {
  final NotificationDomainModel notification;
  const BuildNotificationsItem({Key? key, required this.notification}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // onTap: ()=>AutoRouter.of(context).push( OrderSummaryRoute()),
      child: Container(
          margin: const EdgeInsets.symmetric(vertical: 5,).r,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5).r,
              color: context.colors.white,
              boxShadow: [
                BoxShadow(
                    color: context.colors.greyWhite, blurRadius: 1, spreadRadius: 1)
              ]),
          child: ListTile(
            title: Text(
              notification.text,
              style: AppTextStyle.s12_w400(color: context.colors.black),
            ),
            leading:  Image.asset(Res.suliitLogo,height: 40.r,width: 40.h,),
            trailing: Text(
              notification.createdAt,
              style: AppTextStyle.s12_w400(color: context.colors.blackOpacity),
            ),
            minLeadingWidth: 10.w,
          )
      ),
    );
  }
}
