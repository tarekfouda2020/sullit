part of 'seller_products_imports.dart';

class SellerProductsPage extends StatefulWidget {
  final Shop shopModel;

  // final int shopId;
  // final String shopName;
  const SellerProductsPage({super.key, required this.shopModel});

  @override
  SellerProductsPageState createState() => SellerProductsPageState();
}

class SellerProductsPageState extends State<SellerProductsPage> {
  late SellerProductsController controller;

  @override
  void initState() {
    controller = SellerProductsController(widget.shopModel.id ?? 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: context.colors.customBackground,
        key: controller.scaffoldKey,
        drawer: SellerProductsDrawerWidget(controller: controller),
        appBar: DefaultAppBar(
          title: widget.shopModel.name ?? "",
          showBack: true,
          bgColor: context.colors.white,
          size: 45,
        ),
        body: Stack(
          children: [
            const SellerPageBackGroundWidget(),
            Column(
              children: [
                Gaps.vGap20,
                Padding(
                  padding: Dimens.paddingHorizontal20PX,
                  child:  SellerCardWidget(shop: widget.shopModel,),
                ),
                Gaps.vGap20,
                SellerPageProductsSectionWidget(controller: controller),
                Gaps.vGap12,
                 SellerPageCategoriesWidget(category: widget.shopModel.categories!, controller: controller,),
                Gaps.vGap12,
                SellerProductsSearchFieldWidget(controller: controller),
                Gaps.vGap12,
                Expanded(
                  child: CustomRefreshIndicatorWidget(
                    onRefresh: () => controller.getProducts(1),
                    child: GridViewPagination<Product>(
                      onRefresh: () async{},
                      pagingController: controller.pagingController,
                      padding: EdgeInsets.only(
                          left: 15,
                          right: 15,
                          top: 10,
                          bottom: MediaQuery.paddingOf(context).bottom + 30),
                      firstPageProgressIndicatorBuilder: (_) =>
                      const BuildLoadingProductsGridView(),
                      showNewPageProgressIndicatorAsGridChild: false,
                      noItemsFoundIndicatorBuilder: (context) =>
                      const BuildEmptyDataView(),
                      itemBuilder: (_, item, index) => BuildProductItem(
                        productModel: item,
                        showVipDiscount: item.hasVipOffer,
                        onFavRefresh: () => controller.onFavChanged(item),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  SliverGridDelegateWithFixedCrossAxisCount _buildGridDelegate() {
    return const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      childAspectRatio: 0.75,
      crossAxisSpacing: 12,
      mainAxisSpacing: 12,
    );
  }
}
