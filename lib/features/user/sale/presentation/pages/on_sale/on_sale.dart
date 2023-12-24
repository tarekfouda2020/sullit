part of 'on_sale_imports.dart';

class OnSale extends StatefulWidget {
  const OnSale({Key? key}) : super(key: key);

  @override
  State<OnSale> createState() => _OnSaleState();
}

class _OnSaleState extends State<OnSale> {
  late OnSaleController controller;

  @override
  void initState() {
    controller = OnSaleController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GenericListView(
        type: ListViewType.gridApi,
        onRefresh: controller.getOnSale,
        cubit: controller.onSaleCubit,
        runSpacing: 15.r,
        spacing: 15.r,
        gridCrossCount: 2,
        gridItemHeight: 220.spMin,
        padding: Dimens.paddingAll15PX,
        itemBuilder: (_, index, item) => BuildProductItem(
          productModel: item,
          onFavRefresh: () => controller.onChangeFav(item),
        ),
        loadingWidget: const BuildLoadingProductsGridView(),
        emptyWidget: const BuildEmptyDataView(),
      ),
    );
  }
}
