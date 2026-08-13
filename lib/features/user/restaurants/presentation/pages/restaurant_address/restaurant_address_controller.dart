// ignore_for_file: use_build_context_synchronously

part of 'restaurant_address_imports.dart';

class RestaurantAddressController {
  final GenericBloc<bool> refreshCubit = GenericBloc<bool>(true);

  final GenericBloc<DeliveryTypeEnum> deliveryMethodCubit =
      GenericBloc<DeliveryTypeEnum>(DeliveryTypeEnum.delivery);

  final GenericBloc<List<PharmacyShippingDomainModel>> shippingDataCubit =
      GenericBloc<List<PharmacyShippingDomainModel>>([]);

  final PagingController<int, AddressDomainModel> pagingController =
      PagingController(firstPageKey: 1);

  final PagingController<int, BranchDomainModel>
      branchesPagingController = PagingController(firstPageKey: 1);

  final Shop? restaurant;

  final int? preSelectedBranchId;

  AddressDomainModel? selectedAddress;

  RestaurantAddressController({
    this.restaurant,
    this.preSelectedBranchId,
  }) {
    if (restaurant?.hasBranches == true && preSelectedBranchId == null) {
      getRestaurantBranches(1, refresh: false);
      branchesPagingController.addPageRequestListener((pageKey) {
        getRestaurantBranches(pageKey);
      });
    }
    getPaginateAddress(1, refresh: false);
    pagingController.addPageRequestListener((pageKey) {
      getPaginateAddress(pageKey);
    });
  }

  Future<void> getPaginateAddress(int page, {bool refresh = true}) async {
    GenericPaginateParams params = _paginateParams(page, refresh);
    var data = await GetAddresses().call(params);
    var isLastPage = data.length < AppConstants.instance.paginationLimit;
    if (page == 1) {
      pagingController.itemList = [];
    }
    if (isLastPage) {
      pagingController.appendLastPage(data);
    } else {
      var nextPageKey = page + 1;
      pagingController.appendPage(data, nextPageKey);
    }
  }

  void onSelectAddress(BuildContext context, AddressDomainModel address) {
    bool auth = context.isAuth;
    if (!auth) {
      CustomToast.showAuthDialog(context);
      return;
    }
    for (AddressDomainModel e in pagingController.itemList!) {
      e.selected = false;
    }
    address.selected = true;
    selectedAddress = address;
    refreshCubit.onUpdateData(true);
    if (restaurant?.hasBranches == true && preSelectedBranchId == null) {
      getBranches(context);
    }
  }

  void onAddNewAddress(BuildContext context) async {
    var result = await AutoRouter.of(context).push(const AddNewAddressRoute());
    if (result != null) {
      AddressDomainModel model = result as AddressDomainModel;
      pagingController.itemList!.add(model);
      refreshCubit.onUpdateData(true);
    }
  }

  Future<void> onPressProceed(BuildContext context) async {
    if (selectedAddress == null) {
      CustomToast.showSimpleToast(msg: "Please select you address first");
      return;
    }
    getShippingInfo(context);
  }

  Future<void> getBranches(BuildContext context) async {
    getIt<LoadingHelper>().showLoadingDialog();
    await getRestaurantBranches(1);
    getIt<LoadingHelper>().dismissDialog();
    showBranchesSheet(context);
  }

  Future<void> getShippingInfo(BuildContext context) async {
    var params = PharamcyShippingInfoParams(addressId: selectedAddress!.id!);
    var result = await GetPharmacyShippingInfo().call(params);
    if (result.isNotEmpty) {
      for (PharmacyShippingDomainModel item in result) {
        if (item.activeDelivery == false && item.activePickup == true) {
          item.deliveryType = DeliveryTypeEnum.pickUp;
        }
      }
      shippingDataCubit.onUpdateData(result);
      showShippingTypeSheet(context, result);
    }
  }

