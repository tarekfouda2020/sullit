part  of 'loyalty_points_imports.dart';

class LoyaltyPointsController {
  final GenericBloc<LoyaltyPointsBalanceDomainModel?> loyaltyPointsBalanceBloc =
  GenericBloc(null);
  final PagingController<int, TransactionsDomainModel> pagingController = PagingController(firstPageKey: 1);
  int pageSize = 12;


  LoyaltyPointsController() {
    getLoyaltyPointsBalance(refresh: false);
    getLoyaltyPointsBalance();
    pagingController.addPageRequestListener((pageKey) {
      getTransactions(pageKey, refresh: false);
      getTransactions(pageKey);
    });
  }

  Future<void> getTransactions(int page, {bool refresh = true}) async {
    var params = _paginateParams(page, refresh);
    var data = await GetTransactions()(params);
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

  Future<void> getLoyaltyPointsBalance({bool refresh = true}) async {
    return await GetLoyaltyPointsBalance().call(refresh).then(
          (value) => loyaltyPointsBalanceBloc.onUpdateData(value),
    );
  }


  Future<void> refresh()async{
    await getTransactions(1);
    await getLoyaltyPointsBalance();
  }


  final List<LoyaltyPointTypeEnum> pointsTypes = [
    LoyaltyPointTypeEnum.gained,
    LoyaltyPointTypeEnum.deduct,
    LoyaltyPointTypeEnum.gained,
    LoyaltyPointTypeEnum.deduct,
    LoyaltyPointTypeEnum.gained,
    LoyaltyPointTypeEnum.deduct,
    LoyaltyPointTypeEnum.gained,
    LoyaltyPointTypeEnum.deduct,
    LoyaltyPointTypeEnum.gained,
    LoyaltyPointTypeEnum.deduct,
  ];

  GenericPaginateParams _paginateParams(int page, bool refresh) {
    return GenericPaginateParams(
      currentPage: page,
      refresh: refresh,
      pageSize: pageSize,
    );
  }

}