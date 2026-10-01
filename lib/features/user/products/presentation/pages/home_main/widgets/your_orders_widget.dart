part of 'home_main_widgets_imports.dart';

class YourOrdersWidget extends StatelessWidget {
  final HomeMainController controller;
  final List<ProductCard> recentlyOrderedProducts;

  const YourOrdersWidget({
    super.key,
    required this.controller,
    required this.recentlyOrderedProducts,
  });

  @override
  Widget build(BuildContext context) {
    if (recentlyOrderedProducts.isEmpty) {
      return const SizedBox.shrink();
    }
    return SizedBox(
      height: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BuildHeaderTitle(
            title: tr('Based on your orders'),
            onTap: () {
              // controller.changeCouponsTab(
              //   SaleTabType.newArrival,
              //   context,
              // );
              // controller.homeController.animateTabsPages(
              //   3,
              //   context,
              // );
            },
          ),
          Gaps.vGap8,
          Flexible(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: recentlyOrderedProducts.length,
              itemBuilder: (context, index) {
                return BuildProductItem(
                  margin: EdgeInsetsDirectional.only(
                    end: index == recentlyOrderedProducts.length - 1 ? 0 : 8,
                  ),
                  productModel: recentlyOrderedProducts[index],
                  onFavRefresh: () => controller.onChangeArrivalOffersFav(
                    recentlyOrderedProducts[index],
                  ),
                  onRefresh: () => controller.getNewArrivalOffers(
                    refresh: true,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
