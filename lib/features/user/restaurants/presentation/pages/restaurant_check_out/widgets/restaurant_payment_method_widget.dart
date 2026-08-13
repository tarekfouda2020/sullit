part of 'restaurant_check_out_widgets_imports.dart';

class RestaurantPaymentMethodWidget extends StatelessWidget {
  final RestaurantCheckOutController controller;
  final Shipping shipping;
  const RestaurantPaymentMethodWidget(
      {super.key, required this.controller, required this.shipping});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RestaurantCartPaymentSectionTitleWidget(title: tr("paymentMethod")),
        Gaps.vGap12,
        RestaurantPaymentOptionsWidget(controller: controller, shipping: shipping),
      ],
    );
  }
}
