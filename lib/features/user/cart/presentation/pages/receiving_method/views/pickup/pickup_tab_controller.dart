// ignore_for_file: use_build_context_synchronously

part of 'pickup_tab_imports.dart';

class PickupTabController {
  final GenericBloc<int> deliveryTypeCubit = GenericBloc(0);
   final GenericBloc<List<SellerShipping>> sellerShippingBloc = GenericBloc([]);
  final GlobalKey<DropdownSearchState> sellerBranchKey = GlobalKey();
  late final ReceivingMethodController receivingMethodController;

  Future<void> getShippingInfo({bool refresh = true}) async {
    return await GetShippingInfo().call(refresh).then(
          (value) => sellerShippingBloc.onUpdateData(value),
        );
  }


  void onChangeType(SellerShipping model, DeliveryTypeEnum value) {
    model.deliveryType = value;
    sellerShippingBloc.onUpdateData(sellerShippingBloc.state.data);
  }

  // Future<void> setCartStoreShipping(BuildContext context) async {
  //   if (selectedItem?.deliveryType == 1 && nearestPointModel == null) {
  //     CustomToast.showSimpleToast(msg: tr("chooseNearestPickupPoint"));
  //     return;
  //   }
  //   var params = _setCartStoreParams();
  //   var data = await SetCartStoreShipping().call(params);
  //   if (data != null) {
  //     CustomToast.showSimpleToast(msg: tr('shippingAdded'),type: ToastType.success);
  //     AutoRouter.of(context).push(CartPaymentRoute(shipping: data));
  //   }
  // }

  void onSelectPoint(Pickup? pickupModel, SellerShipping item) {
    item.pickup.isSelected = !(item.pickup.isSelected ?? false);
    sellerShippingBloc.onUpdateData(sellerShippingBloc.state.data);
  }

  // List<Map> _setCartStoreParams() {
  //   var shipping = sellerShippingBloc.state.data;
  //   var arrangedItems = shipping
  //       .map(
  //         (e) => {
  //           'owner_id':  e.ownerId,
  //           'shipiing_type': e.deliveryType == 0 ? 'DELIVERY' : 'LOCAL_PICKUP'
  //         },
  //       )
  //       .toList();
  //   return arrangedItems;
  // }


  // List<Map> _setCartStoreParams() {
  //   var shipping = sellerShippingBloc.state.data;
  //   var arrangedItems = shipping
  //       .map(
  //         (e) => {
  //       'owner_id':  e.ownerId,
  //       'shipiing_type': e.deliveryType == 0 ? 'DELIVERY' : 'LOCAL_PICKUP'
  //     },
  //   )
  //       .toList();
  //   return arrangedItems;
  // }


  Future<void> applyCoupon(String param) async {
    var data = await ApplyCoupon().call(param);
    if (data != null) {
      CustomToast.showSimpleToast(msg: "");
    }
  }
}
