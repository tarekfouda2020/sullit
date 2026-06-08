part of 'my_orders_imports.dart';

class MyOrders extends StatefulWidget {
  const MyOrders({super.key});

  @override
  State<MyOrders> createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  final MyOrdersController controller = MyOrdersController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: DefaultAppBar(
        title: tr("my_orders"),
      ),
      body: CustomRefreshIndicatorWidget(
        onRefresh: () => controller.getPurchasingHistory(1),
        child: PagedListView<int, Orders>(
          padding: Dimens.paddingAll15PX,
          pagingController: controller.pagingController,
          builderDelegate: PagedChildBuilderDelegate<Orders>(
            firstPageProgressIndicatorBuilder: (_) =>
                const BuildLoadingOrders(),
            itemBuilder: (_, item, index) => MyOrderItemWidget(
              order: item,
              controller: controller,
            ),
            noItemsFoundIndicatorBuilder: (cxt) {
              return const BuildEmptyDataImage();
            },
          ),
        ),
      ),
    );
  }
}
