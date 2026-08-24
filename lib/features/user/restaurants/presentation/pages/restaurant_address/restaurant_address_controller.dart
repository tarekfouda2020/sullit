// ignore_for_file: use_build_context_synchronously

part of 'restaurant_address_imports.dart';

class RestaurantAddressController {
  final GenericBloc<bool> refreshCubit = GenericBloc<bool>(true);

  final GenericBloc<DeliveryTypeEnum> deliveryMethodCubit =
      GenericBloc<DeliveryTypeEnum>(DeliveryTypeEnum.delivery);

  final GenericBloc<List<SellerShipping>> shippingDataCubit =
      GenericBloc<List<SellerShipping>>([]);

  final PagingController<int, AddressDomainModel> pagingController =
      PagingController(firstPageKey: 1);

  final Shop? restaurant;

  final int? preSelectedBranchId;

  AddressDomainModel? selectedAddress;

  RestaurantAddressController({
    this.restaurant,
    this.preSelectedBranchId,
  }) {
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

  Future<void> getShippingInfo(BuildContext context) async {
    var params = SellerShippingInfoParams(
      sellerId: restaurant!.userId!,
      addressId: selectedAddress!.id!,
      branchId: preSelectedBranchId,
    );
    var result = await GetSellerShippingInfo().call(params);
    if (result != null) {
      if (result.activeDelivery == false && result.activePickup == true) {
        result.deliveryType = DeliveryTypeEnum.pickUp;
      }
      shippingDataCubit.onUpdateData([result]);
      showShippingTypeSheet(context, [result]);
    }
  }

  void showShippingTypeSheet(
      BuildContext context, List<SellerShipping> result) {
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
      BuildContext context, List<SellerShipping> data) async {
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
      List<SellerShipping> data) {
    return PharmacyCheckoutParams(
      type: CartTypeEnum.restaurant,
      shippingInfo: _shippingData(data),
      addressId: selectedAddress!.id!,
    );
  }

  bool canConfirmShipping() {
    return shippingDataCubit.state.data.every(
      (e) => e.activeDelivery == true || e.activePickup == true,
    );
  }

  List<PharmacyShippingInfo> _shippingData(List<SellerShipping> data) {
    return data
        .map((e) => PharmacyShippingInfo(
              ownerId: e.ownerId,
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
