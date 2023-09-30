part of 'cart_payment_widgets_imports.dart';

class BuildPaymentOptions extends StatelessWidget {
  final CartPaymentController controller;
  final Shipping shippingModel;

  const BuildPaymentOptions(
      {super.key, required this.controller, required this.shippingModel});

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
            (index) => BuildPaymentItem(
              paymentOptionModel: shippingModel.paymentOption![index],
              onTap: () => controller.onChangePayment(shippingModel, index),
            ),
          ),
        ),
        BuildWalletBalance(
          walletBalance: shippingModel.summary.walletBalance,
        ),
      ],
    );
  }
}
