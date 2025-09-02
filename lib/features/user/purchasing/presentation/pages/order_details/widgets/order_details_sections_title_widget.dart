part of 'order_details_widgets_imports.dart';

class OrderDetailsSectionsTitleWidget extends StatelessWidget {
  final String title;
  const OrderDetailsSectionsTitleWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(title,
    style: AppTextStyle.s16_w600(color: context.colors.black),
    );
  }
}
