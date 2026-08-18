part of 'search_widgets_imports.dart';

class BuildProductSuggestItem extends StatelessWidget {
  final ProductCard productModel;

  const BuildProductSuggestItem({super.key, required this.productModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => AutoRouter.of(context).push(
        ProductDetailsRoute(
          isFav: productModel.isWishlist,
          productId: productModel.id,
          // isResale: productModel.isResale!,
          isResale: false,
        ),
      ),
      child: Container(
        margin: Dimens.cardMargin,
        padding: Dimens.paddingVertical8PX,
        decoration: const CustomDecoration(),
        child: ListTile(
          leading: CachedImage(
            url: productModel.thumbnailImg,
            height: 65.r,
            width: 65.r,
            fit: BoxFit.fill,
          ),
          title: Text(
            productModel.name ,
            style: AppTextStyle.s15_w500(color: context.colors.black),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Row(
              children: [
                DirhamPrice(
                  amount: productModel.priceHighLowDiscount ?? "",
                  textStyle:
                      AppTextStyle.s15_w700(color: context.colors.primary),
                ),
                Gaps.hGap10,
                if (productModel.hasDiscount == true)
                  DirhamPrice(
                    amount: productModel.priceHighLow ?? "",
                    textStyle:
                        AppTextStyle.s15_w700(color: context.colors.textColor)
                            .copyWith(
                                decoration: TextDecoration.lineThrough,
                                decorationColor: context.colors.textColor),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
