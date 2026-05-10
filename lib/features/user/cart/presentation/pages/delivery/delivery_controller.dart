// ignore_for_file: use_build_context_synchronously

part of 'delivery_imports.dart';


class DeliveryController {
  final GenericBloc<int> deliveryTypeCubit = GenericBloc(0);
  final GenericBloc<List<SellerShipping>> sellerShippingBloc = GenericBloc([]);
  Pickup? nearestPointModel;
  SellerShipping? selectedItem;


  DeliveryController(){
    List<SellerShipping>? savedShippingData = getIt<CartNavigateHelper>().deliveryDetailsData;
    if(savedShippingData != null){
      sellerShippingBloc.onUpdateData(savedShippingData);
    }else{
      getShippingInfo();
    }
  }



  Future<void> getShippingInfo({bool refresh = true}) async {
    return await GetShippingInfo().call(refresh).then(
          (value) => sellerShippingBloc.onUpdateData(value),
    );
  }

  void onChangeType(SellerShipping model, DeliveryTypeEnum value) {
    model.deliveryType = value;
    selectedItem = model;
    if(value.isDelivery){
      nearestPointModel = null;
      model.pickup?.isSelected = false;
    }
    sellerShippingBloc.onUpdateData(sellerShippingBloc.state.data);
  }

  bool isHaveDeliveryAndTimeAfterTenPm(BuildContext context){
    var hasDelivery = _setCartStoreParams().any(
          (e) => e['shipiing_type'] == DeliveryTypeEnum.delivery.getEnumValue(),
    );

    final hour = DateTime.now().hour;
    // after 10 PM (22) or before 6 AM
    if (hasDelivery && (hour >= 22 || hour < 6)) {
      showDialog(context: context, builder: (context) {
        return DeliveryTimeAlertWidget(controller: this);
      },);
      return true;
    }else{
      return false;
    }
  }

  bool get hasSellerWithUnavailableDelivery {
    return sellerShippingBloc.state.data.any(
          (e) => e.deliveryType.isDelivery && e.delivery == null,
    );
  }

  bool get hasSellerWithUnselectedPickup {
    return sellerShippingBloc.state.data.any(
          (e) => e.deliveryType.isPickUp && (e.pickup == null || e.pickup?.isSelected == false),
    );
  }

  void onPresContinue(BuildContext context) {

    if (hasSellerWithUnselectedPickup) {
      CustomToast.showSimpleToast(msg: tr("chooseNearestPickupPoint"));
      return;
    }

    if (hasSellerWithUnavailableDelivery) {
      CustomToast.showSimpleToast(msg: tr("un_support_delivery_point"));
      return;
    }

    if (isHaveDeliveryAndTimeAfterTenPm(context)) {
      return;
    }

    setCartStoreShipping(context);
  }


  Future<void> setCartStoreShipping(BuildContext context) async {
    StoreCartShippingParams params = _cartShippingParams();
    var data = await SetCartStoreShipping().call(params);
    if (data != null) {
      getIt<CartNavigateHelper>().deliveryDetailsData = sellerShippingBloc.state.data;
      getIt<CartNavigateHelper>().cartCheckOutPageData.orderSummaryCheckOut = data;
      getIt<CartNavigateHelper>().checkOutParams = _cartShippingParams();
      CustomToast.showSimpleToast(msg: tr('shippingAdded'),type: ToastType.success);
      getIt<CartNavigateHelper>()
          .setStep(CartNavigateHelper.paymentStepIndex, force: true);
    }
  }

  void onSelectPoint(Pickup? model) {
    nearestPointModel = null;
    if (model != null) {
      nearestPointModel = model;
      model.isSelected = true;
    }
  }

  List<Map> _setCartStoreParams() {
    var shipping = sellerShippingBloc.state.data;
    List<Map<String, dynamic>> arrangedItems = shipping
        .map(
          (e) => {
        'owner_id':  e.ownerId,
        'shipiing_type': e.deliveryType.isDelivery
            ? DeliveryTypeEnum.delivery.getEnumValue()
            : DeliveryTypeEnum.pickUp.getEnumValue()
      },
    )
        .toList();
    return arrangedItems;
  }

  StoreCartShippingParams _cartShippingParams(){
    return StoreCartShippingParams(params: _setCartStoreParams());
  }

  Future<void> applyCoupon(String param) async {
    var data = await ApplyCoupon().call(param);
    if (data != null) {
      CustomToast.showSimpleToast(msg: "");
    }
  }
}
