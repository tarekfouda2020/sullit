part of '../instore_checkout_imports.dart';

class InstorePaymentMethodWidget extends StatelessWidget {
  final InstoreCheckoutController controller;

  const InstorePaymentMethodWidget({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InstoreCheckoutSectionTitleWidget(title: tr('paymentMethod')),
        Gaps.vGap12,
        InstorePaymentOptionsWidget(controller: controller),
      ],
    );
  }
}
