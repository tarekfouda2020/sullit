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
  late PopularProductsController controller;

  @override
  void initState() {
    controller = PopularProductsController(widget.shopModel.id ?? 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: DefaultAppBar(
        title: widget.shopModel.name ?? "",
        showBack: true,
      ),
      body: RefreshIndicator(
        onRefresh: () => controller.getProducts(1),
        child: PagedGridView<int, Product>(
          pagingController: controller.pagingController,
          padding: Dimens.paddingAll20PX,
          gridDelegate: _buildGridDelegate(),
          builderDelegate: PagedChildBuilderDelegate(
            itemBuilder: (context, item, index) {
              return BuildProductItem(
                productModel: item,
                onFavRefresh: () => controller.onFavChanged(item),
              );
            },
            firstPageProgressIndicatorBuilder: (context) {
              return GridView.builder(
                gridDelegate: _buildGridDelegate(),
                padding: Dimens.paddingAll20PX,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return const BuildProductItemShimmer();
                },
              );
            },
            noItemsFoundIndicatorBuilder: (cxt) {
              return Center(
                child: Text(
                  tr('noProductsHere'),
                  style: AppTextStyle.s12_w400(
                    color: context.colors.black,
                  ),
                ),
              );
            },
          ),
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
