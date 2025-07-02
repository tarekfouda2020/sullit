part of 'cart_payment_widgets_imports.dart';
class BuildPaymentButtons extends StatelessWidget {
  final CartPaymentController controller;
  final EdgeInsets? margin;
  const BuildPaymentButtons({Key? key, required this.controller, this.margin}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
      title: tr("submitOrder"),
      margin:margin ?? Dimens.paddingAll15PX,
      // onTap: () => controller.createOrder(context),
      onTap: () =>  AutoRouter.of(context).push( CartConfirmBuyingRoute()),
    );
  }
}
