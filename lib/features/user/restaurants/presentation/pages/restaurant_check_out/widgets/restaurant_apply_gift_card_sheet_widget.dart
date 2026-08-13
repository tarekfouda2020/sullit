part of 'restaurant_check_out_widgets_imports.dart';

class RestaurantApplyGiftCardSheet extends StatelessWidget {
  final RestaurantCheckOutController controller;

  const RestaurantApplyGiftCardSheet({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.viewInsetsOf(context).bottom,
      ),
      child: Container(
        padding:
            const EdgeInsets.only(top: 29, left: 20, right: 20, bottom: 20),
        margin: const EdgeInsets.only(top: kToolbarHeight),
        decoration: BoxDecoration(
          color: context.colors.customBackground,
          borderRadius: Dimens.sheetBorderRadius,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BottomSheetHeaderWidget(title: tr("applyGiftCard")),
              Gaps.vGap20,
              Text(
                tr("giftCardCode"),
                style: AppTextStyle.s16_w600(color: context.colors.black),
              ),
              RestaurantGiftCardCodeWidget(controller: controller),
              Gaps.vGap12,
              const RestaurantGiftCardAnnotationWidget(),
              Gaps.vGap17,
              BlocBuilder<GenericBloc<Shipping?>, GenericState<Shipping?>>(
                bloc: controller.shippingBloc,
                builder: (context, state) {
                  return RestaurantInvoiceSummaryWidget(
                    controller: controller,
                    shippingSummary: state.data!.summary,
                    applyGiftCard: state.data!.summary.isGiftCardApplied,
                    giftCardTotal:
                    state.data!.summary.appliedGiftCard != null
                        ? state.data!.summary.appliedGiftCard!
                        : '',
                  );
                },
              ),
              Gaps.vGap6,
              RestaurantBuildConditions(controller: controller),
              Gaps.vGap18,
              RestaurantBuildPaymentButtons(
                controller: controller,
                margin: EdgeInsets.zero,
                onTap: () => _onPressSubmit(context),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _onPressSubmit(BuildContext context) {
    if (controller.isGiftCardApplied) {
      controller.createOrder(context);
      Navigator.pop(context);
    } else {
      CustomToast.showSimpleToast(msg: tr("applyGiftCardFirst"));
    }
  }
}
