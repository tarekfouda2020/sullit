part of 'pharmacy_categories_imports.dart';

class PharmacyCategoriesController {

  final int shopId;

  final PagingController<int, ShopCategory> pagingController = PagingController(firstPageKey: 1);
  final GenericBloc<bool> showClearIcon = GenericBloc<bool>(false);
  final GenericBloc<Shop?> shopBloc = GenericBloc<Shop?>(null);

  PharmacyCategoriesController({required this.shopId}) {
    _fetchShopDetails(fromRemote: false);
    _fetchShopDetails();
    getShopCategories(1, refresh: false);
    pagingController.addPageRequestListener((pageKey) {
      getShopCategories(pageKey);
    });
  }

  Future<void> _fetchShopDetails({bool fromRemote = true}) async {
    var data = await GetShopDetails().call(
      ShopIdParams(shopId: shopId, refresh: fromRemote),
    );
    shopBloc.onUpdateData(data);
  }

  Future<void> getShopCategories(int page, {bool refresh = true}) async {
    final paginateParams = GenericPaginateParams(
      currentPage: page,
      pageSize: AppConstants.instance.paginationLimit,
      refresh: refresh,
    );

    final params = ShopCategoryParams(
      shopId: shopId,
      paginParams: paginateParams,
    );

    final List<ShopCategory> data = await GetShopCategories().call(params);

    if (page == 1) {
      pagingController.itemList = [];
    }

    final isLastPage = data.length < AppConstants.instance.paginationLimit;
    if (isLastPage) {
      pagingController.appendLastPage(data);
    } else {
      pagingController.appendPage(data, page + 1);
    }
  }

  void onSelectCategory(BuildContext context, ShopCategory category) {
    AutoRouter.of(context).push(
        PharmacyDetailsRoute(
            fromCart: false,
          selectedCategoryId:  category.id,
          pharmacy: shopBloc.state.data,
        ));
  }

  void onPressSupportedInsurance(BuildContext context) {}

  void dispose() {
    pagingController.dispose();
    showClearIcon.close();
    shopBloc.close();
  }
}
