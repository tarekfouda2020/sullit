// ignore_for_file: use_build_context_synchronously

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/helpers/custom_toast.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/get_device_id.dart';
import 'package:flutter_tdd/features/user/cart/domain/use_cases/add_product_to_cart.dart';
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

  void getVariantPrice(
      BuildContext context, GenericBloc<Product?> productCubit) async {
    var params = _variantPriceParams(productCubit.state.data!.id!);
    var result = await GetVariantPrice().call(params);
    if (result != null) {
      productCubit.state.data?.variant = result.variant;
      productCubit.onUpdateData(productCubit.state.data);
    }
  }

  void onIncreaseQty(GenericBloc<Product?> productCubit) {
    var variantPrice = productCubit.state.data?.variant;
    var price = double.parse(variantPrice!.calculablePrice!);
    price = price / productCubit.state.data!.minQty!;
    log(">>>>${variantPrice.currentStock}");
    if (variantPrice.currentStock! >= 1) {
      if (variantPrice.currentStock! > productCubit.state.data!.minQty!) {
        var newQty = productCubit.state.data!.minQty! + 1;
        productCubit.state.data!.minQty = newQty;

        var priceQty = newQty * price;
        variantPrice.calculablePrice = priceQty.toString();
        productCubit.onUpdateData(productCubit.state.data);
      } else {
        CustomToast.showSimpleToast(
            msg: "Only ${variantPrice.currentStock} available in stock");
        return;
      }
    } else {
      CustomToast.showSimpleToast(msg: "Out Of Stock");
      return;
    }
  }

  void onDecreaseQty(GenericBloc<Product?> productCubit) {
    var variantPrice = productCubit.state.data?.variant;
    var price = double.parse(variantPrice!.calculablePrice!);
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
    log(">>>>>${params.toJson()}");
    if (params.variantId == null) {
      CustomToast.showSimpleToast(msg: 'Variant not found. !');
      return;
    }
    var data = await AddProductToCart().call(params);
    if (data != '') {
      CustomToast.showSimpleToast(
          msg: 'Product added to your cart.', type: ToastType.success);
    }
    onAddCartFunc();
  }

  void addToCartDialog(BuildContext context, Product product) {
    showDialog(
      context: context,
      builder: (context) => BuildAddToCartDialog(
        product: product,
      ),
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
}
