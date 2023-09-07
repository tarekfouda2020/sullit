// ignore_for_file: use_build_context_synchronously

import 'package:auto_route/auto_route.dart';
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
class AddToCartHelper {
  List<String> selectedVariants = [];
  final GenericBloc<int> qtyCubit = GenericBloc(1);

  void onSelectAttributes(BuildContext context, List<ProductOptions> model,
      GenericBloc<Product?> productCubit, int position, int index) {
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
    qtyCubit.onUpdateData(1);
    productCubit.onUpdateData(productCubit.state.data);
    getVariantPrice(context, productCubit);
  }

  void getVariantPrice(
      BuildContext context, GenericBloc<Product?> productCubit) async {
    var params = _variantPriceParams(productCubit.state.data!.id!);
    var result = await GetVariantPrice().call(params);
    if (result != null) {
      productCubit.onUpdateData(result);
    }
  }

  void addToCartDialog(BuildContext context, Product product) {
    showDialog(
      context: context,
      builder: (context) => BuildAddToCartDialog(
        product: product,
      ),
    );
  }

  Future<void> addProductToCart(BuildContext context, int qty, int? variantId,
      {required Function() onAddCartFunc}) async {
    var params = await _addToCartParams(variantId, qty);
    print(">>>>>${params.toJson()}");
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
