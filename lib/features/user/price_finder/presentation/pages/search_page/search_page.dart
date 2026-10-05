part of 'search_imports.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final SearchPriceController controller = SearchPriceController();

  @override
  void initState() {
    super.initState();

    controller.getPopularProducts(1);
  }

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
        title: tr("sahlaPriceFinder"),
        bgColor: context.colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppBarLocationWidget(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              child: Column(
                children: [
                  SearchHeaderWidget(
                    controller: controller,
                  ),
                  Gaps.vGap24,
                  Expanded(
                    child: CustomRefreshIndicatorWidget(
                      onRefresh: () async {
                        controller.pagingController.refresh();
                      },
                      child: PagedListView<int, ProductCard>(
                        pagingController: controller.pagingController,
                        builderDelegate: PagedChildBuilderDelegate<ProductCard>(
                          itemBuilder: (
                            context,
                            item,
                            index,
                          ) {
                            return Padding(
                              padding: const EdgeInsets.only(
                                bottom: 12,
                              ),
                              child: SearchResultItemWidget(
                                model: item,
                              ),
                            );
                          },
                          firstPageProgressIndicatorBuilder: (context) {
                            return Column(
                              children: List.generate(
                                5,
                                (index) => Padding(
                                  padding: EdgeInsets.only(
                                    bottom: index == 4 ? 0 : 12,
                                  ),
                                  child: const SearchResultShimmerWidget(),
                                ),
                              ),
                            );
                          },
                          newPageProgressIndicatorBuilder: (context) => Center(
                            child: SizedBox(
                              width: 20,
                              height: 20,
                              child: CircularProgressIndicator(
                                color: context.colors.primary,
                              ),
                            ),
                          ),
                          noItemsFoundIndicatorBuilder: (context) {
                            return const Padding(
                              padding: EdgeInsets.only(
                                top: 40,
                              ),
                              child: Center(
                                child: BuildEmptyDataView(),
                              ),
                            );
                          },
                          firstPageErrorIndicatorBuilder: (context) {
                            return Padding(
                              padding: const EdgeInsets.only(
                                top: 40,
                              ),
                              child: Center(
                                child: Text(
                                  tr("somethingWentWrong"),
                                ),
                              ),
                            );
                          },
                          newPageErrorIndicatorBuilder: (context) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 20,
                              ),
                              child: Center(
                                child: Text(
                                  tr("somethingWentWrong"),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
