part of 'cart_widgets_imports.dart';

class BuildCartButtons extends StatelessWidget {
  final CartDomainModel cartModel;
  final CartController controller;

  const BuildCartButtons(
      {super.key, required this.cartModel, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: cartModel.items!.isNotEmpty,
      child: Container(
        decoration: CustomDecoration(),
        padding:Dimens.paddingAll15PX,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            BuildTotalCost(
              price: cartModel.calculableTotal!,
              currency: cartModel.currencySymbol ?? "",
            ),
            Row(
              children: [
                Expanded(
                  child: DefaultButton(
                    title: "Return to shop",
                    borderColor: context.colors.primary,
                    textColor: context.colors.primary,
                    color: context.colors.white,
                    onTap: () => AutoRouter.of(context).push(HomeRoute(index: 0)),
                  ),
                ),
                Expanded(
                  child: DefaultButton(
                    title: "Continue to shipping",
                    color: context.colors.primary,
                    onTap: () => controller.navigateToShipping(context),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
