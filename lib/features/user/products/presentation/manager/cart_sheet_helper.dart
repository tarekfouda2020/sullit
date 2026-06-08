import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/app_constants.dart';
import 'package:flutter_tdd/core/helpers/custom_toast.dart';
import 'package:flutter_tdd/core/helpers/debounce_helper.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/loading_helper.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/cart.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/general_cart_item.dart';
import 'package:flutter_tdd/features/user/products/presentation/manager/cart_helper.dart';
import 'package:flutter_tdd/features/user/products/presentation/manager/cart_sheet_controller.dart';

class StandaloneCartSheetController implements CartSheetController {
  StandaloneCartSheetController(this._cartHelper);

  final CartHelper _cartHelper;

  @override
  GenericBloc<CartDomainModel> get cartItemsBloc => _cartHelper.cartItemsBloc;

  @override
  Future<void> getCartItems({bool refresh = true}) async {
    await _cartHelper.getCartItems(refresh: refresh);
  }

  void onIncreaseCartQnt(
      BuildContext context, GeneralCartItem cartItem, newQty) async {
    final success =
        await getIt<CartHelper>().updateCartItem(newQty, cartItem.id);
    if (success != null) {
      cartItem.quantity = newQty;
      cartItemsBloc.onUpdateData(success);
    }
  }

  @override
  Future<void> onIncreaseCart(BuildContext context, GeneralCartItem cartItem,
      GenericBloc<int> qntCubit, String value) async {
    if (cartItem.quantity < cartItem.stockQty) {
      var newQty = qntCubit.state.data + 1;
      qntCubit.onUpdateData(newQty);
      DebounceHelper.instance.startSearch(
          value: value,
          milliseconds: AppConstants.instance.debounceTimeInBackGround,
          onSearch: (val) {
            onIncreaseCartQnt(context, cartItem, newQty);
          });
    } else {
      CustomToast.showSimpleToast(
        msg: '${tr("only")} ${cartItem.stockQty} ${tr("availableStock")}',
      );
    }
  }

  void onDecreaseCartQnt(
      BuildContext context, GeneralCartItem cartItem, int newQty) async {
    if (cartItem.quantity == 1) {
      deleteItemFromCart(context, cartItem);
      return;
    }
    if (cartItem.quantity > 1) {
      final newQty = cartItem.quantity - 1;
      final success = await _cartHelper.updateCartItem(newQty, cartItem.id);
      if (success != null) {
        cartItem.quantity = newQty;
        cartItemsBloc.onUpdateData(success);
      }
    }
  }

  @override
  Future<void> onDecreaseCart(BuildContext context, GeneralCartItem cartItem,
      GenericBloc<int> qntCubit, String value) async {
    if (cartItem.quantity > 1) {
      var newQty = qntCubit.state.data - 1;
      var data = cartItemsBloc.state.data;
      qntCubit.onUpdateData(newQty);
      var index = data.items!.indexOf(cartItem);
      cartItemsBloc.state.data.items![index] = cartItem;
      cartItemsBloc.onUpdateData(data);
      DebounceHelper.instance.startSearch(
          value: value,
          milliseconds: AppConstants.instance.debounceTimeInBackGround,
          onSearch: (val) {
            onDecreaseCartQnt(context, cartItem, newQty);
          });
    }
  }

  @override
  Future<void> deleteItemFromCart(
      BuildContext context, GeneralCartItem cartItem) async {
    getIt<LoadingHelper>().showLoadingDialog();
    final deleted = await _cartHelper.deleteItemFromCart(context, cartItem);
    if (deleted) {
      double subTotal =
          double.parse(cartItemsBloc.state.data.subTotal ?? "0.0");
      double removedItemPrice = double.parse(cartItem.total);
      double newSubTotal = subTotal - removedItemPrice;
      cartItemsBloc.state.data.subTotal = newSubTotal.toStringAsFixed(2);
      cartItemsBloc.state.data.items?.remove(cartItem);
      if (cartItemsBloc.state.data.items?.isEmpty == true) {
        cartItemsBloc.onUpdateData(cartItemsBloc.state.data);
        getIt<LoadingHelper>().dismissDialog();
        getIt<CartHelper>().updateCartCount(context, 0);
        Navigator.pop(context);
      } else {
        await getCartItems();
        cartItemsBloc.onUpdateData(cartItemsBloc.state.data);
        getIt<LoadingHelper>().dismissDialog();
      }
    }
  }

  @override
  void updateFavFromSheet(GeneralCartItem cartItem) {
    cartItem.isWishlist = !cartItem.isWishlist;
  }

  @override
  Future<void> refreshProductDetails(BuildContext context) async {
    // Standalone controller has no product details to refresh.
  }

  @override
  int? get productId => null;

  String remainToGetMinAmount() {
    var total = double.parse(cartItemsBloc.state.data.subTotal ?? "0.0");
    var minAmount = cartItemsBloc.state.data.minimumAmount ?? 0.0;
    var remain = minAmount - total;
    return remain.toStringAsFixed(2);
  }

  @override
  String get minAmountRemain => remainToGetMinAmount();
}
