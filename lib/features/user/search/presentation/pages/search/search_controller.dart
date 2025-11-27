part of 'search_imports.dart';

class SearchController {
  final TextEditingController searchController = TextEditingController();
  final GenericBloc<SearchResults?> resultsCubit = GenericBloc(null);
  // final GenericBloc<bool> showCategorySection = GenericBloc<bool>(true);

  SearchController(String searchText) {
    searchController.text = searchText;
    getSearchResults(refresh: false);
    getSearchResults();
  }

  Future<void> getSearchResults({bool refresh = true}) async {
    var params = _searchResultParams(refresh);
    var result = await GetSearchResults().call(params);
    resultsCubit.onUpdateData(result);
  }





  SearchResultParams _searchResultParams(bool refresh) {
    return SearchResultParams(
      searchTxt: searchController.text,
      refresh: refresh,
      paginateParams: _paginateParams(refresh)
    );
  }


  Future<void> onPressSearch(BuildContext context)async{
    if(searchController.text.trim().isNotEmpty){
      FocusScope.of(context).unfocus();
      getIt<LoadingHelper>().showLoadingDialog();
      await getSearchResults();
      getIt<LoadingHelper>().dismissDialog();
    }
  }


  GenericPaginateParams _paginateParams(bool refresh){
    return GenericPaginateParams(
      refresh: refresh,
      currentPage: 1,
      pageSize: 12,
    );
  }

}
