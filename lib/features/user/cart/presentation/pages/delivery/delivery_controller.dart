// ignore_for_file: use_build_context_synchronously

part of 'delivery_imports.dart';

class DeliveryController {
  final GenericBloc<int> deliveryTypeCubit = GenericBloc(0);
  final GenericBloc<List<SellerShipping>> sellerShippingBloc = GenericBloc([]);
  Pickup? nearestPointModel;

  DeliveryController() {
    getShippingInfo(refresh: false);
    getShippingInfo();
  }

  Future<void> setCartStoreShipping(BuildContext context) async {
    var params = _setCartStoreParams();
    var data = await SetCartStoreShipping().call(params);
    if (data != null) {
      CustomToast.showSimpleToast(msg: "The Shipping info has been added successfully");
      AutoRouter.of(context).push(CartPaymentRoute(shipping: data));
    }
  }

  void onSelectPoint(Pickup? model) {
    if (model != null) {
      nearestPointModel = model;
    }
  }

  Future<void> getShippingInfo({bool refresh = true}) async {
    return await GetShippingInfo().call(refresh).then(
          (value) => sellerShippingBloc.onUpdateData(value),
        );
  }

  List<Map> _setCartStoreParams() {
    var shipping = sellerShippingBloc.state.data;
    var arrangedItems =  shipping
        .map(
          (e) => {
            'owner_id': e.deliveryType == 0 ? e.ownerId : nearestPointModel!.id,
            'shipiing_type': e.deliveryType == 0 ? 'DELIVERY' : 'LOCAL_PICKUP'
          },
        )
        .toList();
    log(arrangedItems.toString());
    return arrangedItems;
  }


  Future<void> applyCoupon(String param) async {
    var data = await ApplyCoupon().call(param);
    if (data != null) {
      CustomToast.showSimpleToast(msg: "");
    }
  }
}
