// ignore_for_file: use_build_context_synchronously

part of 'cart_imports.dart';

class CartController {
  final GenericBloc<CartDomainModel> cartItemsBloc =
      GenericBloc(CartDomainModel());

  CartController() {
    getCartItems(refresh: false);
    getCartItems();
  }

  Future<void> getCartItems({bool refresh = true}) async {
    String? token = await getIt<GetDeviceId>().deviceId;
    var params = _cartParams(refresh, token!);
    return await GetCart().call(params).then(
          (value) => cartItemsBloc.onUpdateData(value),
        );
  }

  Future<void> updateCartItem(int qty, int id) async {
    var params = await _updateCartItemParams(qty, id);
    await UpdateCartItem().call(params).then(
      (value) {
        cartItemsBloc.onUpdateData(value!);
      },
    );
  }

  Future<void> deleteItemFromCart(BuildContext context,CartItem cartItem) async {
    var params = await _deleteItemFormCart(cartItem.id);
    var data = await DeleteItemFormCart().call(params);
    if (data) {
      var newSubTotal =
          cartItemsBloc.state.data.calculableTotal! - cartItem.calculableTotal;
      cartItemsBloc.state.data.calculableTotal = newSubTotal;
      cartItemsBloc.state.data.items!.remove(cartItem);
      cartItemsBloc.onUpdateData(cartItemsBloc.state.data);
      var countCubit = context.read<CountCubit>().state;
      var cartCount = countCubit.cartCount - 1;
      context.read<CountCubit>().onUpdateCount(cartCount, countCubit.discount);
      CustomToast.showSimpleToast(
          msg: tr('itemDeleted'), type: ToastType.success);
      // getCartItems();
    }
  }

  void onIncreaseCart(CartItem cartItem) {
    if (cartItem.quantity < cartItem.stockQty) {
      cartItem.quantity++;
      cartItemsBloc.onUpdateData(cartItemsBloc.state.data);
      updateCartItem(cartItem.quantity, cartItem.id);
    } else {
      CustomToast.showSimpleToast(
          msg: '${tr("only")} ${cartItem.stockQty} ${tr("availableStock")}');
    }
  }

  void onDecreaseCart(CartItem cartItem) {
    if (cartItem.quantity > 1) {
      cartItem.quantity--;
      cartItemsBloc.onUpdateData(cartItemsBloc.state.data);
      updateCartItem(cartItem.quantity, cartItem.id);
    }
  }

  void navigateToShipping(BuildContext context) {
    bool auth = context.read<DeviceCubit>().state.model.auth;
    if (auth) {
      if (cartItemsBloc.state.data.items!.isNotEmpty) {
        AutoRouter.of(context).push(
          const ReceivingMethodRoute(),
        );
      } else {
        CustomToast.showSimpleToast(msg: tr('cartIsEmpty'));
        return;
      }
    } else {
      CustomToast.showAuthDialog(context);
    }
  }

  GetCartItemsParams _cartParams(bool refresh, String token) {
    return GetCartItemsParams(
      macAddress: token,
      refresh: refresh,
    );
  }

  Future<DeleteCartItemParams> _deleteItemFormCart(int id) async {
    return DeleteCartItemParams(
      id: id,
      deviceId: await getIt<GetDeviceId>().deviceId,
    );
  }

  Future<UpdateCartItemParams> _updateCartItemParams(int qty, int id) async {
    return UpdateCartItemParams(
      macAddress: await getIt<GetDeviceId>().deviceId,
      qty: qty,
      id: id,
    );
  }
}
