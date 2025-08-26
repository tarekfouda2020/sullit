part of 'search_widgets_imports.dart';

class BuildProductSuggestItem extends StatelessWidget {
  final Product productModel;

  const BuildProductSuggestItem({super.key, required this.productModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => AutoRouter.of(context).push(
        ProductDetailsRoute(
          productId: productModel.id!,
          isResale: productModel.isResale!,
        ),
      ),
      child: Container(
        margin: Dimens.cardMargin,
        padding: Dimens.paddingVertical8PX,
        decoration: const CustomDecoration(),
        child: ListTile(
          leading: CachedImage(
            url: productModel.images?.first ?? "",
            height: 65.r,
            width: 65.r,
            fit: BoxFit.fill,
          ),
          title: Text(
            productModel.name ?? "",
            style: AppTextStyle.s15_w500(color: context.colors.black),
          ),
          subtitle: Text(
            productModel.priceHighLow.parseCurrency,
            style: AppTextStyle.s15_w700(color: context.colors.primary),
          ),
        ),
      ),
    );
  }
}
