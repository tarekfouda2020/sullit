part of 'restaurant_check_out_widgets_imports.dart';

class RestaurantCartDiscountWidget extends StatelessWidget {
  final RestaurantCheckOutController controller;
  const RestaurantCartDiscountWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RestaurantCartPaymentSectionTitleWidget(title: tr("discount")),
        Gaps.vGap9,
        Container(
          padding: const EdgeInsetsDirectional.only(top: 19, bottom: 10),
          decoration: CustomDecoration(
              myBoxShadow: const [],
              boxBorder: Border.all(color: context.colors.borderColor)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 18, end: 24),
                child: Column(
                  children: [
                    RestaurantLoyaltyDiscountWidget(controller: controller),
                    Gaps.vGap10,
                    Divider(color: context.colors.softGray),
                    Gaps.vGap7,
                    RestaurantBuildCoupon(controller: controller),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
