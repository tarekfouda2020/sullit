part of 'popular_products_imports.dart';

class PopularProducts extends StatefulWidget {
  final PopularProductsDomainModel popularProductsModel;

  const PopularProducts({super.key, required this.popularProductsModel});

  @override
  _PopularProductsState createState() => _PopularProductsState();
}

class _PopularProductsState extends State<PopularProducts> {
  late PopularProductsController controller;

  @override
  void initState() {
    controller = PopularProductsController(widget.popularProductsModel.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: DefaultAppBar(
        title: widget.popularProductsModel.name,
        showBack: true,
      ),
      body: CustomRefreshIndicatorWidget(
        onRefresh: () =>
            controller.getPopularProducts(widget.popularProductsModel.id, 1),
        child: PagedGridView<int, Product>(
          padding: Dimens.paddingAll15PX,
          shrinkWrap: true,
          pagingController: controller.pagingController,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 5.r,
            mainAxisSpacing: 15.r,
            crossAxisCount: 2,
            childAspectRatio: .9,
          ),
          builderDelegate: PagedChildBuilderDelegate<Product>(
            firstPageProgressIndicatorBuilder: (_) =>
                const BuildPopularProductsLoadingView(),
            itemBuilder: (_, item, index) => BuildProductItem(
              productModel: item,
              onFavRefresh: () => controller.getPopularProducts(
                  widget.popularProductsModel.id, 1),
              // onCompareRefresh: () {
              //   item.isAddedTCompare = !item.isAddedTCompare! ;
              //   controller.getPopularProducts(widget.popularProductsModel.id, 1);
              // },
            ),
            noItemsFoundIndicatorBuilder: (cxt) => const BuildEmptyDataView(),
          ),
        ),
      ),
    );
  }
}
