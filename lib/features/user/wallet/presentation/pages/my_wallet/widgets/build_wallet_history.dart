part of'my_wallet_widgets_imports.dart';
class BuildWalletHistory extends StatelessWidget {
  final WalletRechargeHistory walletRechargeHistory;

  const BuildWalletHistory({Key? key,  required this.walletRechargeHistory})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: true,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gaps.vGap24,
          Text(
            tr('transactions'),
            style: AppTextStyle.s16_w500(color: context.colors.black),
          ),
          Gaps.vGap10,
          ...List.generate(
            walletRechargeHistory.wallets.length ?? 0,
                (index) =>  WalletItemWidget(item: walletRechargeHistory.wallets[index]),
          ),
        ],
      ),
    );
  }
}
