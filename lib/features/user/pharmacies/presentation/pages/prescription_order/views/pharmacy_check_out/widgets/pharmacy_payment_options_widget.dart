part of 'pharmacy_check_out_widgets_imports.dart';

class PharmacyPaymentOptionsWidget extends StatelessWidget {
  final PharmacyCheckOutController controller;
  final Shipping shipping;
  const PharmacyPaymentOptionsWidget(
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
          PharmacyPayOptionWidget(controller: controller),
          Gaps.vGap5,
          Divider(color: context.colors.softGray),
          Gaps.vGap8,
          PharmacyWalletPaymentWidget(shipping: shipping, controller: controller),
          Gaps.vGap10,
          if(shipping.summary.insuranceEligible == false && shipping.summary.prescriptionRequired == false && !context.isShareHolder  )...[
            Divider(color: context.colors.softGray),
            Gaps.vGap7,
            PharmacyApplyGiftCardWidget(controller: controller),
          ]

        ],
      ),
    );
  }
}
