part of 'order_details_widgets_imports.dart';

class OrderINfoItemWidget extends StatelessWidget {
  final String title;
  final String describe;
  final Widget gaps;
  const OrderINfoItemWidget({super.key, required this.title, required this.describe, required this.gaps});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "$title:",
          style: AppTextStyle.s14_w400(color: context.colors.black),
        ),
        gaps,
        Text(
          describe,
          style: AppTextStyle.s14_w600(color: context.colors.black),
        ),
      ],
    );
  }
}
