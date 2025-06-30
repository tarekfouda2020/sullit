part of 'cart_payment_widgets_imports.dart';

class CartPaymentSectionTitleWidget extends StatelessWidget {
  final String title;
  const CartPaymentSectionTitleWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(title,
    style: AppTextStyle.s16_w700(color: context.colors.black),
    );
  }
}
