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

  void getSearchResults({bool refresh = true}) async {
    var params = _searchResultParams(refresh);
    var result = await GetSearchResults().call(params);
    resultsCubit.onUpdateData(result);
  }

  SearchResultParams _searchResultParams(bool refresh) {
    return SearchResultParams(
      searchTxt: searchController.text,
      refresh: refresh,
    );
  }


  void onPressSearch(BuildContext context){
    FocusScope.of(context).unfocus();
    getSearchResults();
  }

}
