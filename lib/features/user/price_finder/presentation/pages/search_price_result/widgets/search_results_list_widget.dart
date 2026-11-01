part of 'imports.dart';

class SearchResultsListWidget extends StatelessWidget {
  final SearchPriceController controller;

  const SearchResultsListWidget({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return CustomRefreshIndicatorWidget(
      onRefresh: () async => await controller.refresh(),
      child: PagedListView<int, ProductCard>(
        pagingController: controller.pagingController,
        builderDelegate: PagedChildBuilderDelegate<ProductCard>(
          itemBuilder: (context, item, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: SearchResultItemWidget(
                model: item,
                controller: controller,
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
          newPageProgressIndicatorBuilder: (context) => const Center(
            child: CircularProgressIndicator(),
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
    );
  }
}
