part of 'order_details_widgets_imports.dart';

class OrderINfoItemWidget extends StatelessWidget {
  final String title;
  final String describe;
  final Widget gaps;
  final double? textHeight;
  const OrderINfoItemWidget({super.key, required this.title, required this.describe, required this.gaps, this.textHeight});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "$title :",
          style: AppTextStyle.s14_w400(color: context.colors.black),
        ),
        gaps,
        Expanded(
          child: Text(
            describe,
            style: AppTextStyle.s14_w600(color: context.colors.black).copyWith(
              height: textHeight
            ),
          ),
        ),
      ],
    );
  }
}
