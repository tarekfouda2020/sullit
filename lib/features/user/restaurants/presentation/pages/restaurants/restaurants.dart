part of 'restaurants_imports.dart';

class Restaurants extends StatefulWidget {
  const Restaurants({super.key});

  @override
  State<Restaurants> createState() => _RestaurantsState();
}

class _RestaurantsState extends State<Restaurants> {
  final RestaurantController controller = RestaurantController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: DefaultAppBar(
        title: tr("Restaurants"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        child: Column(
          children: [
            CustomSearchFiledWidget(
              txtController: controller.searchController,
              onPressSearch: () => controller.getRestaurants(1),
              onChange: (value) => controller.whileWriting(value),
              onPressClear: () => controller.clearSearchField(),
              hint: "Search for Restaurant...",
              height: 50,
            ),
            Gaps.vGap16,
            Expanded(
              child: CustomRefreshIndicatorWidget(
                onRefresh: () => controller.getRestaurants(1),
                child: PagedListView<int, ShopCardDomainModel>(
                  pagingController: controller.pagingController,
                  builderDelegate: PagedChildBuilderDelegate<ShopCardDomainModel>(
                    itemBuilder: (_, item, index) {
                      return RestaurantItemWidget(
                        shop: item,
                      );
                    },
                    firstPageProgressIndicatorBuilder: (_) => const PharmacyListShimmer(),
                    noItemsFoundIndicatorBuilder: (_) => const BuildEmptyDataView(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
