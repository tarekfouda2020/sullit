part of 'order_summary_widgets_imports.dart';

class BuildOrderButtons extends StatelessWidget {
  final Orders orderModel;
final OrderSummaryController controller;
  const BuildOrderButtons({super.key, required this.orderModel, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Visibility(
          visible: orderModel.showButtonPay,
          child: DefaultButton(
            title: tr('completePayment'),
            onTap: () =>controller.onPayOrder(context),
          ),
        ),
        Visibility(
          visible: orderModel.availableReturnOrder,
          child: DefaultButton(
            title:  tr('returnOrder'),
            onTap: () => AutoRouter.of(context)
                .push(RetrieveOrderRoute(orderModel: orderModel)),
          ),
        ),
      ],
    );
  }
}
