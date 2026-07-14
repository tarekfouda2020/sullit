part of 'pharmacies_list_imports.dart';

class PharmaciesListController {
  final TextEditingController searchController = TextEditingController();
  final GenericBloc<bool> showClearIcon = GenericBloc<bool>(false);
  final PagingController<int, Shop> pagingController =
      PagingController(firstPageKey: 1);

  final bool makePrescriptionOrder;
  final File? initialPrescriptionFile;
  final SavedPrescriptionModel? initialSavedPrescription;

  PharmaciesListController({
    this.makePrescriptionOrder = false,
    this.initialPrescriptionFile,
    this.initialSavedPrescription,
  }) {
    getPharmacies(1, refresh: false);
    pagingController.addPageRequestListener((pageKey) {
      getPharmacies(pageKey);
    });
  }

  Future<void> getPharmacies(int page, {bool refresh = true}) async {
    var params = _buildShopsParams(refresh, page);
    var data = await GetPharmacies().call(params);
    final isLastPage = data.length < AppConstants.instance.paginationLimit;
    if (page == 1) {
      pagingController.itemList = [];
    }
    if (isLastPage) {
      pagingController.appendLastPage(data);
    } else {
      pagingController.appendPage(data, page + 1);
    }
  }

  void onPressPharmacy(BuildContext context, Shop shop) {
    if (!makePrescriptionOrder) {
      if (shop.id != null) {
        AutoRouter.of(context)
            .push(PharmacyCategoriesRoute(pharmacyId: shop.id!));
      }
      return;
    }
    for (var item in pagingController.itemList ?? <Shop>[]) {
      item.isSelected = false;
    }
    shop.isSelected = true;
    pagingController.itemList = [...?pagingController.itemList];
    AutoRouter.of(context).push(AttachPrescriptionRoute(
      pharmacy: shop,
      initialPrescriptionFile: initialPrescriptionFile,
      initialSavedPrescription: initialSavedPrescription,
    ));
  }

  void clearSearchField() {
    searchController.clear();
    showClearIcon.onUpdateData(false);
    pagingController.refresh();
    getPharmacies(1);
  }

  void whileWriting(String value) {
    showClearIcon.onUpdateData(value.isNotEmpty);
    DebounceHelper.instance.startSearch(
      value: value,
      onSearch: (val) {
        pagingController.refresh();
        getPharmacies(1);
      },
    );
  }

  ShopsParams _buildShopsParams(bool refresh, int page) {
    SearchResultParams searchParams = _searchParams(page, refresh);
    return ShopsParams(
      params: searchParams,
      type: ShopTypeEnum.pharmacy,
    );
  }

  SearchResultParams _searchParams(int page, bool refresh) {
    var paginateParams = _genericPaginateParams(page, refresh);
    return SearchResultParams(
      searchTxt: searchController.text,
      paginateParams: paginateParams,
    );
  }

  GenericPaginateParams _genericPaginateParams(int page, bool refresh) {
    return GenericPaginateParams(
      currentPage: page,
      refresh: refresh,
      pageSize: AppConstants.instance.paginationLimit,
    );
  }

  void dispose() {
    searchController.dispose();
    showClearIcon.close();
    pagingController.dispose();
  }
}
