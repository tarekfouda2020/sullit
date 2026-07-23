// ignore_for_file: use_build_context_synchronously

part of 'pharmacy_address_imports.dart';

class PharmacyAddressController {
  final GenericBloc<bool> refreshCubit = GenericBloc<bool>(true);
  final GenericBloc<bool> conditionsCubit = GenericBloc<bool>(false);

  final GenericBloc<DeliveryTypeEnum> deliveryMethodCubit =
      GenericBloc<DeliveryTypeEnum>(DeliveryTypeEnum.delivery);

  final GenericBloc<SellerShipping?> sellerShippingInfoCubit =
      GenericBloc<SellerShipping?>(null);

  final GenericBloc<List<PharmacyShippingDomainModel>> shippingDataCubit =
      GenericBloc<List<PharmacyShippingDomainModel>>([]);

  final PagingController<int, AddressDomainModel> pagingController =
      PagingController(firstPageKey: 1);

  final PagingController<int, PharmacyBranchDomainModel>
      branchesPagingController = PagingController(firstPageKey: 1);

  final bool havePrescription;

  final Shop? pharmacy;

  final int? preSelectedBranchId;

  AddressDomainModel? selectedAddress;

  final PharmacyCreateOrderParams? createOrderParams;

  PharmacyAddressController(
      {required this.havePrescription,
      this.pharmacy,
      this.createOrderParams,
      this.preSelectedBranchId}) {
    if (pharmacy?.hasBranches == true && preSelectedBranchId == null) {
      getPharmacyBranches(1, refresh: false);
      branchesPagingController.addPageRequestListener((pageKey) {
        getPharmacyBranches(pageKey);
      });
    }
    getPaginateAddress(1, refresh: false);
    pagingController.addPageRequestListener((pageKey) {
      getPaginateAddress(pageKey);
    });
  }

  bool get havePickUp {
    var data = sellerShippingInfoCubit.state.data;
    var canPickUp = data?.activePickup == true && data?.pickup!= null;
    return canPickUp;
  }

  bool get haveDelivery {
    var data = sellerShippingInfoCubit.state.data;
    var canDelivery = data?.activeDelivery == true && data?.delivery!= null;
    return canDelivery;
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
    sellerShippingInfoCubit.onUpdateData(null);
    for (AddressDomainModel e in pagingController.itemList!) {
      e.selected = false;
    }
    address.selected = true;
    selectedAddress = address;
    createOrderParams?.setAddressId(address.id!);
    refreshCubit.onUpdateData(true);
   if(pharmacy?.hasBranches == true && preSelectedBranchId == null){
     getBranches(context);
   }else if(havePrescription){
     getPrescriptionShippingInfo();
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

  int getSelectedAddressId() {
    return selectedAddress!.id!;
  }

  Future<void> onPressProceed(BuildContext context) async {
    if (selectedAddress == null &&
        deliveryMethodCubit.state.data == DeliveryTypeEnum.delivery) {
      CustomToast.showSimpleToast(msg: "Please select you address first");
      return;
    }

    if(sellerShippingInfoCubit.state.data == null && havePrescription){
      CustomToast.showSimpleToast(msg: "Please select your receiving method");
      return;
    }

    if (havePrescription) {
      createPrescriptionOrder(context);
      return;
    }

    getShippingInfo(context);
  }


  Future<void> getBranches(BuildContext context)async{
    getIt<LoadingHelper>().showLoadingDialog();
    await getPharmacyBranches(1);
    getIt<LoadingHelper>().dismissDialog();
    showBranchesSheet(context);
  }

  void getPrescriptionShippingInfo() {
    SellerShippingInfoParams params = _prescriptionShippingInfo();
    GetSellerShippingInfo().call(params).then((value) {
      sellerShippingInfoCubit.onUpdateData(value);
      if(haveDelivery && havePickUp == false){
        CustomToast.showSimpleToast(msg: "Only Delivery Available",
            type: ToastType.success
        );
        return ;
      }
      if(havePickUp && haveDelivery == false){
        CustomToast.showSimpleToast(msg: "Only PickUp Available",
            type: ToastType.success
        );
        return ;
      }
      if(havePickUp && haveDelivery){
        CustomToast.showSimpleToast(msg: "Please select your order type",
        type: ToastType.success
        );
        return ;
      }
    });
  }

  SellerShippingInfoParams _prescriptionShippingInfo() {
    return SellerShippingInfoParams(
      sellerId: pharmacy!.userId!,
      addressId: selectedAddress!.id!,
      branchId: effectiveBranchId,
    );
  }

  Future<void> getShippingInfo(BuildContext context) async {
    var params = PharamcyShippingInfoParams(addressId: selectedAddress!.id!);
    var result = await GetPharmacyShippingInfo().call(params);
    if(result.isNotEmpty){
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
      builder: (context) => PharmacyDeliveryTypeBottomSheet(
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
      AutoRouter.of(context).push(PharmacyCheckOutRoute(
        shipping: result,
        checkoutParams: params,
      ));
    }
  }

  Future<void> createPrescriptionOrder(BuildContext context) async {
    PharmacyCreateOrderParams params = _createInsurancePrescriptionParams();
    log("====>>>>>>>>> params is ${params.toPrescriptionOrderJson()} =====");
    var result = await CreatePharmacyPrescriptionOrder().call(params);
    if (result != null) {
      AutoRouter.of(context)
          .push(OrderSuccessRoute(summary: result, havePrescription: true, pharmacy: pharmacy));
    }
  }

  PharmacyCheckoutParams _checkOutParams(
      List<PharmacyShippingDomainModel> data) {
    return PharmacyCheckoutParams(
      shippingInfo: _shippingData(data),
      addressId: selectedAddress!.id!,
    );
  }

  PharmacyCreateOrderParams _createInsurancePrescriptionParams() {
    DeliveryTypeEnum selectedDeliveryType = deliveryMethodCubit.state.data;
    if (selectedDeliveryType == DeliveryTypeEnum.delivery) {
      createOrderParams!.setAddressId(selectedAddress?.id);
    }
    createOrderParams!.setShippingType(selectedDeliveryType);
    createOrderParams!.setShopBranchId(effectiveBranchId);
    return createOrderParams!;
  }

  Future<void> getPharmacyBranches(int page, {bool refresh = true}) async {
    PharmacyBranchesParams params = _branchesParams(page, refresh);
    var data = await GetPharmacyBranches().call(params);
    for (PharmacyBranchDomainModel branch in data) {
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
      pharmacyId: pharmacy!.id!,
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

  void selectBranchInView(PharmacyBranchDomainModel branch) {
    for (PharmacyBranchDomainModel b
        in _branchesItemList ?? <PharmacyBranchDomainModel>[]) {
      b.isSelected = false;
    }
    branch.isSelected = true;
    branchesPagingController.itemList = [...?_branchesItemList];
  }

  void onSelectBranch(BuildContext context, PharmacyBranchDomainModel branch) {
    Navigator.pop(context);
    for (PharmacyBranchDomainModel b
        in _branchesItemList ?? <PharmacyBranchDomainModel>[]) {
      b.isSelected = false;
    }
    branch.isSelected = true;
    branchesPagingController.itemList = [...?_branchesItemList];
    shippingDataCubit.onUpdateData(shippingDataCubit.state.data);
    // BuildContext ctx = getIt<GlobalContext>().context();
    // createPrescriptionOrder(ctx);
    if(havePrescription){
      getPrescriptionShippingInfo();
    }

  }

  List<PharmacyBranchDomainModel>? get _branchesItemList =>
      branchesPagingController.itemList;

  PharmacyBranchDomainModel? get selectedBranch {
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
