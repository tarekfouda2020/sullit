part of 'my_wallet_widgets_imports.dart';

class BuildWalletDetails extends StatelessWidget {
  final String walletBalance;

  const BuildWalletDetails({Key? key, required this.walletBalance})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.center,
      padding: Dimens.paddingAll20PX,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            context.colors.appBarColor,
            context.colors.blueAccent,
          ],
        ),
        borderRadius: Dimens.borderRadius5PX,
      ),
      child: Column(
        children: [
          Icon(
            Icons.monetization_on_outlined,
            color: context.colors.white,
            size: 30.sp,
          ),
          Gaps.vGap20,
          Text(
            "$walletBalance ",
            style: AppTextStyle.s20_w500(color: context.colors.white),
          ),
          Gaps.vGap10,
          Text(
          tr('walBalance'),
            style: AppTextStyle.s14_w500(color: context.colors.white),
          ),
        ],
      ),
    );
  }
}
