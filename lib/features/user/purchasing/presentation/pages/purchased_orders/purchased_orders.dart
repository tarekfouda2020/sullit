part of 'purchased_orders_imports.dart';


class PurchasedOrders extends StatefulWidget {
  const PurchasedOrders({super.key});

  @override
  State<PurchasedOrders> createState() => _PurchasedOrdersState();
}

class _PurchasedOrdersState extends State<PurchasedOrders> {


  final PurchasedOrdersController controller = PurchasedOrdersController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: DefaultAppBar(title: tr("purchasedOrders"),),
      body: RefreshIndicator(
        onRefresh: () => controller.getPurchasingHistory(1),
        child: PagedListView<int, Orders>(
          padding: Dimens.paddingAll15PX,
          pagingController: controller.pagingController,
          builderDelegate: PagedChildBuilderDelegate<Orders>(
            firstPageProgressIndicatorBuilder: (_) =>
            const BuildLoadingOrders(),
            itemBuilder: (_, item, index) => PurchasedOrderItemWidget(
              order: item,
              controller: controller,
            ),
            noItemsFoundIndicatorBuilder: (cxt) {
              return const BuildEmptyDataImage();
            },
          ),
        ),
      ) ,
    );
  }
}
