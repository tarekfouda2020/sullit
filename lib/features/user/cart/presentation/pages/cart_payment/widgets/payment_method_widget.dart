part of 'cart_payment_widgets_imports.dart';

class PaymentMethodWidget extends StatelessWidget {
  final CartPaymentController controller;
  final Shipping shipping;
  const PaymentMethodWidget(
      {super.key, required this.controller, required this.shipping});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CartPaymentSectionTitleWidget(title: tr("paymentMethod")),
        Gaps.vGap12,
        PaymentOptionsWidget(controller: controller, shipping: shipping),
      ],
    );
  }
}
