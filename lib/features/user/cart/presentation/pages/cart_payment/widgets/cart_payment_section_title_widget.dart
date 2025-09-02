part of 'cart_payment_widgets_imports.dart';

class CartPaymentSectionTitleWidget extends StatelessWidget {
  final String title;
  final EdgeInsetsGeometry? padding;
  const CartPaymentSectionTitleWidget({super.key, required this.title, this.padding});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: Text(title,
      style: AppTextStyle.s16_w700(color: context.colors.black),
      ),
    );
  }
}
