// ignore_for_file: use_build_context_synchronously

part of 'pharmacy_cart_imports.dart';

class PharmacyCartController {
  final GenericBloc<CartDomainModel> cartItemsBloc =
      GenericBloc<CartDomainModel>(CartDomainModel());

  final GenericBloc<bool> haveInsuranceCubit = GenericBloc<bool>(false);

  final GenericBloc<Shop?> pharmacyBloc = GenericBloc<Shop?>(null);

  final int? pharmacyId;

  bool fromPharmacyDetails = true;


  PharmacyCartController({this.pharmacyId, this.fromPharmacyDetails = true});

  Future<void> getData() async {
    getCartItems(refresh: false);
    getCartItems();
    _getPharmacyDetails(fromRemote: false);
    _getPharmacyDetails();
  }

  Future<void> getCartItems({bool refresh = true}) async {
    String? token = await getIt<GetDeviceId>().deviceId;
    var params = _cartParams(refresh, token!);
    await GetCart().call(params).then(
      (value) {
        cartItemsBloc.onUpdateData(value);
      },
    );
  }

  CartParams _cartParams(bool refresh, String token) {
    return CartParams(
      macAddress: token,
      refresh: refresh,
      type: CartTypeEnum.pharmacy,
    );
  }

  Future<bool> onIncreaseCart(
      BuildContext context, GeneralCartItem cartItem, int newQty) async {
    final success =
        await getIt<CartHelper>().updateCartItem(newQty, cartItem.id);
    if (success != null) {
      cartItem.quantity = newQty;
      cartItemsBloc.onUpdateData(success);
      FacebookEventsHelper.instance
          .productAddToCart(id: cartItem.productId, price: cartItem.price);
      return true;
    } else {
      return false;
    }
  }

  void whileOnIncreaseCount(BuildContext context, GeneralCartItem cartItem,
      String value, GenericBloc<int> qntCubit) {
    if (qntCubit.state.data < cartItem.stockQty) {
      var newQty = qntCubit.state.data + 1;
      qntCubit.onUpdateData(newQty);
      DebounceHelper.instance.startSearch(
          value: value,
          milliseconds: AppConstants.instance.debounceTimeInBackGround,
          onSearch: (val) async {
            var result = await onIncreaseCart(context, cartItem, newQty);
            if (!result) {
              qntCubit.onUpdateData(cartItem.quantity);
            }
          });
    } else {
      CustomToast.showSimpleToast(
        msg: '${tr("only")} ${cartItem.stockQty} ${tr("availableStock")}',
      );
    }
  }

  Future<bool> onDecreaseCart(
      BuildContext context, GeneralCartItem cartItem, int newQty) async {
    final success =
        await getIt<CartHelper>().updateCartItem(newQty, cartItem.id);
    if (success != null) {
      cartItem.quantity = newQty;
      cartItemsBloc.onUpdateData(success);
      return true;
    } else {
      CustomToast.showSimpleToast(
        msg: "can't reduce product quantity",
      );
      return false;
    }
  }

  void whileOnDecreaseCount(BuildContext context, GeneralCartItem cartItem,
      String value, GenericBloc<int> qntCubit) {
    var qnt = qntCubit.state.data;
    if (qnt > 1) {
      var newQty = qnt - 1;
      qntCubit.onUpdateData(newQty);
      DebounceHelper.instance.startSearch(
          value: value,
          milliseconds: AppConstants.instance.debounceTimeInBackGround,
          onSearch: (val) async {
            var result = await onDecreaseCart(context, cartItem, newQty);
            if (!result) {
              qntCubit.onUpdateData(cartItem.quantity);
            }
          });
    } else {
      deleteItemFromCart(context, cartItem);
      return;
    }
  }

  Future<void> deleteItemFromCart(
      BuildContext context, GeneralCartItem cartItem) async {
    getIt<LoadingHelper>().showLoadingDialog();
    var data = await getIt<CartHelper>().deleteItemFromCart(context, cartItem);
    getIt<LoadingHelper>().dismissDialog();
    if (data) {
      if (cartItemsBloc.state.data.pharmacyItems != null) {
        cartItemsBloc.state.data.pharmacyItems!
            .removeWhere((item) => item.id == cartItem.id);
      }
      await getCartItems(refresh: true);
      if (cartItemsBloc.state.data.pharmacyItems == null ||
          (cartItemsBloc.state.data.pharmacyItems ?? []).isEmpty) {
        CustomToast.showSimpleToast(
            msg: "Your cart has been cleared successfully.",
            type: ToastType.success);
        AutoRouter.of(context).pop();
        return;
      }
      getIt<CartHelper>()
          .updateCartCountWithCart(context, cartItemsBloc.state.data);
      CustomToast.showSimpleToast(
          msg: tr('itemDeleted'), type: ToastType.success);
    }
  }


  void showClearDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return BuildDeleteDialog(
          onPressConfirm: () => clearCart(context),
          content: tr("want_to_clear_your_cart"),
        );
      },
    );
  }

  Future<void> clearCart(BuildContext context) async {
    final token = await getIt<GetDeviceId>().deviceId;
    final params =
        ClearCartParams(macAddress: token ?? "", type: CartTypeEnum.pharmacy);
    await ClearCart().call(params).then((value) async {
      CustomToast.showSimpleToast(
          msg: "Your cart has been cleared successfully.",
          type: ToastType.success);
      cartItemsBloc.state.data.pharmacyItems?.clear();
      cartItemsBloc.onUpdateData(cartItemsBloc.state.data);
      Navigator.pop(context);
      onBack(context);
    });
  }

  void onBack(BuildContext context) {
    AutoRouter.of(context).pop(cartItemsBloc.state.data);
  }

  void navigateToShipping(BuildContext context) {
    final cartData = cartItemsBloc.state.data;
    if ((cartData.pharmacyItems ?? []).isEmpty) {
      return;
    }
    bool auth = context.read<DeviceCubit>().state.model.auth;
    if (auth) {
      if (cartData.minimumStatus == false) {
        CustomToast.showSimpleToast(msg: cartData.minimumAmountMsg!);
        return;
      }
      AutoRouter.of(context).push(PharmacyAddressRoute(
        haveInsurance: haveInsuranceCubit.state.data && cartItemRequiredInsurance,
        havePrescription: havePrescription,
        pharmacy: pharmacyBloc.state.data
      ));
    } else {
      CustomToast.showAuthDialog(context);
    }
  }

  bool get havePrescription =>
      cartItemsBloc.state.data.pharmacyItems
          ?.any((element) => element.prescriptionRequired == true) ==
      true;

  bool get cartItemRequiredInsurance => insuranceAllowInCart && haveInsuranceCubit.state.data;



  bool get insuranceAllowInCart => cartItemsBloc.state.data.pharmacyItems
      ?.any((element) => element.insuranceEligible == true) ==
      true;


  Future<void> _getPharmacyDetails({bool fromRemote = true}) async {
    var data = await GetShopDetails().call(
      ShopIdParams(shopId: pharmacyId!, refresh: fromRemote),
    );
    if(data!= null){
      pharmacyBloc.onUpdateData(data);
    }

  }



  Future<void> onPressPlus(BuildContext context)async{
    if(fromPharmacyDetails){
      AutoRouter.of(context).pop();
    }else{
     if(pharmacyId!= null){
       var result = await AutoRouter.of(context).push(PharmacyDetailsRoute(
           pharmacyId: pharmacyId!,
           fromCart: true
       ));
       if(result == true){
         getCartItems();
       }
     }
    }


  }



}
