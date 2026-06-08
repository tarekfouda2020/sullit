part of 'pharmacy_check_out_widgets_imports.dart';

class PharmacyDeliveryInstructionsWidget extends StatelessWidget {
  final PharmacyCheckOutController controller;
  const PharmacyDeliveryInstructionsWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            PharmacyCartPaymentSectionTitleWidget(
              title: tr("delivery_instructions"),
            ),
            Text(
              tr("optional"),
              style: AppTextStyle.s12_w400(color: context.colors.black),
            )
          ],
        ),
        Gaps.vGap8,
        PharmacyDeliveryInstructionsCardWidget(
          controller: controller,
        ),
      ],
    );
  }
}
