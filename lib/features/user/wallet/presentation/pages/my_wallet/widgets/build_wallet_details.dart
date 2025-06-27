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
         color: context.colors.white,
        borderRadius: Dimens.borderRadius12PX,
      ),
      child: Column(
        children: [
          Image.asset(
            Res.walletLogo,
            width: 35,
            height: 35,
          ),
          Gaps.vGap19,
          Text(
            tr('walBalance'),
            style: AppTextStyle.s16_w400(color: context.colors.black),
          ),
          Gaps.vGap10,
          Text(
            "$walletBalance",
            style: AppTextStyle.s24_w700(color: context.colors.primary),
          ),
        ],
      ),
    );
  }
}
