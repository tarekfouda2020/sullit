part of 'search_imports.dart';

class SearchController {
  final TextEditingController searchController = TextEditingController();
  final GenericBloc<SearchResults?> resultsCubit = GenericBloc(null);
  final GenericBloc<bool> showClearIcon = GenericBloc<bool>(true);
  final GenericBloc<bool> refreshSearchHeaderCubit = GenericBloc<bool>(false);
  final GenericBloc<List<String>> searchHistoryCubit = GenericBloc<List<String>>([]);


  // final GenericBloc<bool> showCategorySection = GenericBloc<bool>(true);

  SearchController(String searchText) {
    searchController.text = searchText;
    getSearchResults(refresh: false);
    getSearchResults();
    initSearchList();
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
      callSearch();
    }
  }


  GenericPaginateParams _paginateParams(bool refresh){
    return GenericPaginateParams(
      refresh: refresh,
      currentPage: 1,
      pageSize: 12,
    );
  }


  void clearSearchField(){
    searchController.clear();
    showClearIcon.onUpdateData(false);
    refreshSearchHeaderCubit.onUpdateData(false);
    callSearch();
  }

  void whileWriting(String value){
    DebounceHelper.instance.startSearch(
      value: value,
      onSearch: (val) => callSearch(),
    );

    showClearIcon.onUpdateData(value.isNotEmpty);
    refreshSearchHeaderCubit.onUpdateData(value.isNotEmpty);

  }



  Future<void> callSearch()async{
    getIt<LoadingHelper>().showLoadingDialog();
    await getSearchResults();
   var pref =  await SharedPreferences.getInstance();
    List<String> searchList = await getSearchHistory();
    updateSearchList(pref,searchList);
   if(searchList.isEmpty){
     searchList.add(searchController.text.trim());
     pref.setStringList(LocalStorageKeys.searchHistory, searchList);
     searchHistoryCubit.onUpdateData(searchList);
   }
    getIt<LoadingHelper>().dismissDialog();
  }


  Future<List<String>> getSearchHistory()async{
    var pref =  await SharedPreferences.getInstance();
    var searchList = pref.get(LocalStorageKeys.searchHistory);
    if(searchList!=null && searchList is List<String>){
      return searchList;
    }else{
      return <String>[];
    }
  }


  Future<void> initSearchList()async{
    var pref =  await SharedPreferences.getInstance();
    List<String> searchList = await getSearchHistory();
    if(!searchList.contains(searchController.text.trim())){
      searchList.add(searchController.text);
      updateSearchList(pref, searchList);
    }
    searchHistoryCubit.onUpdateData(searchList);
  }


  Future<void> updateSearchList(SharedPreferences pref, List<String> searchList)async{
    var pref =  await SharedPreferences.getInstance();
    List<String> searchList = await getSearchHistory();
    if(searchList.isNotEmpty && !searchList.contains(searchController.text)){
      searchList.add(searchController.text.trim());
      pref.setStringList(LocalStorageKeys.searchHistory, searchList);
      searchHistoryCubit.onUpdateData(searchList);
    }
  }

  void selectSearchHistoryItem(String txt){
    if(txt.toLowerCase() != searchController.text.toLowerCase().trim()){
      searchController.text = txt;
      showClearIcon.onUpdateData(true);
      callSearch();
    }
  }

}
