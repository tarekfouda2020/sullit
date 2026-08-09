part of '../instore_checkout_imports.dart';

class InstoreSummaryHeaderWidget extends StatelessWidget {
  final String title;
  final String details;
  final Color? detailsColor;
  final bool isDiscount;
  final bool? applyDashSeperate;
  final double? vMargin;
  final void Function()? onPressInfo;

  const InstoreSummaryHeaderWidget({
    super.key,
    required this.title,
    required this.details,
    this.detailsColor,
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
                  InstoreQuestionMarkInfoWidget(onPressInfo: onPressInfo!),
              ],
            ),
          ),
          if (isDiscount)
            Text(
              ' - ',
              style: AppTextStyle.s14_w600(color: context.colors.primary),
            ),
          DirhamPrice(
            amount: isDiscount ? details.replaceAll('-', '') : details,
            textStyle: AppTextStyle.s14_w600(
              color: detailsColor ?? context.colors.black,
            ),
            currencyStyle: AppTextStyle.s16_w400(
              color: detailsColor ?? context.colors.black,
            ),
            currencyOffset: 0,
            showMinus: false,
            applyDashSeperate: applyDashSeperate,
          ),
        ],
      ),
    );
  }
}
