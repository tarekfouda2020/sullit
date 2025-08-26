part of 'shipping_widgets_imports.dart';

class BuildShippingButtons extends StatelessWidget {
  final ShippingController controller ;
  const BuildShippingButtons({Key? key, required this.controller}) : super(key: key);

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
      padding:  const EdgeInsets.all(Dimens.dp15),
      child : Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          DefaultButton(
            title: tr('continueToDelivery'),
            color: context.colors.primary,
            margin: const EdgeInsets.only(bottom: 20),
            onTap: () => controller.cartAddAddress(context),
          ),
          DefaultButton(
            title: tr('returnToShop'),
            borderColor: context.colors.primary,
            textColor: context.colors.primary,
            color: context.colors.white,
            margin: EdgeInsets.zero,
            onTap: () => AutoRouter.of(context).push(HomeRoute(index: 0)),
          ),
        ],
      ),
      // child: Row(
      //   children: [
      //     Expanded(
      //       child: DefaultButton(
      //         title: tr('returnToShop'),
      //         borderColor: context.colors.primary,
      //         textColor: context.colors.primary,
      //         color: context.colors.white,
      //         onTap: () => AutoRouter.of(context).push(HomeRoute(index: 0)),
      //       ),
      //     ),
      //     Expanded(
      //       child: DefaultButton(
      //         title: tr('continueToDelivery'),
      //         color: context.colors.primary,
      //         onTap: () => controller.cartAddAddress(context),
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
