part of 'best_rated_imports.dart';

class BestRated extends StatefulWidget {
  const BestRated({Key? key}) : super(key: key);

  @override
  State<BestRated> createState() => _BestRatedState();
}

class _BestRatedState extends State<BestRated> {
  late BestRatedController controller;

  @override
  void initState() {
    controller = BestRatedController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      body: Column(
        children: [
          // Gaps.vGap10,
          // Padding(
          //   padding: const EdgeInsets.only(left: 15,right: 15,top: 10,bottom: 8),
          //   child: CustomSearchFiledWidget(
          //     txtController: controller.searchFieldCtr,
          //     onPressSearch: () =>controller.onPressSearch(context),
          //     onChange: (value) => controller.whileWriting(value) ,
          //     height: Dimens.dp50,
          //   ),
          // ),
          Expanded(
            child: CustomRefreshIndicatorWidget(
              onRefresh: () async => await controller.getBestRated(1),
              child: GridViewPagination<Product>(
                padding: EdgeInsets.only(
                    left: 15, right: 15, top: 10,
                    bottom: MediaQuery.paddingOf(context).bottom + 30
                ),
                pagingController: controller.bestRatedPagingController,
                onRefresh: () async =>
                    controller.bestRatedPagingController.refresh(),
                firstPageProgressIndicatorBuilder: (_) => const BuildLoadingProductsGridView(),
                showNewPageProgressIndicatorAsGridChild: false,
                noItemsFoundIndicatorBuilder: (context) =>
                    const BuildEmptyDataView(),
                itemBuilder: (_, item, index) => BuildProductItem(
                  productModel: item,
                  onFavRefresh: () => controller.onChangeFav(item),
                  onRefresh: () => controller.getBestRated(1),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
