part of 'all_products_search_imports.dart';


class AllProductsSearchController {
  final String searchText;
  final bool showProducts;
  
  // Use dynamic type to support both Product and Category
  final PagingController<int, dynamic> pagingController = PagingController(firstPageKey: 1);
  int pageSize = 12;

  AllProductsSearchController({
    required this.searchText,
    required this.showProducts,
  }) {
    getSearchResults(1, refresh: false);
    pagingController.addPageRequestListener((pageKey) {
      getSearchResults(pageKey);
    });
  }

  Future<void> getSearchResults(int page, {bool refresh = true}) async {
    var params = _searchResultParams(page, refresh);
    var result = await GetSearchResults().call(params);
    
    if (result == null) {
      pagingController.error = "Error loading results";
      return;
    }

    List<dynamic> data;
    if (showProducts) {
      data = result.products;
    } else {
      data = result.categories;
    }

    final isLastPage = data.length < pageSize;
    if (page == 1) {
      pagingController.itemList = [];
    }
    if (isLastPage) {
      pagingController.appendLastPage(data);
    } else {
      final nextPageKey = page + 1;
      pagingController.appendPage(data, nextPageKey);
    }
  }

  SearchResultParams _searchResultParams(int page, bool refresh) {
    return SearchResultParams(
      searchTxt: searchText,
      refresh: refresh,
      paginateParams: _paginateParams(page, refresh),
    );
  }

  GenericPaginateParams _paginateParams(int page, bool refresh) {
    return GenericPaginateParams(
      refresh: refresh,
      currentPage: page,
      pageSize: pageSize,
    );
  }
}