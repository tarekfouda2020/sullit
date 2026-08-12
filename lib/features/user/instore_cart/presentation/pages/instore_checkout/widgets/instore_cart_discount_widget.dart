part of '../instore_checkout_imports.dart';

class InstoreCartDiscountWidget extends StatelessWidget {
  final InstoreCheckoutController controller;

  const InstoreCartDiscountWidget({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InstoreCheckoutSectionTitleWidget(title: tr('discount')),
        Gaps.vGap9,
        Container(
          padding: const EdgeInsetsDirectional.only(top: 19, bottom: 10),
          decoration: CustomDecoration(
            myBoxShadow: const [],
            boxBorder: Border.all(color: context.colors.borderColor),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 18, end: 24),
                child: Column(
                  children: [
                    InstoreLoyaltyDiscountWidget(controller: controller),
                    Gaps.vGap10,
                    Divider(color: context.colors.softGray),
                    Gaps.vGap7,
                    InstoreCouponWidget(controller: controller),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
