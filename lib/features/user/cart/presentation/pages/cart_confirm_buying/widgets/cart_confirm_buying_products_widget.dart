part of 'cart_confirm_buying_widgets_imports.dart';

class CartConfirmBuyingProductsWidget extends StatelessWidget {
  final ConfirmBuyingController controller;
  final OrderSummaryDomainModel orderSummary;
  const CartConfirmBuyingProductsWidget(
      {super.key, required this.controller, required this.orderSummary});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(orderSummary.sectionOrders!.length, (index) {
        return CartOrderProductsWidget(
            controller: controller, order: orderSummary.sectionOrders![index]);
      }),
    );
  }
}
