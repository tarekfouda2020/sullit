part of 'pharmacies_list_imports.dart';

class PharmaciesList extends StatefulWidget {
  const PharmaciesList({super.key});

  @override
  State<PharmaciesList> createState() => _PharmaciesListState();
}

class _PharmaciesListState extends State<PharmaciesList> {
  final PharmaciesListController controller = PharmaciesListController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: const DefaultAppBar(title: "Pharmacies"),
      body: Column(
        children: [
          Gaps.vGap10,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: CustomSearchFiledWidget(
              txtController: controller.searchController,
              onPressSearch: () => controller.getPharmacies(1),
              onChange: (value) => controller.whileWriting(value),
              onPressClear: () => controller.clearSearchField(),
              hint: "Search for Pharmacies...",
              height: 50,
            ),
          ),
          Gaps.vGap16,
          Expanded(
            child: CustomRefreshIndicatorWidget(
              onRefresh: () => controller.getPharmacies(1),
              child: PagedListView<int, Shop>(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                pagingController: controller.pagingController,
                builderDelegate: PagedChildBuilderDelegate<Shop>(
                  itemBuilder: (_, item, index) {
                    return PharmacyCardWidget(shop: item);
                  },
                  firstPageProgressIndicatorBuilder: (_) =>
                      const PharmacyListShimmer(),
                  noItemsFoundIndicatorBuilder: (_) =>
                      const BuildEmptyDataView(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
