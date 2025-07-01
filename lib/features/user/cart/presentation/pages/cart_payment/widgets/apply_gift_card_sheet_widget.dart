part of 'cart_payment_widgets_imports.dart';

class ApplyGiftCardSheet extends StatelessWidget {
  final CartPaymentController controller;
  const ApplyGiftCardSheet({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 29, left: 20, right: 20, bottom: 10),
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
           Text("Gift Card Code",
            style: AppTextStyle.s16_w600(color: context.colors.black),
           ),
            GiftCardCodeWidget(controller: controller),
            Gaps.vGap12,
            InvoiceSummaryWidget(
              controller: controller,
              shipping:controller.shippingBloc.state.data! ,
            giftCardTotal: controller.shippingBloc.state.data!.summary.subTotal,
              applyGiftCard: true,
            ),
            Gaps.vGap6,
            BuildConditions(controller: controller),
            Gaps.vGap18,
            BuildPaymentButtons(controller: controller,margin: EdgeInsets.zero,)
          ],
        ),
      ),
    );
  }
}
