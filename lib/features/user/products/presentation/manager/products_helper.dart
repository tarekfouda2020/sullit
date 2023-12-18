// ignore_for_file: use_build_context_synchronously

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/helpers/custom_toast.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:flutter_tdd/features/user/products/data/data_source/locale_data_sources/compare_products_db.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';
import 'package:flutter_tdd/features/user/products/domain/use_cases/set_toggle_favourite.dart';
import 'package:injectable/injectable.dart';

@injectable
class ProductsHelper {
  Future<void> toggleFavourite({
    required BuildContext context,
    required int id,
    required Function() onRefresh,
  }) async {
    bool auth = context.read<DeviceCubit>().state.model.auth;
    if (!auth) {
      CustomToast.showAuthDialog(context);
      return;
    }
    var data = await SetToggleFavourite().call(id);
    if (data) {
      CustomToast.showSimpleToast(
        msg: tr('itemAddedToWishlist'),
        type: ToastType.success,
      );
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
      print("======>$isAdded");
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
}
