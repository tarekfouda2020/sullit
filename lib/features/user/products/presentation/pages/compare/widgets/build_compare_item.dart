part of 'compare_widgets_imports.dart';

class BuildCompareItem extends StatelessWidget {
  final Product productModel;
  final CompareController controller;

  const BuildCompareItem(
      {super.key, required this.productModel, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: CustomDecoration(),
      padding: Dimens.paddingAll15PX,
      margin: Dimens.paddingVertical5PX,
      child: Row(
        children: [
          CachedImage(
            url: productModel.images?.first ?? "",
            height: 70.r,
            width: 70.r,
            fit: BoxFit.fill,
            borderRadius: Dimens.borderRadius5PX,
          ),
          Gaps.hGap15,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productModel.name ?? "",
                  style: AppTextStyle.s15_w700(color: context.colors.black),
                ),
                Gaps.vGap5,
                BuildHeaderText(
                  text: "Price : ",
                  details: "${productModel.priceHighLow}",
                  detailsColor: context.colors.primary,
                ),
                BuildHeaderText(
                  text: "Brand : ",
                  details: "${productModel.brandName}",
                ),
                BuildHeaderText(
                  text: "Category : ",
                  details: "${productModel.categoryName}",
                ),
              ],
            ),
          ),
          Column(
            children: [
              BuildIconItem(
                iconData: productModel.isWishlist!
                    ? Icons.favorite
                    : Icons.favorite_border,
                containerColor: productModel.isWishlist!
                    ? context.colors.primary
                    : context.colors.white,
                onTap: () => ProductsHelper().toggleFavourite(
                  id: productModel.id!,
                  context: context,
                  onRefresh: () => controller.onFavChanged(productModel),
                ),
                checkValue: productModel.isWishlist,
                padding: Dimens.paddingAll5PX,
              ),
              BuildIconItem(
                iconData: Icons.shopping_cart,
                onTap: () => getIt<AddToCartHelper>().addToCartDialog(
                  context,
                  productModel,
                ),
                padding: Dimens.paddingAll5PX,
              ),
            ],
          )
        ],
      ),
    );
  }
}
