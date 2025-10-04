part of 'cart_payment_widgets_imports.dart';


class WalletPaymentWidget extends StatelessWidget {
  final Shipping shipping;
  final CartPaymentController controller;

  const WalletPaymentWidget({super.key, required this.shipping, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset(Res.walletIcon,color: context.colors.primary),
        Gaps.hGap11,
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(tr("useWalletBalance"),
                      style: AppTextStyle.s14_w400(color: context.colors.black),
                    ),
                    Gaps.vGap6,
                    DirhamPrice(
                      amount: shipping.summary.walletBalance,
                      textStyle: AppTextStyle.s16_w700(color: context.colors.primary),
                      currencyStyle: AppTextStyle.s18_w400(color: context.colors.primary),
                      currencyOffset: 0,
                    ),
                  ],
                ),
                const Spacer(),
                SwitchButtonWidget(
                  switchBloc: controller.isWalletSelected,
                  controller: controller,
                  onToggle: (value) => controller.switchApplyWalletBalance(),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
