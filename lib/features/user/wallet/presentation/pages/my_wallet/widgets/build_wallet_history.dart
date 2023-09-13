part of'my_wallet_widgets_imports.dart';
class BuildWalletHistory extends StatelessWidget {
  final WalletRechargeHistory walletRechargeHistory;

  const BuildWalletHistory({Key? key, required this.walletRechargeHistory})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: walletRechargeHistory.wallets.isNotEmpty,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gaps.vGap24,
          Text(
            "Wallet Recharge History",
            style: AppTextStyle.s16_w500(color: context.colors.black),
          ),
          Gaps.vGap10,
          ...List.generate(
            walletRechargeHistory.wallets.length,
                (index) => Container(
              margin: Dimens.paddingVertical5PX,
              decoration: CustomDecoration(),
              child: ListTile(
                title: Text(
                  "${walletRechargeHistory.wallets[index].dmoun}",
                  style: AppTextStyle.s14_w500(
                    color: context.colors.black,
                  ),
                ),
                trailing: Text(
                  walletRechargeHistory.wallets[index].approval,
                  style: AppTextStyle.s12_w400(
                    color: context.colors.primary,
                  ),
                ),
                minLeadingWidth: 10.w,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
