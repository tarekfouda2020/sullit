part of 'brand_details_imports.dart';

class BrandDetails extends StatefulWidget {
  final int brandId;
  final String brandName;

  const BrandDetails({Key? key, required this.brandId, required this.brandName}) : super(key: key);

  @override
  State<BrandDetails> createState() => _BrandDetailsState();
}

class _BrandDetailsState extends State<BrandDetails> {
  late BrandDetailsController controller;

  @override
  void initState() {
    controller = BrandDetailsController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(title: "${tr('brand')} ${widget.brandName}", showBack: true),
      backgroundColor: context.colors.customBackground,
      body: GenericListView(
        type: ListViewType.gridApi,
        onRefresh: controller.getBrandProducts,
        params: [context, widget.brandId],
        cubit: controller.productsBloc,
        runSpacing: 15.r,
        spacing: 15.r,
        gridCrossCount: 2,
        gridItemHeight: 220.spMin,
        padding: Dimens.paddingAll15PX,
        itemBuilder: (_, index, item) => BuildProductItem(
          productModel: item,
          onFavRefresh: () => controller.onChangeFav(item),
          onRefresh: () => controller.getBrandProducts(context, widget.brandId),
        ),
        loadingWidget: const BuildLoadingProductsGridView(),
        emptyWidget: const BuildEmptyDataView(),
      ),
    );
  }
}
