part of 'cart_payment_widgets_imports.dart';

class PaymentOptionsWidget extends StatelessWidget {
  final CartPaymentController controller;
  final Shipping shipping;
  const PaymentOptionsWidget(
      {super.key, required this.controller, required this.shipping});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.only(
          start: 18, top: 19, end: 24, bottom: 15),
      decoration: CustomDecoration(
          myBoxShadow: const [],
          boxBorder: Border.all(color: context.colors.borderColor)),
      child: Column(
        children: [
          PayOptionWidget(controller: controller, shipping: shipping),
          Gaps.vGap5,
          Divider(color: context.colors.softGray),
          Gaps.vGap8,
          WalletPaymentWidget(shipping: shipping, controller: controller),
          Gaps.vGap10,
          Divider(color: context.colors.softGray),
          Gaps.vGap7,
          ApplyGiftCardWidget(controller: controller),
        ],
      ),
    );
  }
}
