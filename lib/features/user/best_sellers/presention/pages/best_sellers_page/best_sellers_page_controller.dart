part of 'best_sellers_page_imports.dart';

class BestSellersPageController {
  final TextEditingController searchTxtController = TextEditingController();
  final GenericBloc<bool> showClearIcon = GenericBloc<bool>(false);

  final GenericBloc<List<Shop>> shopsCubit = GenericBloc([]);

  final GenericBloc<bool> isLoadingCubit = GenericBloc(false);

  final ScrollController scrollController = ScrollController();

  final PagingController<int, Shop> pagingController = PagingController(firstPageKey: 1);
  int pageSize = 12;


  BestSellersPageController() {
    getBestSellers(1, refresh: false);
    pagingController.addPageRequestListener((pageKey) {
      getBestSellers(pageKey);
    });
  }



  Future<void> getBestSellers(int page, {bool refresh = true}) async {
    var params = searchParams(refresh, page);
    var data = await  GetBestSellers().call(params);
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


  void clearSearchField() {
    searchTxtController.clear();
    showClearIcon.onUpdateData(false);
    getBestSellers(1);
  }

  void whileWriting(String value) {
    showClearIcon.onUpdateData(value.isNotEmpty);
    DebounceHelper.instance.startSearch(
        value: value,
        onSearch: (val) {
          pagingController.refresh();
          getBestSellers(1);
        }
    );
  }

  GenericPaginateParams  params(bool refresh,int page) =>  GenericPaginateParams(
    currentPage: page,
    refresh: refresh,
    pageSize: pageSize,
  );

  SearchResultParams searchParams(bool refresh,int page){
    return SearchResultParams(
        searchTxt: searchTxtController.text,
        paginateParams: params(refresh,page)
    );
  }


  // Future<void> getBestSellers({bool refresh = false}) async {
  //   if (refresh) {
  //     isLoadingCubit.onUpdateData(true);
  //     _currentPage = 1;
  //     _hasMoreData = true;
  //   }
  //   var params = searchParams(refresh);
  //   var result = await GetBestSellers().call(params);
  //   if (result.length < _pageSize) {
  //     _hasMoreData = false;
  //   }
  //   if (refresh) {
  //     shopsCubit.onUpdateData(result);
  //   } else {
  //     shopsCubit.state.data.addAll(result);
  //     shopsCubit.onUpdateData(shopsCubit.state.data);
  //   }
  //   _currentPage++;
  //   isLoadingCubit.onUpdateData(false);
  // }



  // void _scrollListener() {
  //   if (scrollController.position.pixels >=
  //       scrollController.position.maxScrollExtent * 0.9) {
  //     getBestSellers();
  //   }
  // }



  // void dispose() {
  //   searchTxtController.dispose();
  //   showClearIcon.dispose();
  //   shopsCubit.dispose();
  //   isLoadingCubit.dispose();
  //   scrollController.removeListener(_scrollListener);
  //   scrollController.dispose();
  // }
}