part of 'cart_payment_widgets_imports.dart';

class ReplacementAlertSheet extends StatelessWidget {
  const ReplacementAlertSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Dimens.paddingAll15PX,
      decoration: BoxDecoration(
          color: context.colors.white, borderRadius: Dimens.sheetBorderRadius),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const BottomSheetHeaderWidget(title: "Product Availability"),
          Gaps.vGap30,
          Text(
            "We do our best to ensure all items are in stock. However, in the rare case an item is unavailable at the time of picking your order, we want to get you what you need as quickly as possible.",
            style: AppTextStyle.s18_w700(color: context.colors.black)
                .copyWith(height: 1.5),
          ),
          Gaps.vGap30,
        ],
      ),
    );
  }
}
