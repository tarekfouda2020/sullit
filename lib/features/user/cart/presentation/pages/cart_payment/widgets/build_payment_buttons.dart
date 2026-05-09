part of 'cart_payment_widgets_imports.dart';
class BuildPaymentButtons extends StatelessWidget {
  final CartPaymentController controller;
  final EdgeInsets? margin;
  final void Function() onTap;
  const BuildPaymentButtons({Key? key, required this.controller, this.margin, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(
      builder: (context,isOpen) {
        return Visibility(
          visible: !isOpen,
          child: CustomBottomSafeAreaWidget(
            child: DefaultButton(
              title: tr("submitOrder"),
              margin:margin ?? Dimens.paddingAll15PX,
              onTap: onTap,
              // onTap: () =>  AutoRouter.of(context).push( CartConfirmBuyingRoute()),
            ),
          ),
        );
      }
    );
  }
}
