part of 'cart_payment_widgets_imports.dart';
class BuildPaymentButtons extends StatelessWidget {
  final CartPaymentController controller;
  const BuildPaymentButtons({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
      title: tr("submitOrder"),
      margin: Dimens.paddingAll15PX,
      onTap: () =>controller.createOrder(context),
    );
    // return Container(
    //   decoration: CustomDecoration(),
    //   padding:Dimens.paddingAll15PX,
    //   child: Row(
    //     children: [
    //       Expanded(
    //         child: DefaultButton(
    //           title: tr('returnToShop'),
    //           borderColor: context.colors.primary,
    //           textColor: context.colors.primary,
    //           color: context.colors.white,
    //           onTap: () =>AutoRouter.of(context).push(HomeRoute(index: 0)),
    //         ),
    //       ),
    //       Expanded(
    //         child: DefaultButton(
    //           title: tr("completeOrder"),
    //           color: context.colors.primary,
    //           onTap: () => controller.createOrder(context),
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }
}
