part of 'seller_notifications_widgets_imports.dart';

class BuildSellerNotificationsItem extends StatelessWidget {
  const BuildSellerNotificationsItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: Dimens.dp8),
      decoration: BoxDecoration(
        borderRadius: Dimens.borderRadius10PX,
        color: context.colors.white,
        boxShadow: [
          BoxShadow(
            color: context.colors.greyWhite,
            blurRadius: 1,
            spreadRadius: 1,
          )
        ],
      ),
      child: ListTile(
        title: Text(
          "Empty String Empty String Empty String Empty String ",
          style: AppTextStyle.s12_w400(color: context.colors.black),
        ),
        leading: Image.asset(
          Res.logo,
          height: 50.h,
          width: 50.w,
        ),
        trailing: Text(
          "12/3/2023",
          style: AppTextStyle.s12_w400(color: context.colors.blackOpacity),
        ),
      ),
    );
  }
}
