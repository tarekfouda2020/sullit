part of 'all_products_search_imports.dart';


class AllProductsSearch extends StatefulWidget {
  final String searchText;
  final bool showProducts;
  const AllProductsSearch({super.key, required this.searchText, required this.showProducts});

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
          padding: Dimens.paddingAll15PX,
          pagingController: controller.pagingController,
          builderDelegate: PagedChildBuilderDelegate<dynamic>(
            firstPageProgressIndicatorBuilder: (_) => const BuildLoadingSuggestions(),
            itemBuilder: (_, item, index) {
              if (widget.showProducts) {
                final product = item as Product;
                return InkWell(
                  onTap: () => AutoRouter.of(context).push(
                    ProductDetailsRoute(
                      isFav: product.isWishlist!,
                      productId: product.id!,
                      isResale: product.isResale!,
                    ),
                  ),
                  child: Container(
                    margin: Dimens.cardMargin,
                    padding: Dimens.paddingVertical8PX,
                    decoration: const CustomDecoration(),
                    child: ListTile(
                      leading: CachedImage(
                        url: product.images?.first ?? "",
                        height: 65.r,
                        width: 65.r,
                        fit: BoxFit.fill,
                      ),
                      title: Text(
                        product.name ?? "",
                        style: AppTextStyle.s15_w500(color: context.colors.black),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: DirhamPrice(
                          amount: product.priceHighLow ?? "",
                          textStyle: AppTextStyle.s15_w700(color: context.colors.primary),
                        ),
                      ),
                    ),
                  ),
                );
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
