part of 'brand_details_imports.dart';

class BrandDetails extends StatefulWidget {
  final int brandId;
  final String brandName;

  const BrandDetails({Key? key, required this.brandId, required this.brandName})
      : super(key: key);

  @override
  State<BrandDetails> createState() => _BrandDetailsState();
}

class _BrandDetailsState extends State<BrandDetails> {
  late final BrandDetailsController controller;

  @override
  void initState() {
    controller = BrandDetailsController(context, widget.brandId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
          title: "${tr('brand')} ${widget.brandName}", showBack: true),
      backgroundColor: context.colors.customBackground,
      body: CustomRefreshIndicatorWidget(
        onRefresh: () async =>
            await controller.getBrandProducts(context, widget.brandId, 1),
        child: GridViewPagination<ProductCard>(
          pagingController: controller.productsPagingController,
          onRefresh: () async => controller.productsPagingController.refresh(),
          firstPageProgressIndicatorBuilder: (_) =>
              const BuildLoadingCatsProducts(),
          showNewPageProgressIndicatorAsGridChild: false,
          noItemsFoundIndicatorBuilder: (context) => const BuildEmptyDataView(),
          itemBuilder: (_, item, index) => BuildProductItem(
            productModel: item,
            onFavRefresh: () => controller.onChangeFav(item),
          ),
        ),
      ),
    );
  }
}
