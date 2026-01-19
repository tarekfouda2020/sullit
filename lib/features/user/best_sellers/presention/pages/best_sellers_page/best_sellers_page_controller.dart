part of 'best_sellers_page_imports.dart';

class BestSellersPageController {
  final TextEditingController searchTxtController = TextEditingController();
  final GenericBloc<bool> showClearIcon = GenericBloc<bool>(false);

  final GenericBloc<List<Shop>> shopsCubit = GenericBloc([]);

  final GenericBloc<bool> isLoadingCubit = GenericBloc(false);

  final ScrollController scrollController = ScrollController();

  int _currentPage = 1;
  final int _pageSize = 10;
  bool _isFetching = false;
  bool _hasMoreData = true;

  BestSellersPageController() {
    getBestSellers(refresh: true);
    scrollController.addListener(_scrollListener);
  }

  void clearSearchField() {
    searchTxtController.clear();
    showClearIcon.onUpdateData(false);
  }

  void whileWriting(String value) {
    if (value.isNotEmpty) {
      showClearIcon.onUpdateData(true);
    } else {
      showClearIcon.onUpdateData(false);
    }
  }

  void _scrollListener() {
    if (scrollController.position.pixels >=
        scrollController.position.maxScrollExtent * 0.9) {
      getBestSellers();
    }
  }

  Future<void> getBestSellers({bool refresh = false}) async {
    if (_isFetching || (!_hasMoreData && !refresh)) {
      return;
    }
    _isFetching = true;
    if (refresh) {
      isLoadingCubit.onUpdateData(true);
      _currentPage = 1;
      _hasMoreData = true;
    }
    var params = GenericPaginateParams(
      currentPage: _currentPage,
      pageSize: _pageSize,
      refresh: refresh,
      // search: searchTxtController.text,
    );
    SearchResultParams searchParams(){
      return SearchResultParams(
          searchTxt: searchTxtController.text,
          paginateParams: params);
    }
    var result = await GetBestSellers().call(searchParams());
    if (result.length < _pageSize) {
      _hasMoreData = false;
    }
    if (refresh) {
      shopsCubit.onUpdateData(result);
    } else {
      shopsCubit.state.data.addAll(result);
      shopsCubit.onUpdateData(shopsCubit.state.data);
    }
    _currentPage++;
    isLoadingCubit.onUpdateData(false);
    _isFetching = false;
  }

  // void dispose() {
  //   searchTxtController.dispose();
  //   showClearIcon.dispose();
  //   shopsCubit.dispose();
  //   isLoadingCubit.dispose();
  //   scrollController.removeListener(_scrollListener);
  //   scrollController.dispose();
  // }
}