part of 'seller_products_imports.dart';

class SellerProductsPage extends StatefulWidget {
  final Shop shopModel;

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
        body: Stack(
          children: [
            const SellerPageBackGroundWidget(),
            CustomScrollView(
              slivers: [
                SliverAppBar(
                  backgroundColor: context.colors.white,
                  pinned: true,
                  elevation: 0,
                  automaticallyImplyLeading: true,
                  title: Text(
                    widget.shopModel.name ?? "",
                    style: AppTextStyle.s20_w700(color: context.colors.black),
                  ),
                  expandedHeight: 450,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).padding.top + kToolbarHeight, left: 16, right: 16),
                      child: SellerCardWidget(
                        shop: widget.shopModel,
                      ),
                    ),
                  ),
                  bottom: PreferredSize(
                    preferredSize: const Size.fromHeight(180),
                    child: Container(
                      color: context.colors.white,
                      child: Column(
                        children: [
                          Gaps.vGap10,
                          SellerPageProductsSectionWidget(
                            controller: controller,
                          ),
                          Gaps.vGap12,
                          SellerPageCategoriesWidget(
                            category: widget.shopModel.categories!,
                            controller: controller,
                          ),
                          Gaps.vGap12,
                          SellerProductsSearchFieldWidget(
                            controller: controller,
                          ),
                          Gaps.vGap10,
                        ],
                      ),
                    ),
                  ),
                ),

                SliverPadding(
                  padding: EdgeInsets.only(
                    left: 15,
                    right: 15,
                    top: 10,
                    bottom: MediaQuery.of(context).padding.bottom + 30,
                  ),
                  sliver: SliverGrid(
                    gridDelegate: _buildGridDelegate(),
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        final item = controller.pagingController.itemList![index];
                        return BuildProductItem(
                          productModel: item,
                          showVipDiscount: item.hasVipOffer,
                          onFavRefresh: () => controller.onFavChanged(item),
                        );
                      },
                      childCount: controller.pagingController.itemList?.length ?? 0,
                    ),
                  ),
                ),
              ],
            ),
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
