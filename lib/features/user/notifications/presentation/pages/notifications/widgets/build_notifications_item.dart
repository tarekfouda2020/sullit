part of 'notifications_widgets_imports.dart';

class BuildNotificationsItem extends StatelessWidget {
  final NotificationDomainModel notification;

  const BuildNotificationsItem({Key? key, required this.notification})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => AutoRouter.of(context)
          .push(OrderSummaryRoute(orderId: notification.orderId)),
      child: Container(
        margin: Dimens.paddingVertical5PX,
        padding: const EdgeInsets.symmetric(horizontal: 21,vertical: 16),
        decoration: CustomDecoration(radius: Dimens.borderRadius12PX),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              Res.smallLogo,
              width: 40.h,
            ),
            Gaps.hGap12,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gaps.vGap5,
                  Text(
                    /// edit from back end
                    notification.text,
                    style: AppTextStyle.s12_w400(color: context.colors.black).copyWith(
                      height: 1.3
                    ),
                  ),
                  Gaps.vGap10,
                  Text(
                    notification.createdAt,
                    // getDate(),
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
  
  
  // String getDate(){
  //   DateTime date = DateTimeHelper.convertToDateTime(strDate: notification.createdAt);
  //   return DateTimeHelper.formatDate(date: date, formatType: "dd MMM yyyy - hh:mm a");
  // }
  
  
}
