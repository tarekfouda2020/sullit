part of 'purchased_orders_imports.dart';


class PurchasedOrders extends StatefulWidget {
  const PurchasedOrders({super.key});

  @override
  State<PurchasedOrders> createState() => _PurchasedOrdersState();
}

class _PurchasedOrdersState extends State<PurchasedOrders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: const DefaultAppBar(title: "Purchased Orders",),
      body: ListView.builder(
        padding: Dimens.paddingHorizontal20PX,
        itemCount: 4,
        itemBuilder: (context, index) {
        return const PurchasedOrderItemWidget();
      },) ,
    );
  }
}
