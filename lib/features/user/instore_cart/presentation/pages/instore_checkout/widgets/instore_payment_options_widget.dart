part of '../instore_checkout_imports.dart';

class InstorePaymentOptionsWidget extends StatelessWidget {
  final InstoreCheckoutController controller;

  const InstorePaymentOptionsWidget({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.only(
        start: 18,
        top: 19,
        end: 24,
        bottom: 15,
      ),
      decoration: CustomDecoration(
        myBoxShadow: const [],
        boxBorder: Border.all(color: context.colors.borderColor),
      ),
      child: Column(
        children: [
          InstorePayOptionWidget(controller: controller),
          Gaps.vGap5,
          Divider(color: context.colors.softGray),
          Gaps.vGap8,
          InstoreWalletPaymentWidget(controller: controller),
          Gaps.vGap10,
          Divider(color: context.colors.softGray),
          Gaps.vGap7,
          InstoreApplyGiftCardWidget(controller: controller),
        ],
      ),
    );
  }
}
