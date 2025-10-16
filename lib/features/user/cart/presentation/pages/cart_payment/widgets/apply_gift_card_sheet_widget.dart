part of 'cart_payment_widgets_imports.dart';

class ApplyGiftCardSheet extends StatelessWidget {
  final CartPaymentController controller;

  const ApplyGiftCardSheet({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Container(
        padding: const EdgeInsets.only(top: 29, left: 20, right: 20, bottom: 20),
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
              GiftCardCodeWidget(controller: controller),
              Gaps.vGap12,
              const GiftCardAnnotationWidget(),
              Gaps.vGap17,
              BlocBuilder < GenericBloc<Shipping?>,
              GenericState<Shipping?>>(
                bloc: controller.shippingBloc,
                builder: (context, state) {
                  return InvoiceSummaryWidget(
                    controller: controller,
                    shippingSummary: state.data!.summary,
                    applyGiftCard: state.data!.summary.appliedGiftCard != null,
                  );
                },
              ),
              Gaps.vGap6,
              BuildConditions(controller: controller),
              Gaps.vGap18,
              BuildPaymentButtons(
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
      if(controller.isGiftCardApplied){
      controller.createOrder(context);
    }else{
      CustomToast.showSimpleToast(msg: tr("applyGiftCardFirst"));
    }
  }
}
