import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/cart.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/cart_item.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart' as bloc;

/// Interface for any controller that can provide cart data to the success sheet.
abstract class CartSheetController {
  GenericBloc<CartDomainModel> get cartItemsBloc;

  Future<void> getCartItems({bool refresh = true});

  Future<void> onIncreaseCart(
      BuildContext context, CartItem cartItem, bloc.GenericBloc<bool> loadingCubit);

  Future<void> onDecreaseCart(
      BuildContext context, CartItem cartItem, bloc.GenericBloc<bool> loadingCubit);

  Future<void> deleteItemFromCart(BuildContext context, CartItem cartItem);

  void updateFavFromSheet(CartItem cartItem);

  Future<void> refreshProductDetails(BuildContext context);

  int? get productId;
}

