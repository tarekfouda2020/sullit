part of '../instore_checkout_imports.dart';

class InstoreWalletPaymentWidget extends StatelessWidget {
  final InstoreCheckoutController controller;

  const InstoreWalletPaymentWidget({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    final summary = controller.summary;
    if (summary?.walletSystemActive != true) {
      return const SizedBox.shrink();
    }

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset(Res.walletIcon, color: context.colors.primary),
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
                    Text(
                      tr('useWalletBalance'),
                      style: AppTextStyle.s14_w400(color: context.colors.black),
                    ),
                    Gaps.vGap6,
                    DirhamPrice(
                      amount: summary?.walletBalance ?? '0.00',
                      textStyle:
                          AppTextStyle.s16_w700(color: context.colors.primary),
                      currencyStyle:
                          AppTextStyle.s18_w400(color: context.colors.primary),
                      currencyOffset: 0,
                    ),
                  ],
                ),
                const Spacer(),
                InstoreSwitchButtonWidget(
                  switchBloc: controller.isWalletSelected,
                  onToggle: (_) => controller.switchApplyWalletBalance(),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
