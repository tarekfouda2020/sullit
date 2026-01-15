part of 'delivery_widgets_imports.dart';

class BuildDeliveryButtons extends StatelessWidget {
  final PickupTabController controller ;

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
              title: tr("returnToShop"),
              borderColor: context.colors.primary,
              textColor: context.colors.primary,
              color: context.colors.white,
              onTap: () =>AutoRouter.of(context).push(HomeRoute(index: 0)),
            ),
          ),
          Expanded(
            child: DefaultButton(
              title: tr('conToPay'),
              color: context.colors.primary,
              // onTap: ()=> controller.setCartStoreShipping(context),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
