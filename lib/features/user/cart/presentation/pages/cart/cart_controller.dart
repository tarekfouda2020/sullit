// ignore_for_file: use_build_context_synchronously

part of 'cart_imports.dart';

class CartController {
  final GenericBloc<CartDomainModel> cartItemsBloc = GenericBloc(CartDomainModel());

  CartController() {
    getCartItems();
  }

  Future<void> getCartItems({bool refresh = true}) async {
    CartDomainModel result = await getIt<CartHelper>().getCartItems(refresh: refresh);
    cartItemsBloc.onUpdateData(result);
  }


  Future<void> deleteItemFromCart(BuildContext context,CartItem cartItem) async {
    var data = await getIt<CartHelper>().deleteItemFromCart(context,cartItem);
    if (data) {
      var newSubTotal =
          cartItemsBloc.state.data.calculableTotal! - cartItem.calculableTotal;
      cartItemsBloc.state.data.calculableTotal = newSubTotal;
      cartItemsBloc.state.data.items!.remove(cartItem);
      cartItemsBloc.onUpdateData(cartItemsBloc.state.data);
      updateCartCount(context);
      // var cartCount = countCubit.cartCount - 1;
      CustomToast.showSimpleToast(
          msg: tr('itemDeleted'), type: ToastType.success);
      // getCartItems();
    }
  }

  Future<void> onIncreaseCart(BuildContext context,CartItem cartItem, GenericBloc<bool> loadingCubit) async {
    if (cartItem.quantity < cartItem.stockQty) {
      loadingCubit.onUpdateData(true);
      final newQty = cartItem.quantity + 1;
      final success = await getIt<CartHelper>().updateCartItem(newQty, cartItem.id);
      loadingCubit.onUpdateData(false);
      if (success!=null) {
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

  Future<void> onDecreaseCart(BuildContext context,CartItem cartItem, GenericBloc<bool> loadingCubit) async {
    if (cartItem.quantity > 1) {
      loadingCubit.onUpdateData(true);

      final newQty = cartItem.quantity - 1;
      final success = await getIt<CartHelper>().updateCartItem(newQty, cartItem.id);
      loadingCubit.onUpdateData(false);
      if (success!=null) {
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
      if(cartItemsBloc.state.data.minimumStatus == false){
        CustomToast.showSimpleToast(msg: cartItemsBloc.state.data.minimumAmountMsg!);
        return ;
      }
      if (cartItemsBloc.state.data.items!.isNotEmpty) {
        AutoRouter.of(context).push(
          // const ReceivingMethodRoute(),
          const ShippingRoute(),
        );
      } else {
        CustomToast.showSimpleToast(msg: tr('cartIsEmpty'));
        return;
      }
    } else {
      CustomToast.showAuthDialog(context);
    }
  }


  void showClearDialog(BuildContext context){
    showDialog(
      context: context,
      builder: (context) {
        return  BuildDeleteDialog(
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
      cartItemsBloc.state.data.items!.clear();
      cartItemsBloc.onUpdateData(cartItemsBloc.state.data);
      var countCubit = context.read<CountCubit>().state;
      context.read<CountCubit>().onUpdateCount(0, countCubit.discount);
      Navigator.pop(context);
     await Future.delayed(const Duration(milliseconds: 300));
      Navigator.pop(context);
    });
  }


  void updateCartCount(BuildContext context){
    var allItemsCount = cartItemsBloc.state.data.items!.fold<int>(0, (previousValue, element) => previousValue+element.quantity,);
    var countCubit = context.read<CountCubit>().state;
    context.read<CountCubit>().onUpdateCount(allItemsCount, countCubit.discount);
  }


  Future<CartParams> _cartParams() async {
    return CartParams(
      macAddress: await getIt<GetDeviceId>().deviceId ?? "",
      refresh: false,
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
