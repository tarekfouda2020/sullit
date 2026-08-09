import 'dart:convert';
import 'dart:developer';

import 'package:flutter_tdd/core/helpers/hive_helper.dart';
import 'package:flutter_tdd/features/user/instore_cart/data/models/instore_cart_item_model/instore_cart_item_model.dart';
import 'package:flutter_tdd/features/user/instore_cart/data/models/instore_cart_model/instore_cart_model.dart';

class InstoreCartHelper {
  const InstoreCartHelper._();

  static const InstoreCartHelper instance = InstoreCartHelper._();

  InstoreCartModel? getLocalCart() {
    final json = HiveHelper.instance.getDataFromBox<String, int>(
      HiveBoxesNames.instoreCart,
    );
    if (json == null || json.isEmpty) return null;
    final Map<String, dynamic> decoded =
        jsonDecode(json) as Map<String, dynamic>;
    return InstoreCartModel.fromJson(decoded);
  }

  Future<void> _saveCart(InstoreCartModel cart) async {
    final json = jsonEncode(cart.toJson());
    await HiveHelper.instance.addDataToBox<String, int>(
      HiveBoxesNames.instoreCart,
      json,
    );
  }

  double _calculateSubTotal(List<InstoreCartItemModel> items) {
    return items.fold<double>(0, (sum, item) => sum + (item.price * item.qnt));
  }

  List<InstoreCartItemModel> getCartItems() {
    return getLocalCart()?.items ?? [];
  }

  InstoreCartItemModel? getItemFromCart({required int variantId}) {
    final cart = getLocalCart();
    if (cart == null) return null;

    try {
      return cart.items.firstWhere((e) => e.variantId == variantId);
    } catch (_) {
      return null;
    }
  }

  Future<void> addItemToCart({
    required int sellerId,
    required String sellerName,
    required InstoreCartItemModel item,
  }) async {
    InstoreCartModel? cart = getLocalCart();

    if (cart == null) {
      final items = [item];
      await _saveCart(
        InstoreCartModel(
          sellerId: sellerId,
          sellerName: sellerName,
          subTotal: _calculateSubTotal(items),
          items: items,
        ),
      );
      return;
    }

    if (cart.sellerId != sellerId) {
      final items = [item];
      await _saveCart(
        InstoreCartModel(
          sellerId: sellerId,
          sellerName: sellerName,
          subTotal: _calculateSubTotal(items),
          items: items,
        ),
      );
      return;
    }

    final index =
        cart.items.indexWhere((e) => e.variantId == item.variantId);
    if (index != -1) {
      final updatedItems = [...cart.items];
      final existing = updatedItems[index];
      updatedItems[index] = existing.copyWith(qnt: existing.qnt + item.qnt);
      await _saveCart(
        cart.copyWith(
          subTotal: _calculateSubTotal(updatedItems),
          items: updatedItems,
        ),
      );
      return;
    }

    final updatedItems = [...cart.items, item];
    await _saveCart(
      cart.copyWith(
        subTotal: _calculateSubTotal(updatedItems),
        items: updatedItems,
      ),
    );
  }

  Future<void> updateItemInCart({required InstoreCartItemModel item}) async {
    final cart = getLocalCart();
    if (cart == null) return;

    final index = cart.items.indexWhere((e) => e.variantId == item.variantId);
    if (index == -1) return;

    final updatedItems = [...cart.items];
    updatedItems[index] = item;

    await _saveCart(
      cart.copyWith(
        subTotal: _calculateSubTotal(updatedItems),
        items: updatedItems,
      ),
    );
  }

  Future<void> deleteItemFromCart({required int variantId}) async {
    final cart = getLocalCart();
    if (cart == null) return;

    final updatedItems =
        cart.items.where((e) => e.variantId != variantId).toList();

    if (updatedItems.isEmpty) {
      await deleteAllItemsFromCart();
      return;
    }

    await _saveCart(
      cart.copyWith(
        subTotal: _calculateSubTotal(updatedItems),
        items: updatedItems,
      ),
    );
  }

  Future<void> deleteAllItemsFromCart() async {
    await HiveHelper.instance.deleteDataFromBox<String, int>(
      HiveBoxesNames.instoreCart,
    );
  }

  bool hasItemsFromDifferentSeller(int sellerId) {
    final cart = getLocalCart();
    if (cart == null || cart.items.isEmpty) return false;
    log('instore cart sellerId: ${cart.sellerId}, current sellerId: $sellerId');
    return cart.sellerId != sellerId;
  }
}
