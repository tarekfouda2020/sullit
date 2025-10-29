// ignore_for_file: use_build_context_synchronously

part of 'delivery_imports.dart';


class DeliveryController {
  final GenericBloc<int> deliveryTypeCubit = GenericBloc(0);
  final GenericBloc<List<SellerShipping>> sellerShippingBloc = GenericBloc([]);
  Pickup? nearestPointModel;
  SellerShipping? selectedItem;

  Future<void> getShippingInfo({bool refresh = true}) async {
    return await GetShippingInfo().call(refresh).then(
          (value) => sellerShippingBloc.onUpdateData(value),
    );
  }

  void onChangeType(SellerShipping model, int value) {
    model.deliveryType = value;
    selectedItem = model;
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

  void onPresContinue(BuildContext context){
    if (selectedItem?.deliveryType == 1 && nearestPointModel == null) {
      CustomToast.showSimpleToast(msg: tr("chooseNearestPickupPoint"));
      return;
    }

    if(isHaveDeliveryAndTimeAfterTenPm(context)){
      return ;
    }

    setCartStoreShipping(context);
  }

  Future<void> setCartStoreShipping(BuildContext context) async {
    var params = _setCartStoreParams();
    var data = await SetCartStoreShipping().call(params);
    if (data != null) {
      CustomToast.showSimpleToast(msg: tr('shippingAdded'),type: ToastType.success);
      AutoRouter.of(context).push(CartPaymentRoute(shipping: data));
    }
  }

  void onSelectPoint(Pickup? model) {
    nearestPointModel = null;
    if (model != null) {
      nearestPointModel = model;
    }
  }

  List<Map> _setCartStoreParams() {
    var shipping = sellerShippingBloc.state.data;
    var arrangedItems = shipping
        .map(
          (e) => {
        'owner_id':  e.ownerId,
        'shipiing_type': e.deliveryType == 0
            ? DeliveryTypeEnum.delivery.getEnumValue()
            : DeliveryTypeEnum.pickUp.getEnumValue()
      },
    )
        .toList();
    return arrangedItems;
  }

  Future<void> applyCoupon(String param) async {
    var data = await ApplyCoupon().call(param);
    if (data != null) {
      CustomToast.showSimpleToast(msg: "");
    }
  }
}
