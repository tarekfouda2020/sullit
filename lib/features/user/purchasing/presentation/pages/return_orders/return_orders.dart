part of 'return_orders_imports.dart';

class ReturnOrders extends StatefulWidget {
  const ReturnOrders({Key? key}) : super(key: key);

  @override
  State<ReturnOrders> createState() => _ReturnOrdersState();
}

class _ReturnOrdersState extends State<ReturnOrders> {
  late ReturnOrdersController controller;

  @override
  void initState() {
    controller = ReturnOrdersController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: DefaultAppBar(title: tr('returnedOrders'), showBack: true),
      body: RefreshIndicator(
        onRefresh: () => controller.getReturnOrders(1),
        child: PagedListView<int, Orders>(
          padding: Dimens.paddingAll15PX,
          pagingController: controller.pagingController,
          builderDelegate: PagedChildBuilderDelegate<Orders>(
            firstPageProgressIndicatorBuilder: (_) => const BuildLoadingOrders(),
            itemBuilder: (_, item, index) => ReturnOrdersItemWidget(order: item,controller: controller),
            noItemsFoundIndicatorBuilder: (cxt) {
              return const BuildEmptyDataImage();
            },
          ),
        ),
      ),
    );
  }
}
