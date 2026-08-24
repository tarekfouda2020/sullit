part of 'my_orders_imports.dart';

class MyOrders extends StatefulWidget {
  final OrderTypeEnum type;

  const MyOrders({super.key, required this.type});

  @override
  State<MyOrders> createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
 late final MyOrdersController controller;


  @override
  void initState() {
    super.initState();
    controller = MyOrdersController(type: widget.type);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: DefaultAppBar(
        title: switch (widget.type) {
          OrderTypeEnum.pharmacy => "Pharmacy Orders",
          OrderTypeEnum.restaurant => "Restaurant Orders",
          OrderTypeEnum.general => tr("my_orders"),
        },
      ),
      body: CustomRefreshIndicatorWidget(
        onRefresh: () => controller.getPurchasingHistory(1),
        child: PagedListView<int, OrderCardDomainModel>(
          padding: Dimens.paddingAll15PX,
          pagingController: controller.pagingController,
          builderDelegate: PagedChildBuilderDelegate<OrderCardDomainModel>(
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
