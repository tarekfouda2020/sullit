part of '../instore_checkout_imports.dart';

class InstoreApplyGiftCardSheetWidget extends StatelessWidget {
  final InstoreCheckoutController controller;

  const InstoreApplyGiftCardSheetWidget({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.viewInsetsOf(context).bottom,
      ),
      child: Container(
        padding: const EdgeInsets.only(
          top: 29,
          left: 20,
          right: 20,
          bottom: 20,
        ),
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
              BottomSheetHeaderWidget(title: tr('applyGiftCard')),
              Gaps.vGap20,
              Text(
                tr('giftCardCode'),
                style: AppTextStyle.s16_w600(color: context.colors.black),
              ),
              InstoreGiftCardCodeWidget(controller: controller),
              Gaps.vGap12,
              const InstoreGiftCardAnnotationWidget(),
              Gaps.vGap17,
              BlocBuilder<GenericBloc<InstoreOrderSummaryModel?>,
                  GenericState<InstoreOrderSummaryModel?>>(
                bloc: controller.summaryBloc,
                builder: (context, state) {
                  if (state.data == null) {
                    return const SizedBox.shrink();
                  }
                  return InstoreInvoiceSummaryWidget(
                    controller: controller,
                    showAppliedGiftCard: controller.isGiftCardApplied,
                    appliedGiftCardAmount: controller.appliedGiftCardAmount,
                  );
                },
              ),
              Gaps.vGap6,
              InstoreCheckoutConditionsWidget(controller: controller),
              Gaps.vGap18,
              InstorePaymentButtonsWidget(
                controller: controller,
                margin: EdgeInsets.zero,
                onTap: () => controller.onGiftCardSheetSubmit(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