  void showShippingTypeSheet(
      BuildContext context, List<PharmacyShippingDomainModel> result) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (context) => RestaurantDeliveryTypeBottomSheet(
        controller: this,
        onConfirm: () {
          if (canConfirmShipping()) {
            Navigator.pop(context);
            BuildContext ctx = getIt<GlobalContext>().context();
            getCheckOutSummaryData(ctx, result);
          }
        },
      ),
    );
  }

  Future<void> getCheckOutSummaryData(
      BuildContext context, List<PharmacyShippingDomainModel> data) async {
    PharmacyCheckoutParams params = _checkOutParams(data);
    final result = await GetCartSummary().call(params);
    if (result != null) {
      AutoRouter.of(context).push(RestaurantCheckOutRoute(
        shipping: result,
        checkoutParams: params,
      ));
    }
  }

  PharmacyCheckoutParams _checkOutParams(
      List<PharmacyShippingDomainModel> data) {
    return PharmacyCheckoutParams(
      type: CartTypeEnum.restaurant,
      shippingInfo: _shippingData(data),
      addressId: selectedAddress!.id!,
    );
  }

  Future<void> getRestaurantBranches(int page, {bool refresh = true}) async {
    PharmacyBranchesParams params = _branchesParams(page, refresh);
    var data = await GetPharmacyBranches().call(params);
    for (BranchDomainModel branch in data) {
      branch.isSelected = branch.isDefault;
    }
    var isLastPage = data.length < AppConstants.instance.paginationLimit;
    if (page == 1) {
      branchesPagingController.itemList = [];
    }
    if (isLastPage) {
      branchesPagingController.appendLastPage(data);
    } else {
      var nextPageKey = page + 1;
      branchesPagingController.appendPage(data, nextPageKey);
    }
  }

  PharmacyBranchesParams _branchesParams(int page, bool refresh) {
    LatLng? currentLocation =
        GlobalState.instance.get(GlobalStateKeys.userLocation);
    return PharmacyBranchesParams(
      latitude: double.tryParse(selectedAddress?.lat ?? "") ??
          currentLocation?.latitude ??
          0,
      longitude: double.tryParse(selectedAddress?.lang ?? "") ??
          currentLocation?.longitude ??
          0,
      pharmacyId: restaurant!.id!,
      formRemote: refresh,
      paginateParams: _paginateParams(page, refresh),
    );
  }

  void showBranchesSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return BranchesBottomSheetWidget(
          pagingController: branchesPagingController,
          onSelect: (branch) => onSelectBranch(context, branch),
        );
      },
    );
  }

  void onSelectBranch(BuildContext context, BranchDomainModel branch) {
    Navigator.pop(context);
    for (BranchDomainModel b
        in _branchesItemList ?? <BranchDomainModel>[]) {
      b.isSelected = false;
    }
    branch.isSelected = true;
    branchesPagingController.itemList = [...?_branchesItemList];
    shippingDataCubit.onUpdateData(shippingDataCubit.state.data);
  }

  List<BranchDomainModel>? get _branchesItemList =>
      branchesPagingController.itemList;

  BranchDomainModel? get selectedBranch {
    if ((_branchesItemList ?? []).every((element) => !element.isSelected)) {
      return null;
    } else {
      return _branchesItemList!.firstWhere((element) => element.isSelected);
    }
  }

  int? get effectiveBranchId => selectedBranch?.id ?? preSelectedBranchId;

  bool canConfirmShipping() {
    return shippingDataCubit.state.data.every(
      (e) => e.activeDelivery == true || e.activePickup == true,
    );
  }

  List<PharmacyShippingInfo> _shippingData(
      List<PharmacyShippingDomainModel> data) {
    return data
        .map((e) => PharmacyShippingInfo(
              ownerId: e.ownerId ?? 0,
              shippingType: (e.deliveryType).getEnumValue(),
            ))
        .toList();
  }

  GenericPaginateParams _paginateParams(int page, bool refresh) {
    return GenericPaginateParams(
      currentPage: page,
      refresh: refresh,
      pageSize: AppConstants.instance.paginationLimit,
    );
  }
}
