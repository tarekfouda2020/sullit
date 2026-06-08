part of 'all_products_search_imports.dart';

class AllProductsSearch extends StatefulWidget {
  final String searchText;
  final bool showProducts;
  const AllProductsSearch(
      {super.key, required this.searchText, required this.showProducts});

  @override
  State<AllProductsSearch> createState() => _AllProductsSearchState();
}

class _AllProductsSearchState extends State<AllProductsSearch> {
  late final AllProductsSearchController controller;

  @override
  void initState() {
    super.initState();
    controller = AllProductsSearchController(
      searchText: widget.searchText,
      showProducts: widget.showProducts,
    );
  }

  @override
  void dispose() {
    controller.pagingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        title: widget.showProducts ? tr('allProducts') : tr('allCategories'),
      ),
      body: CustomRefreshIndicatorWidget(
        onRefresh: () => controller.getSearchResults(1),
        child: PagedListView<int, dynamic>(
          padding: const EdgeInsets.symmetric(vertical: 15),
          pagingController: controller.pagingController,
          builderDelegate: PagedChildBuilderDelegate<dynamic>(
            firstPageProgressIndicatorBuilder: (_) =>
                const BuildLoadingSuggestions(),
            itemBuilder: (_, item, index) {
              if (widget.showProducts) {
                final product = item as Product;
                return BuildProductSuggestItem(productModel: product);
              } else {
                final category = item as Category;
                return GestureDetector(
                  onTap: () => AutoRouter.of(context).push(
                    CategoryDetailsRoute(
                      categoryModel: category,
                    ),
                  ),
                  child: Padding(
                    padding: Dimens.standardPadding,
                    child: Text(
                      category.name.toUpperCase(),
                      style: AppTextStyle.s15_w500(color: context.colors.black),
                    ),
                  ),
                );
              }
            },
            noItemsFoundIndicatorBuilder: (context) {
              return const BuildEmptyDataImage();
            },
          ),
        ),
      ),
    );
  }
}
