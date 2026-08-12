part of '../instore_checkout_imports.dart';

class InstorePaymentButtonsWidget extends StatelessWidget {
  final InstoreCheckoutController controller;
  final EdgeInsets? margin;
  final void Function() onTap;

  const InstorePaymentButtonsWidget({
    super.key,
    required this.controller,
    this.margin,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(
      builder: (context, isOpen) {
        return Visibility(
          visible: !isOpen,
          child: CustomBottomSafeAreaWidget(
            child: DefaultButton(
              title: tr('submitOrder'),
              margin: margin ?? Dimens.paddingAll15PX,
              onTap: onTap,
            ),
          ),
        );
      },
    );
  }
}
