part of 'restaurant_check_out_widgets_imports.dart';

class RestaurantDeliveryInstructionsWidget extends StatelessWidget {
  final RestaurantCheckOutController controller;
  const RestaurantDeliveryInstructionsWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            RestaurantCartPaymentSectionTitleWidget(
              title: tr("delivery_instructions"),
            ),
            Text(
              tr("optional"),
              style: AppTextStyle.s12_w400(color: context.colors.black),
            )
          ],
        ),
        Gaps.vGap8,
        RestaurantDeliveryInstructionsCardWidget(
          controller: controller,
        ),
      ],
    );
  }
}
