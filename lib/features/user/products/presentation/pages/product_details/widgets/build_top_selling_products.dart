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
        child: Container(
          height: 280.spMin,
          margin: Dimens.standardPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gaps.vGap10,
              Text(
                tr('topSelling'),
                style: AppTextStyle.s18_w600(
                  color: context.colors.black,
                ),
              ),
              Flexible(
                child: SingleChildScrollView(
                  padding: Dimens.paddingVertical10PX,
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
                            topProducts[index],
                          ),
                          onCompareRefresh: () => controller.onChangeCompare(
                            topProducts[index],
                          ),
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
