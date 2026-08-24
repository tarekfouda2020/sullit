part of 'restaurant_check_out_widgets_imports.dart';

class RestaurantPaymentOptionsWidget extends StatelessWidget {
  final RestaurantCheckOutController controller;
  final Shipping shipping;
  const RestaurantPaymentOptionsWidget(
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
          RestaurantPayOptionWidget(controller: controller),
          Gaps.vGap5,
          Divider(color: context.colors.softGray),
          Gaps.vGap8,
          RestaurantWalletPaymentWidget(shipping: shipping, controller: controller),
          Gaps.vGap10,
          if (!context.isShareHolder) ...[
            Divider(color: context.colors.softGray),
            Gaps.vGap7,
            RestaurantApplyGiftCardWidget(controller: controller),
          ]

        ],
      ),
    );
  }
}
