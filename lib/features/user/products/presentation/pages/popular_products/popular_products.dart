part of 'popular_products_imports.dart';

class PopularProductCards extends StatefulWidget {
  final PopularProductsDomainModel popularProductCardsModel;

  const PopularProductCards({super.key, required this.popularProductCardsModel});

  @override
  _PopularProductCardsState createState() => _PopularProductCardsState();
}

class _PopularProductCardsState extends State<PopularProductCards> {
  late PopularProductCardsController controller;

  @override
  void initState() {
    controller = PopularProductCardsController(widget.popularProductCardsModel.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: DefaultAppBar(
        title: widget.popularProductCardsModel.name,
        showBack: true,
      ),
      body: CustomRefreshIndicatorWidget(
        onRefresh: () =>
            controller.getPopularProductCards(widget.popularProductCardsModel.id, 1),
        child: PagedGridView<int, ProductCard>(
          padding: Dimens.paddingAll15PX,
          shrinkWrap: true,
          pagingController: controller.pagingController,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 5.r,
            mainAxisSpacing: 15.r,
            crossAxisCount: 2,
            childAspectRatio: .9,
          ),
          builderDelegate: PagedChildBuilderDelegate<ProductCard>(
            firstPageProgressIndicatorBuilder: (_) =>
                const BuildPopularProductsLoadingView(),
            itemBuilder: (_, item, index) => BuildProductItem(
              productModel: item,
              onFavRefresh: () => controller.getPopularProductCards(
                  widget.popularProductCardsModel.id, 1),
              // onCompareRefresh: () {
              //   item.isAddedTCompare = !item.isAddedTCompare! ;
              //   controller.getPopularProductCards(widget.popularProductCardsModel.id, 1);
              // },
            ),
            noItemsFoundIndicatorBuilder: (cxt) => const BuildEmptyDataView(),
          ),
        ),
      ),
    );
  }
}
