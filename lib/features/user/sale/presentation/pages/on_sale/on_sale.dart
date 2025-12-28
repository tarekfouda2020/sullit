part of 'on_sale_imports.dart';

class OnSale extends StatefulWidget {
  final HomeController homeController;

  const OnSale({super.key, required this.homeController});

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
      backgroundColor: context.colors.customBackground,
      // appBar: BuildHomeAppBar(homeController: widget.homeController),
      body: Column(
        children: [
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
              onRefresh: () async => await controller.getOnSale(1),
              child: GridViewPagination<Product>(
                pagingController: controller.onSalePagingController,
                onRefresh: () async =>
                    controller.onSalePagingController.refresh(),
                firstPageProgressIndicatorBuilder: (_) =>
                const BuildLoadingProductsGridView(),
                showNewPageProgressIndicatorAsGridChild: false,
                noItemsFoundIndicatorBuilder: (context) =>
                const BuildEmptyDataView(),
                itemBuilder: (_, item, index) =>
                    BuildProductItem(
                      productModel: item,
                      showVipDiscount: item.hasVipOffer,
                      onFavRefresh: () => controller.onChangeFav(item),
                      onRefresh: () => controller.getOnSale(1),
                    ),
              ),
            ),
          ),
          Gaps.vGap(120)
        ],
      ),
    );
  }
}
