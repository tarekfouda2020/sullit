part of 'product_details_widgets_imports.dart';

class BuildRelatedProducts extends StatelessWidget {
  final List<Product> relatedProducts;
final ProductDetailsController controller;
  const BuildRelatedProducts({super.key, required this.relatedProducts, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Visibility(
        visible: relatedProducts.isNotEmpty,
        child: Container(
          height: 275,
          padding: const EdgeInsets.only(left: 8,top: 8),
          margin: Dimens.standardPadding,
          decoration: const CustomDecoration(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gaps.vGap10,
              Text(
                tr('relatedProducts'),
                style: AppTextStyle.s15_w700(
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
                      relatedProducts.length,
                      (index) => Padding(
                        padding: Dimens.paddingHorizontal5PX,
                        child: BuildProductItem(
                          productModel: relatedProducts[index],
                          onFavRefresh: () => controller.onChangeFav(
                            relatedProducts[index],
                          ),
                          onCompareRefresh: () => controller.onChangeCompare(
                            relatedProducts[index],
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
