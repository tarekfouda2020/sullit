part of 'pharmacy_check_out_widgets_imports.dart';

class PharmacyBuildSummaryHeader extends StatelessWidget {
  final String title;
  final String details;
  final Color? detailsColor;
  final bool useDirhamPrice;
  final bool isDiscount;
  final bool? applyDashSeperate;
  final double? vMargin;
  final void Function()? onPressInfo;
  const PharmacyBuildSummaryHeader({
    super.key,
    required this.title,
    required this.details,
    this.detailsColor,
    this.useDirhamPrice = false,
    this.isDiscount = false,
    this.applyDashSeperate = false,
    this.onPressInfo,
    this.vMargin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: vMargin ?? 8),
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                Text(
                  title,
                  style: AppTextStyle.s14_w400(color: context.colors.black),
                ),
                Gaps.hGap10,
                if (onPressInfo != null)
                  QuestionMarkInfoWidget(onPressInfo: onPressInfo!)
              ],
            ),
          ),
          if (isDiscount)
            Text(
              " - ",
              style: AppTextStyle.s14_w600(color: context.colors.primary),
            ),
          DirhamPrice(
            amount: isDiscount ? details.replaceAll("-", "") : details,
            textStyle: AppTextStyle.s14_w600(
                color: detailsColor ?? context.colors.black),
            currencyStyle: AppTextStyle.s16_w400(
                color: detailsColor ?? context.colors.black),
            currencyOffset: 0,
            showMinus: false,
            applyDashSeperate: applyDashSeperate,
          ),
        ],
      ),
    );
  }
}
