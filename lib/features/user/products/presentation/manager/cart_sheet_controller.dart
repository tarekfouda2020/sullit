import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/cart.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/general_cart_item.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart' as bloc;

abstract class CartSheetController{
  GenericBloc<CartDomainModel> get cartItemsBloc;

  Future<void> getCartItems({bool refresh = true});

  Future<void> onIncreaseCart(BuildContext context, GeneralCartItem cartItem,
      bloc.GenericBloc<int> loadingCubit, String value);

  Future<void> onDecreaseCart(BuildContext context, GeneralCartItem cartItem,
      bloc.GenericBloc<int> loadingCubit, String value);

  Future<void> deleteItemFromCart(
      BuildContext context, GeneralCartItem cartItem);

  void updateFavFromSheet(GeneralCartItem cartItem);

  Future<void> refreshProductDetails(BuildContext context);

  int? get productId;

  String get minAmountRemain;


  // VoidCallback? get onPressCheckout;
}

mixin CheckoutMixin {
  VoidCallback? get onPressCheckout => null;
}
