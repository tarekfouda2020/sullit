part of 'instore_confirm_buying_widgets_imports.dart';


class InstoreConfirmBuyingProductsWidget extends StatelessWidget {
  final InstoreConfirmBuyingController controller;
  final OrderSummary orderSummary;
  const InstoreConfirmBuyingProductsWidget({super.key, required this.controller, required this.orderSummary});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(orderSummary.sectionOrders!.length, (index) {
        return InstoreOrderProductsWidget(
            controller: controller,
            order: orderSummary.sectionOrders![index]
        );
      }),
    );
  }
}
