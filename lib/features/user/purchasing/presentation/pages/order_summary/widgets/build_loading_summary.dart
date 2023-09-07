part of 'order_summary_widgets_imports.dart';

class BuildLoadingSummary extends StatelessWidget {
  const BuildLoadingSummary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: Dimens.paddingAll15PX,
      children: List.generate(
        3,
        (index) => Container(
          padding: Dimens.paddingAll15PX,
          margin: Dimens.paddingVertical5PX,
          decoration: CustomDecoration(),
          child: Column(
            children: [
              BuildLoadingSummaryItem(width: 80.w),
              BuildLoadingSummaryItem(width: 70.w),
              BuildLoadingSummaryItem(width: 60.w),
              BuildLoadingSummaryItem(width: 130.w),
              BuildLoadingSummaryItem(width: 120.w),
              BuildLoadingSummaryItem(width: 110.w),
              BuildLoadingSummaryItem(width: 130.w),
              BuildLoadingSummaryItem(width: 120.w),
              BuildLoadingSummaryItem(width: 110.w),
            ],
          ),
        ),
      ),
    );
  }
}
