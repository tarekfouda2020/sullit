// ignore_for_file: use_build_context_synchronously

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/helpers/custom_toast.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/facebook_events_helper.dart';
import 'package:flutter_tdd/core/helpers/loading_helper.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:flutter_tdd/features/user/base/presentation/manager/count_cubit/count_cubit.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/cart_item.dart';
import 'package:flutter_tdd/features/user/products/data/data_source/locale_data_sources/compare_products_db.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';
import 'package:flutter_tdd/features/user/products/domain/use_cases/set_toggle_favourite.dart';
import 'package:flutter_tdd/features/user/products/presentation/manager/cart_helper.dart';
import 'package:injectable/injectable.dart';

@injectable
class ProductsHelper {
  Future<void> toggleFavourite({
    required BuildContext context,
    required int id,
    required Function() onRefresh,
    GenericBloc<bool>? loadingBloc,
    String? price,
  }) async {
    bool auth = context.read<DeviceCubit>().state.model.auth;
    if (!auth) {
      CustomToast.showAuthDialog(context);
      return;
    }
    if (loadingBloc != null) {
      loadingBloc.onUpdateData(true);
    }
    var data = await SetToggleFavourite().call(id);
    if (loadingBloc != null) {
      loadingBloc.onUpdateData(false);
    }
    if (data) {
      CustomToast.showSimpleToast(
        msg: tr('itemAddedToWishlist'),
        type: ToastType.success,
      );
      FacebookEventsHelper.instance.wishList(id: id.toString(), price: double.parse(price??"0.0"));
    } else {
      CustomToast.showSimpleToast(
        msg: tr('itemRemovedFromWishlist'),
        type: ToastType.success,
      );
    }
    onRefresh();
  }

  Future<int> addProductToCompare(
      {required BuildContext context, required Product product}) async {
    bool auth = context.read<DeviceCubit>().state.model.auth;
    if (!auth) {
      CustomToast.showAuthDialog(context);
      return 0;
    } else {
      var isAdded = await isAddedToCompared(product);
      if (isAdded == true) {
        var data = getIt<ComparedProductsDb>().deleteItem(product.id!);
        CustomToast.showSimpleToast(
          msg: tr('itemDeletedFromCompare'),
          type: ToastType.success,
        );
        product.isAddedTCompare = false;
        return data;
      } else {
        return _addItemToCompare(product, context);
      }
    }
  }

  Future<int> _addItemToCompare(Product product, BuildContext context) async {
    var params = _comparedParams(product, context);
    var data = getIt<ComparedProductsDb>().insertItem(params);
    CustomToast.showSimpleToast(
      msg: tr('itemAddedToCompare'),
      type: ToastType.success,
    );
    product.isAddedTCompare = true;
    return data;
  }

  Future<bool> isAddedToCompared(Product product) async {
    var exitedItems = await getComparedProducts();
    if (exitedItems.isNotEmpty) {
      if (exitedItems
          .where((element) => element.productId == product.id)
          .toList()
          .isNotEmpty) {
        return true;
      } else {
        return false;
      }
    } else {
      return false;
    }
  }

  Future<List<ProductsTableData>> getComparedProducts() async {
    return await getIt<ComparedProductsDb>().getItems();
  }

  ProductsTableData _comparedParams(Product product, BuildContext context) {
    return ProductsTableData(
        product: json.encode(product.toJson()), productId: product.id);
  }

  Future<void> addProductToCart(BuildContext context, Product product,
      {void Function()? afterAddToCart}) async {
    var existCount = context.read<CountCubit>().state.cartCount;
    await getIt<CartHelper>().addProductToCart(
      context,
      product.minQty!,
      product.variant?.id,
      showLoader: false,
      onAddCartFunc: () {
        FacebookEventsHelper.instance.productAddToCart(
        price:product.variant?.calculablePrice ??"" ,
          id: product.id!,
        );
        getIt<CartHelper>().updateCartCount(context, product.minQty! + existCount);
        if (afterAddToCart != null) {
          afterAddToCart.call();
        }
      },
    );
  }

  Future<bool> removeProductFromCart(Product product, BuildContext context) async{
    var cartList = getIt<CartHelper>().cartItemsBloc.state.data.items;
    if (cartList?.isNotEmpty == true && cartList != null) {
      getIt<LoadingHelper>().showLoadingDialog();
      CartItem productInCartList = cartList.where((element) => element.productId == product.id).first;
     var result  = await getIt<CartHelper>().deleteItemFromCart(context, productInCartList);
     if(result){
       var cartData = getIt<CartHelper>().cartItemsBloc.state.data;
       getIt<CartHelper>().updateCartCount(context, (cartData.items!.length - cartData.items!.length-1));
     }
      getIt<LoadingHelper>().dismissDialog();
     return result;
    }else{
      return false;
    }

  }

  /// Reduces product quantity in cart by 1.
  /// If current quantity is 1, deletes the item from cart.
  /// Returns true if operation was successful, false otherwise.
  Future<bool> reduceProductQntInCart(
    BuildContext context,
    Product product,
  {GenericBloc<bool>? loadingBloc}
  ) async {
    var cartList = getIt<CartHelper>().cartItemsBloc.state.data.items;
    if (cartList == null || cartList.isEmpty) {
      return false;
    }

    var cartItems = cartList.where((element) => element.productId == product.id);
    if (cartItems.isEmpty) {
      return false;
    }

    var cartItem = cartItems.first;


    if(cartItem.quantity == product.minQty){
      getIt<LoadingHelper>().showLoadingDialog();
      final deleted = await getIt<CartHelper>().deleteItemFromCart(context, cartItem);
      getIt<LoadingHelper>().dismissDialog();
      if (deleted) {
        var updatedCart = getIt<CartHelper>().cartItemsBloc.state.data;
        updatedCart.items?.remove(cartItem);
        product.addedQtyToCart = 0;
        getIt<CartHelper>().cartItemsBloc.onUpdateData(updatedCart);
        getIt<CartHelper>().updateCartCountWithCart(context, updatedCart);
      }
      return deleted;
    }

    if (cartItem.quantity > 1) {
      loadingBloc?.onUpdateData(true);
      final newQty = cartItem.quantity - 1;
      final success = await getIt<CartHelper>().updateCartItem(newQty, cartItem.id);
      loadingBloc?.onUpdateData(false);
      if (success != null) {
        cartItem.quantity = newQty;
        product.addedQtyToCart = newQty;
        getIt<CartHelper>().cartItemsBloc.onUpdateData(success);
        getIt<CartHelper>().updateCartCountWithCart(context, success);
        return true;
      }
    }
    return false;
  }
}
