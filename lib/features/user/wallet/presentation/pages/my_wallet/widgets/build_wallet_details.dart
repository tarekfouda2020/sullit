part of 'my_wallet_widgets_imports.dart';

class BuildWalletDetails extends StatelessWidget {
  final String walletBalance;

  const BuildWalletDetails({Key? key, required this.walletBalance}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.center,
      padding: Dimens.paddingAll20PX,
      margin: const EdgeInsets.only(top: 20,left: 20,right: 20,bottom: 16),
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
            walletBalance,
            style: AppTextStyle.s24_w700(color: context.colors.primary),
          ).withDirhamSymbol(
            symbolStyle: AppTextStyle.s26_w400(color: context.colors.primary)
          ),
        ],
      ),
    );
  }
}
