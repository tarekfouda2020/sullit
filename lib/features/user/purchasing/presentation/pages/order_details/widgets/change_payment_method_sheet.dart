part of 'order_details_widgets_imports.dart';

class ChangePaymentMethodSheet extends StatelessWidget {
  final OrderDetailsPageController controller;

  const ChangePaymentMethodSheet({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BottomSheetHeaderWidget(title: tr("changePaymentMethod")),
          Gaps.vGap24,
          BlocBuilder<GenericBloc<List<PaymentOption>>,
              GenericState<List<PaymentOption>>>(
            bloc: controller.paymentOptionsBloc,
            builder: (context, state) {
              if (state is GenericUpdateState) {
                return Column(
                  children: [
                    ...List.generate(state.data.length, (index) {
                      PaymentOption item = state.data[index];
                      return PayOptionItemWidget(
                        onTap: () => controller.onSelectPaymentOption(item),
                        payOption: item,
                      );
                    }),
                    Gaps.vGap20,
                    if (controller.selectedPaymentOption != null)
                      DefaultButton(
                        title: tr("confirm"),
                        margin: EdgeInsets.zero,
                        onTap: () =>
                            controller.confirmChangePaymentMethod(context),
                      )
                  ],
                );
              }
              return const Center(child: CircularProgressIndicator());
            },
          ),
        ],
      ),
    );
  }
}
