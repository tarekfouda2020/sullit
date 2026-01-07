part of 'pro_offers_imports.dart';

class ProOffersController {
  final TextEditingController searchFieldCtr = TextEditingController();

  final PagingController<int, Product> vipOffersPagingController =
      PagingController(firstPageKey: 1);
  int pageSize = 10;
  int currentPage = 1;


  ProOffersController() {
    getVipOffers(1, refresh: false);
    vipOffersPagingController.addPageRequestListener((pageKey) {
      getVipOffers(pageKey);
    });
  }

  Future<void> getVipOffers(int page, {bool refresh = true}) async {
    var params = _vipOffers(refresh, page);
    var result = await GetVipOffers().call(params);

    var isLastPage = result.length < pageSize;
    if (page == 1) {
      vipOffersPagingController.itemList = [];
    }
    if (isLastPage) {
      vipOffersPagingController.appendLastPage(result);
    } else {
      final nextPageKey = page + 1;
      currentPage = nextPageKey;
      vipOffersPagingController.appendPage(result, nextPageKey);
    }
  }

  GenericPaginateParams _vipOffersParams(bool refresh, int currentPage) {
    return GenericPaginateParams(
        pageSize: pageSize, refresh: refresh, currentPage: currentPage);
  }

  void onChangeFav(Product item) {
    item.isWishlist = !item.isWishlist!;
    if (vipOffersPagingController.itemList != null) {
      int index = vipOffersPagingController.itemList!
          .indexWhere((e) => e.id == item.id);
      if (index != -1) {
        vipOffersPagingController.itemList![index] = item;
        var data = vipOffersPagingController.itemList;
        vipOffersPagingController.itemList = [...?data];
      }
    }
  }

  void routeToMembershipSubscribe(BuildContext context) {
    bool isAuth = context.read<DeviceCubit>().state.model.auth;
    if (isAuth) {
      AutoRouter.of(context).push( MembershipSubscribeRoute());
    } else {
      CustomToast.showAuthDialog(context);
    }
  }

  OffersParamsWidget _vipOffers(bool refresh, int currentPage) {
    return OffersParamsWidget(
      paginateParams: _vipOffersParams(refresh, currentPage),
      isVipProducts: true,
        keyword: searchFieldCtr.text
    );
  }

  void onPressSearch(BuildContext context) {
    FocusScope.of(context).unfocus();
    callProductsSearch();
  }

  void whileWriting(String value) {
    DebounceHelper.instance.startSearch(
      value: value,
      onSearch: (val) => callProductsSearch(),
    );
  }

  void callProductsSearch() {
    vipOffersPagingController.refresh();
    getVipOffers(1);
  }
}
