part of 'cart_payment_widgets_imports.dart';

class BuildSummaryHeader extends StatelessWidget {
  final String title;
  final String details;
  final Color? detailsColor;

  const BuildSummaryHeader({
    super.key,
    required this.title,
    required this.details,
     this.detailsColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: AppTextStyle.s14_w400(color: context.colors.black),
          ),
          Text(
            details,
            style: AppTextStyle.s14_w600(color: detailsColor ?? context.colors.black),
          ),
        ],
      ),
    );
  }
}
