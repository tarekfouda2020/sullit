part of 'my_orders_imports.dart';

class MyOrders extends StatefulWidget {
  final bool isPharmacy;
  const MyOrders({super.key, required this.isPharmacy});

  @override
  State<MyOrders> createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
 late final MyOrdersController controller;


  @override
  void initState() {
    super.initState();
    controller = MyOrdersController(isPharmacy: widget.isPharmacy);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: DefaultAppBar(
        title:  widget.isPharmacy
            ? "Pharmacy Orders"
            :tr("my_orders"),
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
