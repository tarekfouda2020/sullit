part of 'cart_payment_widgets_imports.dart';


class CartDiscountWidget extends StatelessWidget {
  final CartPaymentController controller;
  const CartDiscountWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CartPaymentSectionTitleWidget(title: "Discount"),
        Gaps.vGap9,
        Container(
          padding: const EdgeInsetsDirectional.only(start: 18,top: 19,end: 24,bottom: 10),
          decoration: CustomDecoration(
            myBoxShadow: const [],
            boxBorder: Border.all(color: context.colors.borderColor)
          ),
          child: Column(
            children: [
              LoyaltyDiscountWidget(controller: controller),
              Gaps.vGap10,
              Divider(color: context.colors.softGray),
              Gaps.vGap7,
              BuildCoupon(controller: controller),
            ],
          ),
        )
      ],
    );
  }
}
