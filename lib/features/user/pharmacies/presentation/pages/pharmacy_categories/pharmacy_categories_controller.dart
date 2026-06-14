part of 'pharmacy_categories_imports.dart';

class PharmacyCategoriesController {
  final int pharmacyId;

  final PagingController<int, ShopCategory> pagingController =
      PagingController(firstPageKey: 1);
  final GenericBloc<bool> showClearIcon = GenericBloc<bool>(false);
  final GenericBloc<Shop?> pharmacyBloc = GenericBloc<Shop?>(null);

  PharmacyCategoriesController({required this.pharmacyId}) {
    _fetchShopDetails(fromRemote: false);
    _fetchShopDetails();
    getShopCategories(1, refresh: false);
    pagingController.addPageRequestListener((pageKey) {
      getShopCategories(pageKey);
    });
  }

  Future<void> _fetchShopDetails({bool fromRemote = true}) async {
    var data = await GetShopDetails().call(
      ShopIdParams(shopId: pharmacyId, refresh: fromRemote),
    );
    pharmacyBloc.onUpdateData(data);
  }

  Future<void> getShopCategories(int page, {bool refresh = true}) async {
    final paginateParams = GenericPaginateParams(
      currentPage: page,
      pageSize: AppConstants.instance.paginationLimit,
      refresh: refresh,
    );

    final params = ShopCategoryParams(
      shopId: pharmacyId,
      paginParams: paginateParams,
    );

    List<ShopCategory> data = await GetShopCategories().call(params);

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
    AutoRouter.of(context).push(PharmacyDetailsRoute(
      fromCart: false,
      selectedCategoryId: category.id,
      pharmacyId: pharmacyId,
    ));
  }

  void onPressSupportedInsurance(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      enableDrag: false,
      backgroundColor: Colors.transparent,
      builder: (context) => SupportedInsuranceBottomSheetWidget(
        insurance: pharmacyBloc.state.data?.insuranceCompanies ?? [],
      ),
    );
  }

  void dispose() {
    pagingController.dispose();
    showClearIcon.close();
    pharmacyBloc.close();
  }

}
