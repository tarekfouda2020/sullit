part of 'restaurant_check_out_widgets_imports.dart';

class RestaurantPaymentMethodBottomSheetWidget extends StatelessWidget {
  final RestaurantCheckOutController controller;

  const RestaurantPaymentMethodBottomSheetWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 29, left: 20, right: 20, bottom: 10),
      decoration: BoxDecoration(
        color: context.colors.customBackground,
        borderRadius: Dimens.sheetBorderRadius,
      ),
      child: BlocBuilder<GenericBloc<List<PaymentOption>>, GenericState<List<PaymentOption>>>(
        bloc: controller.paymentOptionsBloc,
        builder: (context, state) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              BottomSheetHeaderWidget(title: tr("paymentMethods")),
              Gaps.vGap23,
              ...List.generate(
                  state.data.length,
                  (index) {
                PaymentOption payOption = state.data[index];
                return Visibility(
                  visible: payOption.getPaymentType() != PayTypeEnum.wallet,
                  child: PayOptionItemWidget(
                    onTap: () => controller.onChangePayment(payOption, index),
                    payOption: payOption,
                  ),
                );
              }),
              Gaps.vGap25,
              DefaultButton(
                title: tr("confirm"),
                margin: EdgeInsets.zero,
                onTap: () => controller.confirmSelectPayMethod(context),
              ),
              Gaps.vGap10
            ],
          );
        },
      ),
    );
  }
}
