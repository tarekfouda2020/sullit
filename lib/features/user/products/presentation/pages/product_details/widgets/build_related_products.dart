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
          height: 270.spMin,
          padding: Dimens.paddingAll8PX,
          margin: Dimens.standardPadding,
          decoration: BoxDecoration(
            borderRadius: Dimens.borderRadius5PX,
            color: context.colors.white,
            boxShadow: [
              BoxShadow(
                color: context.colors.greyWhite,
                blurRadius: 1,
                spreadRadius: 1,
              )
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gaps.vGap10,
              Text(
                "Related Products",
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
                          onCompareRefresh: () {
                            relatedProducts[index].isAddedTCompare = !relatedProducts[index].isAddedTCompare!;
                            controller.detailsCubit.onUpdateData(controller.detailsCubit.state.data);
                          },
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
