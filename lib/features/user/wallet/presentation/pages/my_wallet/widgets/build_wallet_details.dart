part of 'my_wallet_widgets_imports.dart';

class BuildWalletDetails extends StatelessWidget {
  final Wallet wallet;

  const BuildWalletDetails({Key? key, required this.wallet}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.center,
      padding: Dimens.paddingAll20PX,
      margin: const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 16),
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: Dimens.borderRadius12PX,
      ),
      child: Column(
        children: [
          Image.asset(
            Res.walletLogo,
            width: 40,
            height: 40,
          ),
          Gaps.vGap16,
          if (wallet.haveWalletCredit)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildBalanceItem(
                  context,
                  label: tr('walBalance'),
                  value: wallet.walletBalance,
                  color: context.colors.primary,
                ),
                Container(
                  width: 1,
                  height: 40,
                  margin: const EdgeInsetsDirectional.only(end: 25),
                  color: context.colors.drawerColor,
                ),
                _buildBalanceItem(
                  context,
                  label: tr('walCashCredit'),
                  value: wallet.walletCredit,
                  color: context.colors.green,
                ),
              ],
            )
          else
            Column(
              children: [
                Text(
                  tr('walBalance'),
                  style: AppTextStyle.s16_w400(
                      color: context.colors.black.withOpacity(0.6)),
                ),
                Gaps.vGap10,
                Text(
                  wallet.walletBalance,
                  style: AppTextStyle.s24_w700(color: context.colors.primary),
                ).withDirhamSymbol(
                    symbolStyle:
                        AppTextStyle.s26_w400(color: context.colors.primary)),
              ],
            ),
        ],
      ),
    );
  }

  Widget _buildBalanceItem(BuildContext context,
      {required String label, required String value, required Color color}) {
    return Column(
      children: [
        Text(
          label,
          style: AppTextStyle.s14_w400(
              color: context.colors.black.withOpacity(0.6)),
        ),
        Gaps.vGap8,
        Text(
          value,
          style: AppTextStyle.s18_w700(color: color),
        ).withDirhamSymbol(symbolStyle: AppTextStyle.s20_w400(color: color)),
      ],
    );
  }
}
