part of 'purchased_orders_widgets_imports.dart';

class PayCancelOrderButtonsWidget extends StatelessWidget {
  final Orders order;
  final MyOrdersController controller;
  const PayCancelOrderButtonsWidget(
      {super.key, required this.order, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        Expanded(
            child: DefaultButton(
          onTap: () => controller.onPayOrder(context, order),
          title: tr("pay"),
          height: Dimens.dp40,
          color: context.colors.white,
          margin: EdgeInsets.zero,
          textColor: context.colors.green,
          borderColor: context.colors.green,
        )),
        Expanded(
            child: DefaultButton(
          onTap: () => controller.cancelOrder(context, order),
          title: tr("cancel"),
          fontSize: Dimens.font_sp16,
          height: Dimens.dp40,
          color: context.colors.white,
          margin: EdgeInsets.zero,
          textColor: context.colors.gray8,
          borderColor: context.colors.gray8,
        ))
      ],
    );
  }
}
