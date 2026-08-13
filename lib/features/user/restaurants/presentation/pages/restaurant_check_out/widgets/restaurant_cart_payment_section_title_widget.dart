part of 'restaurant_check_out_widgets_imports.dart';

class RestaurantCartPaymentSectionTitleWidget extends StatelessWidget {
  final String title;
  final EdgeInsetsGeometry? padding;
  const RestaurantCartPaymentSectionTitleWidget(
      {super.key, required this.title, this.padding});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: Text(
        title,
        style: AppTextStyle.s16_w700(color: context.colors.black),
      ),
    );
  }
}
