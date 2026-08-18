part of 'pharmacy_check_out_widgets_imports.dart';

class PharmacyBuildPaymentOptions extends StatelessWidget {
  final PharmacyCheckOutController controller;
  final Shipping shippingModel;
 final PaymentOption paymentOption;
  const PharmacyBuildPaymentOptions(
      {super.key, required this.controller, required this.shippingModel, required this.paymentOption});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Gaps.vGap10,
        Container(
          margin: Dimens.paddingVertical15PX,
          child: Text(
            tr('selPayOption'),
            style: AppTextStyle.s16_w800(color: context.colors.black),
          ),
        ),
        Row(
          children: List.generate(
            shippingModel.paymentOption!.length,
            (index) => PharmacyBuildPaymentItem(
              paymentOptionModel: paymentOption,
              onTap: () => controller.onChangePayment(paymentOption, index),
            ),
          ),
        ),
        PharmacyBuildWalletBalance(
          walletBalance: shippingModel.summary.walletBalance,
        ),
      ],
    );
  }
}
