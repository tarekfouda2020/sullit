part of 'delivery_widgets_imports.dart';

class BuildDeliveryButtons extends StatelessWidget {
  final DeliveryController controller ;

  const BuildDeliveryButtons({Key? key, required this.controller,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: CustomDecoration(),
      padding:Dimens.paddingAll15PX,
      child: Row(
        children: [
          Expanded(
            child: DefaultButton(
              title: "Return to shop",
              borderColor: context.colors.primary,
              textColor: context.colors.primary,
              color: context.colors.white,
              onTap: () =>AutoRouter.of(context).push(HomeRoute(index: 0)),
            ),
          ),
          Expanded(
            child: DefaultButton(
              title: "Continue to Payment",
              color: context.colors.primary,
              onTap: ()=> controller.setCartStoreShipping(context),
            ),
          ),
        ],
      ),
    );
  }
}
