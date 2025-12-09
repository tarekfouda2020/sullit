part of 'product_details_widgets_imports.dart';

class BuildTopSellingProducts extends StatelessWidget {
  final List<Product> topProducts;
  final ProductDetailsController controller;

  const BuildTopSellingProducts(
      {super.key, required this.topProducts, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Visibility(
        visible: topProducts.isNotEmpty,
        child: SizedBox(
          height: 280.spMin,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gaps.vGap10,
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 15),
                child: Text(
                  tr('topSelling'),
                  style: AppTextStyle.s18_w600(
                    color: context.colors.black,
                  ),
                ),
              ),
              Flexible(
                child: SingleChildScrollView(
                  padding: const EdgeInsetsDirectional.only(top: 10, bottom: 10, start: 15, end: 10),
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      topProducts.length,
                      (index) => Padding(
                        padding: Dimens.paddingHorizontal5PX,
                        child: BuildProductItem(
                          productModel: topProducts[index],
                          onFavRefresh: () => controller.onChangeFav(
                            context,
                            topProducts[index],
                          ),
                          onRefresh: () => controller.getProductDetails(context, controller.productId, resetQty: false),
                          // onCompareRefresh: () => controller.onChangeCompare(
                          //   topProducts[index],
                          // ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
