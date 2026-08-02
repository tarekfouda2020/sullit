part of 'search_widgets_imports.dart';

class BuildSellersSuggestItem extends StatelessWidget {
  final SearchController controller;
  final List<ShopCardDomainModel> shop;
  final bool showSeeAll;
  const BuildSellersSuggestItem({
    super.key,
    required this.controller,
    required this.showSeeAll,
    required this.shop,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BuildSuggestHeader(
          title: tr('sellersSuggestions'),
          showSeeAll: showSeeAll,
          controller: controller,
          isProduct: false,
        ),
        Visibility(
          visible: shop.isEmpty,
          child: Container(
            padding: Dimens.paddingVertical20PX,
            alignment: Alignment.center,
            child: Text(
              tr("noSellersFound"),
              style: AppTextStyle.s15_w700(color: context.colors.black),
            ),
          ),
        ),
        ...List.generate(
          shop.length,
          (index) => GestureDetector(
            onTap: () => AutoRouter.of(context).push(SellerProductsPageRoute(shopId: shop[index].id!)),
            child: Padding(
              padding: Dimens.standardPadding,
              child: Text(
                shop[index].name!.toUpperCase(),
                style: AppTextStyle.s15_w500(color: context.colors.black),
              ),
            ),
          ),
        )
      ],
    );
  }
}
