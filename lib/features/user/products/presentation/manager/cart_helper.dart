// ignore_for_file: use_build_context_synchronously

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/helpers/custom_toast.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/get_device_id.dart';
import 'package:flutter_tdd/core/helpers/loading_helper.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:flutter_tdd/features/user/base/presentation/manager/count_cubit/count_cubit.dart';
import 'package:flutter_tdd/features/user/cart/domain/entities/delete_cart_item_params.dart';
import 'package:flutter_tdd/features/user/cart/domain/entities/get_cart_items_params.dart';
import 'package:flutter_tdd/features/user/cart/domain/entities/update_cart_params.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/cart.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/cart_item.dart';
import 'package:flutter_tdd/features/user/cart/domain/use_cases/add_product_to_cart.dart';
import 'package:flutter_tdd/features/user/cart/domain/use_cases/delete_item_from_cart.dart';
import 'package:flutter_tdd/features/user/cart/domain/use_cases/get_cart_items.dart';
import 'package:flutter_tdd/features/user/cart/domain/use_cases/update_cart_item.dart';
import 'package:flutter_tdd/features/user/products/domain/entities/add_product_to_cart_params.dart';
import 'package:flutter_tdd/features/user/products/domain/entities/variant_price_params.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product_options.dart';
import 'package:flutter_tdd/features/user/products/domain/use_cases/get_variant_price.dart';
import 'package:flutter_tdd/features/user/products/presentation/widgets/build_add_to_cart_dialog.dart';
import 'package:injectable/injectable.dart';

@injectable
class CartHelper {
  List<String> selectedVariants = [];

  void onSelectAttributes(
      BuildContext context,
      GenericBloc<Product?> productCubit,
      List<ProductOptions> model,
      int index,
      int position) {
    List<String> selected = [];
    var optionItem = model[index];
    List<String> attributes = optionItem.selectedAttribute!;
    if (optionItem.hasValue == true) {
      attributes.clear();
      attributes.add(optionItem.options![position]);
    } else {
      attributes.add(optionItem.options![position]);
    }
    optionItem.hasValue = true;
    model.where((element) => element.hasValue == true).map((e) {
      selected.addAll(e.selectedAttribute!);
      selectedVariants = selected;
      return e;
    }).toList();
    productCubit.state.data?.minQty = 1;
    productCubit.onUpdateData(productCubit.state.data);
    
    getVariantPrice(context, productCubit);
  }

  Future<void> getVariantPrice(
      BuildContext context, GenericBloc<Product?> productCubit) async {
    var params = _variantPriceParams(productCubit.state.data!.id!);
    getIt<LoadingHelper>().showLoadingDialog();
    var result = await GetVariantPrice().call(params);
    if (result != null) {
      productCubit.state.data?.variant = result.variant;
      productCubit.onUpdateData(productCubit.state.data);
    }
    getIt<LoadingHelper>().dismissDialog();
  }

  void onIncreaseQty(GenericBloc<Product?> productCubit) {
    var variantPrice = productCubit.state.data?.variant;
    var price = double.parse(variantPrice!.calculablePrice!.replaceAll(",", ""));
    price = price / productCubit.state.data!.minQty!;
    if (variantPrice.currentStock! >= 1) {
      if (variantPrice.currentStock! > productCubit.state.data!.minQty!) {
        var newQty = productCubit.state.data!.minQty! + 1;
        productCubit.state.data!.minQty = newQty;

        var priceQty = newQty * price;
        variantPrice.calculablePrice = priceQty.toString();
        productCubit.onUpdateData(productCubit.state.data);
      } else {
        CustomToast.showSimpleToast(
            msg: "${tr("only")} ${variantPrice.currentStock} ${tr("availableStock")}");
        return;
      }
    } else {
      CustomToast.showSimpleToast(msg: tr('outOfStock'));
      return;
    }
  }

  void onDecreaseQty(GenericBloc<Product?> productCubit) {
    var variantPrice = productCubit.state.data?.variant;
    var price = double.parse(variantPrice!.calculablePrice!.replaceAll(",", ""));
    if (productCubit.state.data!.minQty! > 1) {
      var priceQty = price - (price / productCubit.state.data!.minQty!);
      productCubit.state.data!.minQty = productCubit.state.data!.minQty! - 1;
      variantPrice.calculablePrice = priceQty.toString();
      productCubit.onUpdateData(productCubit.state.data);
    }
  }

  Future<void> addProductToCart(BuildContext context, int qty, int? variantId,
      {required Function() onAddCartFunc}) async {
    var params = await _addToCartParams(variantId, qty);
    if (params.variantId == null) {
      CustomToast.showSimpleToast(msg: tr('variantNotFound'));
      return;
    }
    var data = await AddProductToCart().call(params);
    if (data != '') {
      var countCubit = context.read<CountCubit>().state;
      var cartCount = countCubit.cartCount + 1;
      context.read<CountCubit>().onUpdateCount(cartCount, countCubit.discount);
      CustomToast.showSimpleToast(
          msg: tr('productAddedToYourCart'), type: ToastType.success);
    }
    onAddCartFunc();
  }


  void addToCartDialog(BuildContext context, Product product,{void Function()? afterAddToCart}) {
    showDialog(
      context: context,
      builder: (context) => BuildAddToCartDialog(
        product: product,
        afterAddToCart: afterAddToCart,
      ),
    );
  }



  Future<CartDomainModel> getCartItems({bool refresh = true}) async {
    String? token = await getIt<GetDeviceId>().deviceId;
    var params = _cartParams(refresh, token!);
    return await GetCart().call(params);
  }




  Future<CartDomainModel?> updateCartItem(int qty, int id) async {
    final params = await _updateCartItemParams(qty, id);
    final result = await UpdateCartItem().call(params); // your API call
    return result;
  }


  Future<bool> deleteItemFromCart(BuildContext context,CartItem cartItem) async {
    var params = await _deleteItemFromCart(cartItem.id);
    return  await DeleteItemFormCart().call(params);
  }

  Future<DeleteCartItemParams> _deleteItemFromCart(int id) async {
    return DeleteCartItemParams(
      id: id,
      deviceId: await getIt<GetDeviceId>().deviceId,
    );
  }

  CartParams _cartParams(bool refresh, String token) {
    return CartParams(
      macAddress: token,
      refresh: refresh,
    );
  }

  Future<AddProductToCartParams> _addToCartParams(
      int? variantId, int qty) async {
    return AddProductToCartParams(
      quantity: qty,
      variantId: variantId,
      macAddress: await getIt<GetDeviceId>().deviceId,
    );
  }

  VariantPriceParams _variantPriceParams(int id) {
    return VariantPriceParams(
      id: id,
      variants: selectedVariants.join(','),
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
