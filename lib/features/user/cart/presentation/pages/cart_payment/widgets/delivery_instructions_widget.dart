part of 'cart_payment_widgets_imports.dart';

class DeliveryInstructionsWidget extends StatelessWidget {
  final CartPaymentController controller;
  const DeliveryInstructionsWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CartPaymentSectionTitleWidget(
              title: tr("delivery_instructions"),
            ),
            Text(
              tr("optional"),
              style: AppTextStyle.s12_w400(color: context.colors.black),
            )
          ],
        ),
        Gaps.vGap8,
        DeliveryInstructionsCardWidget(
          controller: controller,
        ),
      ],
    );
  }
}
