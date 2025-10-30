part of 'delivery_widgets_imports.dart';

class BuildDeliveryButtons extends StatelessWidget {
  final DeliveryController controller ;

  const BuildDeliveryButtons({Key? key, required this.controller,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.colors.cartBg,
        boxShadow: [
          BoxShadow(
            color: context.colors.greyWhite,
            blurRadius: 1,
            spreadRadius: 1,
          )
        ],
      ),
      padding:Dimens.paddingAll15PX,
      child : Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          DefaultButton(
            title: tr('conToPay'),
            color: context.colors.primary,
            onTap: ()=> controller.onPresContinue(context),
            margin: const EdgeInsets.only(bottom: 15),
          ),
          DefaultButton(
            title: tr("returnToShop"),
            borderColor: context.colors.primary,
            textColor: context.colors.primary,
            color: context.colors.white,
            onTap: () => AutoRouter.of(context).push(HomeRoute(index: 0)),
            margin: EdgeInsets.zero,
          ),
        ],
      ),
      // child: Row(
      //   children: [
      //     Expanded(
      //       child: DefaultButton(
      //         title: tr("returnToShop"),
      //         borderColor: context.colors.primary,
      //         textColor: context.colors.primary,
      //         color: context.colors.white,
      //         onTap: () =>AutoRouter.of(context).push(HomeRoute(index: 0)),
      //       ),
      //     ),
      //     Expanded(
      //       child: DefaultButton(
      //         title: tr('conToPay'),
      //         color: context.colors.primary,
      //         onTap: ()=> controller.setCartStoreShipping(context),
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
