part of 'home_main_widgets_imports.dart';

class ContinueShoppingWidget extends StatelessWidget {
  final HomeMainController controller;
  final List<ProductCard> recentlyViewedProducts;

  const ContinueShoppingWidget({super.key, required this.controller, required this.recentlyViewedProducts});

  @override
  Widget build(BuildContext context) {
    if (recentlyViewedProducts.isEmpty) {
      return const SizedBox.shrink();
    }
    return SizedBox(
      height: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gaps.vGap10,
          BuildHeaderTitle(
            title: tr('continueShopping'),
            onTap: () {
              // controller.changeCouponsTab(SaleTabType.newArrival, context);
              // controller.homeController.animateTabsPages(3, context);
            },
          ),
          Gaps.vGap8,
          Flexible(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: recentlyViewedProducts.length,
              itemBuilder: (context, index) {
                return BuildProductItem(
                  margin: EdgeInsetsDirectional.only(end: index == recentlyViewedProducts.length - 1 ? 0 : 8),
                  productModel: recentlyViewedProducts[index],
                  onFavRefresh: () => controller.onChangeArrivalOffersFav(recentlyViewedProducts[index]),
                  onRefresh: () => controller.getNewArrivalOffers(refresh: true),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
