part of 'restaurant_check_out_widgets_imports.dart';

class RestaurantBuildPaymentButtons extends StatelessWidget {
  final RestaurantCheckOutController controller;
  final EdgeInsets? margin;
  final void Function() onTap;
  const RestaurantBuildPaymentButtons(
      {Key? key, required this.controller, this.margin, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(builder: (context, isOpen) {
      return Visibility(
        visible: !isOpen,
        child: CustomBottomSafeAreaWidget(
          child: DefaultButton(
            title: "Confirm Order",
            color: context.colors.green,
            margin: margin ?? Dimens.paddingAll15PX,
            onTap: onTap,
            // onTap: () =>  AutoRouter.of(context).push( CartConfirmBuyingRoute()),
          ),
        ),
      );
    });
  }
}
