part of 'cart_payment_widgets_imports.dart';

class PaymentMethodBottomSheetWidget extends StatelessWidget {
  final CartPaymentController controller;

  const PaymentMethodBottomSheetWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 29, left: 20, right: 20, bottom: 10),
      decoration: BoxDecoration(
        color: context.colors.customBackground,
        borderRadius: Dimens.sheetBorderRadius,
      ),
      child: BlocBuilder<GenericBloc<Shipping?>, GenericState<Shipping?>>(
        bloc: controller.shippingBloc,
        builder: (context, state) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              BottomSheetHeaderWidget(title: tr("paymentMethods")),
              Gaps.vGap23,
              ...List.generate(controller.shippingBloc.state.data!.paymentOption!.length, (index) {
                PaymentOption payOption = controller.shippingBloc.state.data!.paymentOption![index];
                return Visibility(
                  visible: payOption.getPaymentType() != PayTypeEnum.wallet,
                  child: GestureDetector(
                    onTap: () => controller.onChangePayment(state.data!, index),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 17),
                      margin: const EdgeInsets.only(bottom: 12),
                      decoration: CustomDecoration(
                          myBoxShadow: const [],
                          boxBorder:
                          Border.all(
                              color: payOption.fakeSelected ? context.colors.primary : context.colors.borderColor)),
                      child: Row(
                        children: [
                          CustomRadioWidget(
                            selected: payOption.fakeSelected,
                          inActiveColor: context.colors.black,
                          ),
                          Gaps.hGap14,
                          Expanded(
                            child: Text(payOption.title, style: AppTextStyle.s14_w700(color: context.colors.black)),
                          ),
                          CachedImage(
                            url: payOption.image,
                            width: 30,
                            height: 26,
                            fit: BoxFit.contain,
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }),
              Gaps.vGap34,
              DefaultButton(
                title: tr("confirm"),
                margin: EdgeInsets.zero,
                onTap: () => controller.confirmSelectPayMethod(context),
              )
            ],
          );
        },
      ),
    );
  }
}
