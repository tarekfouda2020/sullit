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
        child: SizedBox(
          height: 280.spMin,
          // margin: Dimens.standardPadding,
          // decoration: const CustomDecoration(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gaps.vGap10,
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 15),
                child: Text(
                  tr('relatedProducts'),
                  style: AppTextStyle.s18_w600(
                    color: context.colors.black,
                  ),
                ),
              ),
              Flexible(
                child: SingleChildScrollView(
                  padding: const EdgeInsetsDirectional.only(top: 10,bottom: 10,start: 15),
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      relatedProducts.length,
                      (index) => Padding(
                        padding: Dimens.paddingHorizontal5PX,
                        child: BuildProductItem(
                          productModel: relatedProducts[index],
                          onPressDelete: () => controller.getCartItems(),
                          afterAddToCart: () => controller.calculateRemainingAmount(),
                          onFavRefresh: () => controller.onChangeFav(
                            context,
                            relatedProducts[index],
                          ),
                          onCompareRefresh: () => controller.onChangeCompare(
                            relatedProducts[index],
                          ),
                          onRefresh: () => controller.getProductDetails(context, controller.productId, resetQty: false),
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
