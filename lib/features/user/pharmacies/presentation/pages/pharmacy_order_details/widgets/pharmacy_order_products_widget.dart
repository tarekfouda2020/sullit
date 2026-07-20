part of 'widgets_imports.dart';

class PharmacyOrderProductsWidget extends StatelessWidget {
  final Orders order;
  const PharmacyOrderProductsWidget({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...List.generate(order.orderDetails.length, (index) {
          OrderDetails item = order.orderDetails[index];
          return PharmacyOrderProductItemWidget(
            orderDetails: item,
          );
        }),
      ],
    );
  }
}
