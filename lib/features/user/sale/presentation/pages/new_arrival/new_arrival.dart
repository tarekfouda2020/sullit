part of 'new_arrival_imports.dart';

class NewArrival extends StatefulWidget {
  const NewArrival({Key? key}) : super(key: key);

  @override
  State<NewArrival> createState() => _NewArrivalState();
}

class _NewArrivalState extends State<NewArrival> {
  late NewArrivalController controller;

  @override
  void initState() {
    controller = NewArrivalController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15,right: 15,top: 10,bottom: 8),
            child: CustomSearchFiledWidget(
              txtController: controller.searchFieldCtr,
              onPressSearch: () =>controller.onPressSearch(context),
              onChange: (value) => controller.whileWriting(value) ,
              onPressClear: () => controller.callProductsSearch(),
              height: Dimens.dp50,
              hint: tr("search_in_offers"),
            ),
          ),
          Expanded(
            child: CustomRefreshIndicatorWidget(
              onRefresh: () async => await controller.getArrival(1),
              child: GridViewPagination<Product>(
                pagingController: controller.arrivalPagingController,
                padding: EdgeInsets.only(
                  left: 15, right: 15,  top: 10,
                    bottom: MediaQuery.paddingOf(context).bottom + 30
                ),
                onRefresh: () async => controller.arrivalPagingController.refresh(),
                firstPageProgressIndicatorBuilder: (_) => const BuildLoadingProductsGridView(),
                showNewPageProgressIndicatorAsGridChild: false,
                noItemsFoundIndicatorBuilder: (context) => const BuildEmptyDataView(),
                itemBuilder: (_, item, index) => BuildProductItem(
                  productModel: item,
                  onFavRefresh: () => controller.onChangeFav(item),
                  onRefresh: () => controller.getArrival(controller.currentPage),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
