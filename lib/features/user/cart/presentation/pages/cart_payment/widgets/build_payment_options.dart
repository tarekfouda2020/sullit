part of 'cart_payment_widgets_imports.dart';

class BuildPaymentOptions extends StatelessWidget {
  final CartPaymentController controller;
  final List<PaymentOption> paymentOptions ;

  const BuildPaymentOptions({super.key, required this.controller, required this.paymentOptions});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: Dimens.dp15),
          child: Text(
            "Select a payment option ",
            style: AppTextStyle.s16_w800(color: context.colors.black),
          ),
        ),
        Row(
          children: List.generate(paymentOptions.length, (index) =>  BuildPaymentItem(
            img: paymentOptions[index].image,
            selected: paymentOptions[index].selected,
            onTap: () {
              for(var e in paymentOptions){
                e.selected = false ;
              }
              paymentOptions[index].selected = true;
              controller.shippingBloc.onUpdateData(controller.shippingBloc.state.data);
            }
          ),)
        ),
         BuildWalletBalance(walletBalance: controller.shippingBloc.state.data!.summary.walletBalance,),
        Gaps.vGap5,
      ],
    );
  }
}
