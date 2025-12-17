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
                  child: const SellerCardWidget(),
                ),
                Gaps.vGap20,
                SellerPageProductsSectionWidget(controller: controller),
                Gaps.vGap12,
                const SellerPageCategoriesWidget(),
                Gaps.vGap12,
                SellerProductsSearchFieldWidget(controller: controller),
                Gaps.vGap12,
                Expanded(
                  child: CustomRefreshIndicatorWidget(
                    onRefresh: () => controller.getProducts(1),
                    child: PagedGridView<int, Product>(
                      pagingController: controller.pagingController,
                      padding: Dimens.paddingHorizontal20PX,
                      gridDelegate: _buildGridDelegate(),
                      builderDelegate: PagedChildBuilderDelegate(
                        itemBuilder: (context, item, index) {
                          return BuildProductItem(
                            productModel: item,
                            onFavRefresh: () => controller.onFavChanged(item),
                          );
                        },
                        firstPageProgressIndicatorBuilder: (context) {
                          return SizedBox(
                            height: MediaQuery.sizeOf(context).height,
                            child: GridView.builder(
                              gridDelegate: _buildGridDelegate(),
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: 6,
                              itemBuilder: (context, index) {
                                return const BuildProductItemShimmer();
                              },
                            ),
                          );
                        },
                        noItemsFoundIndicatorBuilder: (cxt) => const BuildEmptyDataView(),
                        newPageProgressIndicatorBuilder: (context) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: CircularProgressIndicator(
                                  backgroundColor: context.colors.white,
                                ),
                              ),
                            ],
                          );
                        },
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
