part of 'order_summary_widgets_imports.dart';

class BuildOrderProducts extends StatelessWidget {
  final Orders orderModel;
  final OrderSummaryController controller;

  const BuildOrderProducts(
      {super.key, required this.orderModel, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Dimens.paddingAll10PX,
      margin: Dimens.paddingVertical5PX,
      decoration: const CustomDecoration(),
      child: Column(
        children: List.generate(
          orderModel.orderDetails.length,
          (index) => BuildOrderProductItem(
            orderDetails: orderModel.orderDetails[index],
            productLength: orderModel.orderDetails.length,
            controller: controller,
          ),
        ),
      ),
    );
  }
}
