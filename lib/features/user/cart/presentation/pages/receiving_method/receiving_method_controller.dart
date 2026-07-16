part of 'receiving_method_imports.dart';

class ReceivingMethodController {
  final GenericBloc<int> changeTabCubit = GenericBloc(0);

  late final ShippingController shippingController;
  final DeliveryController pickupController = DeliveryController();

  ///  this cubit updated after select address
  List<SellerShipping> get _sellerShippingData =>
      pickupController.sellerShippingBloc.state.data;

  ReceivingMethodController(BuildContext context) {
    shippingController = ShippingController();
  }

  Future<void> onPressProceed(BuildContext context) async {
    setCartStoreShipping(context);
  }

  Future<void> setCartStoreShipping(BuildContext context) async {
    if (!isAddressSelected) {
      CustomToast.showSimpleToast(msg: tr('pleaseSelAddress'));
      return;
    }
    if (changeTabCubit.state.data == 1) {
      if (!allPickPointsSelected()) {
        CustomToast.showSimpleToast(msg: "Please select all Sellers Branches");
        return;
      }
    }
    var params = _cartShippingParams();
    var data = await SetCartStoreShipping().call(params);
    if (data != null) {
      CustomToast.showSimpleToast(
          msg: tr('shippingAdded'), type: ToastType.success);
      AutoRouter.of(context).push(CartPaymentRoute(shipping: data));
    }
  }

  List<Map> _setCartStoreParams() {
    var arrangedItems = _sellerShippingData
        .map(
          (e) => {
            'owner_id': e.ownerId,
            // 'shipiing_type': DeliveryTypeEnum.getDeliveryMethod(changeTabCubit.state.data)
            'shipiing_type': changeTabCubit.state.data == 0
                ? DeliveryTypeEnum.delivery.getEnumValue()
                : DeliveryTypeEnum.pickUp.getEnumValue()
          },
        )
        .toList();
    return arrangedItems;
  }

  StoreCartShippingParams _cartShippingParams() {
    return StoreCartShippingParams(params: _setCartStoreParams());
  }

  void onSelectPickUp(BuildContext context) {
    var auth = context.isAuth;
    if (!auth) {
      CustomToast.showAuthDialog(context);
      return;
    }
    if (isAddressSelected) {
      changeTabCubit.onUpdateData(1);
    } else {
      CustomToast.showSimpleToast(msg: tr('pleaseSelAddress'));
    }
  }

  bool get isAddressSelected =>
      shippingController.pagingController.itemList
          ?.any((element) => element.selected == true) ??
      false;

  bool isDeliverySupportedInAllSellers() {
    return _sellerShippingData.isNotEmpty
        ? _sellerShippingData.every((element) => element.activeDelivery)
        : true;
  }

  bool isPickUpInAllSellers() {
    return _sellerShippingData.isNotEmpty
        ? _sellerShippingData.every((element) => element.activePickup)
        : true;
  }

  bool allPickPointsSelected() {
    return _sellerShippingData.every((element) =>
        element.pickup != null && element.pickup?.isSelected == true);
  }
}
