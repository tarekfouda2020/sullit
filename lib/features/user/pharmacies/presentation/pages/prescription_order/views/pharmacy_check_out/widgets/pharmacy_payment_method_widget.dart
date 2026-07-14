part of 'pharmacy_check_out_widgets_imports.dart';

class PharmacyPaymentMethodWidget extends StatelessWidget {
  final PharmacyCheckOutController controller;
  final Shipping shipping;
  const PharmacyPaymentMethodWidget(
      {super.key, required this.controller, required this.shipping});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PharmacyCartPaymentSectionTitleWidget(title: tr("paymentMethod")),
        Gaps.vGap12,
        PharmacyPaymentOptionsWidget(controller: controller, shipping: shipping),
      ],
    );
  }
}
