// ignore_for_file: use_build_context_synchronously

part of 'cart_imports.dart';

class CartController {
  GenericBloc<CartDomainModel> get cartItemsBloc =>
      getIt<CartHelper>().cartItemsBloc;

  final CartNavigateHelper navigateHelper = getIt<CartNavigateHelper>();

  Key paymentViewKey = UniqueKey();
  Key confirmationViewKey = UniqueKey();

  CartController() {
    getIt<CartNavigateHelper>().initData();
    getCartItems();
  }

  Future<void> getCartItems({bool refresh = true}) async {
    cartItemsBloc.onUpdateToInitState(CartDomainModel());
    await getIt<CartHelper>().getCartItems(refresh: refresh);
  }

  Future<void> deleteItemFromCart(
      BuildContext context, CartItem cartItem) async {
    getIt<LoadingHelper>().showLoadingDialog();
    var data = await getIt<CartHelper>().deleteItemFromCart(context, cartItem);
    if (data) {
      num newSubTotal =
          cartItemsBloc.state.data.calculableTotal! - cartItem.calculableTotal;
      cartItemsBloc.state.data.calculableTotal = newSubTotal;
      // cartItemsBloc.state.data.items!.remove(cartItem);
      cartItemsBloc.state.data.minimumStatus =
          newSubTotal > (cartItemsBloc.state.data.minimumAmount ?? 0);
      cartItemsBloc.onUpdateData(cartItemsBloc.state.data);
      updateCartCount(context);
      await getCartItems(refresh: true);
      getIt<LoadingHelper>().dismissDialog();
      if (cartItemsBloc.state.data.items == null ||
          (cartItemsBloc.state.data.items ?? []).isEmpty) {
        getIt<CartNavigateHelper>().initData();
      }
      getIt<CartHelper>()
          .updateCartCountWithCart(context, cartItemsBloc.state.data);
      // var cartCount = countCubit.cartCount - 1;
      CustomToast.showSimpleToast(
          msg: tr('itemDeleted'), type: ToastType.success);
      // getCartItems();
    } else {
      getIt<LoadingHelper>().dismissDialog();
    }
  }

  Future<void> onIncreaseCart(BuildContext context, CartItem cartItem,
      GenericBloc<bool> loadingCubit) async {
    if (cartItem.quantity < cartItem.stockQty) {
      loadingCubit.onUpdateData(true);
      final newQty = cartItem.quantity + 1;
      final success =
          await getIt<CartHelper>().updateCartItem(newQty, cartItem.id);
      loadingCubit.onUpdateData(false);
      if (success != null) {
        cartItem.quantity = newQty;
        cartItemsBloc.onUpdateData(success);
        updateCartCount(context);
      }
      // else{
      //   CustomToast.showSimpleToast(
      //     msg: "can't add product",
      //   );
      // }
    } else {
      CustomToast.showSimpleToast(
        msg: '${tr("only")} ${cartItem.stockQty} ${tr("availableStock")}',
      );
    }
  }

  Future<void> onDecreaseCart(BuildContext context, CartItem cartItem,
      GenericBloc<bool> loadingCubit) async {
    if (cartItem.quantity > 1) {
      loadingCubit.onUpdateData(true);

      final newQty = cartItem.quantity - 1;
      final success =
          await getIt<CartHelper>().updateCartItem(newQty, cartItem.id);
      loadingCubit.onUpdateData(false);
      if (success != null) {
        cartItem.quantity = newQty;
        cartItemsBloc.onUpdateData(success);
        updateCartCount(context);
      }
      // else{
      //   CustomToast.showSimpleToast(
      //     msg: "can't remove product",
      //   );
      // }
    }
  }

  void navigateToShipping(BuildContext context) {
    bool auth = context.read<DeviceCubit>().state.model.auth;
    if (auth) {
      if (cartItemsBloc.state.data.minimumStatus == false) {
        CustomToast.showSimpleToast(
            msg: cartItemsBloc.state.data.minimumAmountMsg!);
        return;
      }
      if ((cartItemsBloc.state.data.items ?? []).isNotEmpty) {
        getIt<CartNavigateHelper>()
            .setStep(CartNavigateHelper.shippingStepIndex, force: true);
      } else {
        CustomToast.showSimpleToast(msg: tr('cartIsEmpty'));
        return;
      }
    } else {
      CustomToast.showAuthDialog(context);
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
    var params = await _cartParams();
    await ClearCart().call(params).then((value) async {
      CustomToast.showSimpleToast(msg: value, type: ToastType.success);
      getIt<CartNavigateHelper>().initData();
      cartItemsBloc.state.data.items!.clear();
      cartItemsBloc.onUpdateData(cartItemsBloc.state.data);
      var countCubit = context.read<CountCubit>().state;
      context.read<CountCubit>().onUpdateCount(0, countCubit.discount);
      getIt<Utilities>().popManyTimes(context, 2);
    });
  }

  void updateCartCount(BuildContext context) {
    var allItemsCount = cartItemsBloc.state.data.items!.fold<int>(
      0,
      (previousValue, element) => previousValue + element.quantity,
    );
    var countCubit = context.read<CountCubit>().state;
    context
        .read<CountCubit>()
        .onUpdateCount(allItemsCount, countCubit.discount);
  }

  void onStepChanged(int step) {
    print(
        "========>>>${step == CartNavigateHelper.paymentStepIndex}<<<<<<<=====");
    print(
        "========>>>${step == CartNavigateHelper.confirmationStepIndex}<<<<<<<=====");
    if (step == CartNavigateHelper.paymentStepIndex) {
      refreshPaymentView();
    } else if (step == CartNavigateHelper.confirmationStepIndex) {
      refreshConfirmationView();
    }
  }

  void refreshPaymentView() {
    paymentViewKey = UniqueKey();
  }

  void refreshConfirmationView() {
    confirmationViewKey = UniqueKey();
  }

  domain_shipping.Shipping? get paymentShipping =>
      getIt<CartNavigateHelper>().cartCheckOutPageData.orderSummaryCheckOut;

  OrderSummary? get confirmationSummary =>
      getIt<CartNavigateHelper>().confirmationSummary;

  int? get confirmationCombinedId =>
      getIt<CartNavigateHelper>().confirmationCombinedId;

  Future<CartParams> _cartParams() async {
    return CartParams(
      macAddress: await getIt<GetDeviceId>().deviceId ?? "",
      refresh: false,
    );
  }

  bool onPressBack() {
    if (navigateHelper.currentStep > CartNavigateHelper.cartStepIndex &&
        navigateHelper.currentStep < CartNavigateHelper.confirmationStepIndex) {
      navigateHelper.backOneStep();
      return false;
    }
    return true;
  }

  Future<UpdateCartItemParams> _updateCartItemParams(int qty, int id) async {
    return UpdateCartItemParams(
      macAddress: await getIt<GetDeviceId>().deviceId,
      qty: qty,
      id: id,
    );
  }
}
