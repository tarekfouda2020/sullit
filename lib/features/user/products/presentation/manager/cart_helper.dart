// ignore_for_file: use_build_context_synchronously

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
import 'package:flutter_tdd/features/user/cart/presentation/pages/cart/cart_imports.dart';
import 'package:flutter_tdd/features/user/products/domain/entities/add_product_to_cart_params.dart';
import 'package:flutter_tdd/features/user/products/domain/entities/variant_price_params.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product_options.dart';
import 'package:flutter_tdd/features/user/products/domain/use_cases/get_variant_price.dart';
import 'package:flutter_tdd/features/user/products/presentation/widgets/build_add_to_cart_dialog.dart';
import 'package:flutter_tdd/features/user/products/presentation/manager/cart_sheet_controller.dart';
import 'package:flutter_tdd/features/user/products/presentation/pages/product_details/widgets/product_details_widgets_imports.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class CartHelper {
  List<String> selectedVariants = [];

  final GenericBloc<CartDomainModel> cartItemsBloc = GenericBloc(CartDomainModel());

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
      {required Function() onAddCartFunc, bool showLoader = true}) async {
    var params = await _addToCartParams(variantId, qty,showLoader: showLoader);
    if (params.variantId == null) {
      CustomToast.showSimpleToast(msg: tr('variantNotFound'));
      return;
    }
    var data = await AddProductToCart().call(params);

    if (data.isNotEmpty) {
      onAddCartFunc();
      CustomToast.showSimpleToast(
          msg: tr('productAddedToYourCart'), type: ToastType.success);
    }
  }

  void updateCartCount(BuildContext context,int qnt){
    var countCubit = context.read<CountCubit>().state;
    context.read<CountCubit>().onUpdateCount(qnt, countCubit.discount);
  }

  void updateCartCountWithCart(BuildContext context, CartDomainModel cart) {
    final totalItems =
        (cart.items ?? <CartItem>[]).fold<int>(0, (sum, item) => sum + item.quantity);
    final countCubit = context.read<CountCubit>().state;
    context.read<CountCubit>().onUpdateCount(totalItems, countCubit.discount);
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
    var data = await GetCart().call(params);
    cartItemsBloc.onUpdateData(data);
    return cartItemsBloc.state.data;
  }




  Future<CartDomainModel?> updateCartItem(int qty, int id) async {
    final params = await _updateCartItemParams(qty, id);
    final result = await UpdateCartItem().call(params); // your API call
    return result;
  }


  /// 1709
  /// variant_id 29935

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

  Future<void> showCartSuccessSheet(BuildContext context,
      {CartSheetController? controller}) async {
    final sheetController = controller ?? _StandaloneCartSheetController(this);

     sheetController.getCartItems(refresh: false);
     sheetController.getCartItems().then((value) {
       getIt<CartHelper>().updateCartCountWithCart(context, controller!.cartItemsBloc.state.data);
     },);

    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      useRootNavigator: true,
      enableDrag: false,
      builder: (ctx) => CartSuccessSheetWidget(controller: sheetController),
    );
  }

  CartParams _cartParams(bool refresh, String token) {
    return CartParams(
      macAddress: token,
      refresh: refresh,
    );
  }

  Future<AddProductToCartParams> _addToCartParams(int? variantId, int qty,{bool showLoader = true}) async {
    return AddProductToCartParams(
      quantity: qty,
      variantId: variantId,
      macAddress: await getIt<GetDeviceId>().deviceId,
      showLoader: showLoader
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

class _StandaloneCartSheetController implements CartSheetController {
  _StandaloneCartSheetController(this._cartHelper);

  final CartHelper _cartHelper;

  @override
  final GenericBloc<CartDomainModel> cartItemsBloc = GenericBloc(CartDomainModel());

  @override
  Future<void> getCartItems({bool refresh = true}) async {
    final value = await _cartHelper.getCartItems(refresh: refresh);
    if (value.items != null && value.items!.isNotEmpty) {
      cartItemsBloc.onUpdateData(value);
    }
  }

  @override
  Future<void> onIncreaseCart(BuildContext context, CartItem cartItem,
      GenericBloc<bool> loadingCubit) async {
    if (cartItem.quantity < cartItem.stockQty) {
      loadingCubit.onUpdateData(true);
      final newQty = cartItem.quantity + 1;
      final success = await _cartHelper.updateCartItem(newQty, cartItem.id);
      if (success != null) {
        loadingCubit.onUpdateData(false);
        cartItem.quantity = newQty;
        cartItemsBloc.onUpdateData(success);
      }
    } else {
      CustomToast.showSimpleToast(
        msg: '${tr("only")} ${cartItem.stockQty} ${tr("availableStock")}',
      );
    }
  }

  @override
  Future<void> onDecreaseCart(BuildContext context, CartItem cartItem,
      GenericBloc<bool> loadingCubit) async {
    if (cartItem.quantity > 1) {
      loadingCubit.onUpdateData(true);
      final newQty = cartItem.quantity - 1;
      final success = await _cartHelper.updateCartItem(newQty, cartItem.id);
      if (success != null) {
        loadingCubit.onUpdateData(false);
        cartItem.quantity = newQty;
        cartItemsBloc.onUpdateData(success);
      }
    }
  }

  @override
  Future<void> deleteItemFromCart(BuildContext context, CartItem cartItem) async {
    getIt<LoadingHelper>().showLoadingDialog();
    final deleted = await _cartHelper.deleteItemFromCart(context, cartItem);
    if (deleted) {
      double subTotal = double.parse(cartItemsBloc.state.data.subTotal ?? "0.0" );
      double removedItemPrice = double.parse(cartItem.total);
      double newSubTotal = subTotal-removedItemPrice;
      cartItemsBloc.state.data.subTotal = newSubTotal.toStringAsFixed(2);
      cartItemsBloc.state.data.items?.remove(cartItem);
      if(cartItemsBloc.state.data.items?.isEmpty == true){
        cartItemsBloc.onUpdateData(cartItemsBloc.state.data);
        getIt<LoadingHelper>().dismissDialog();
        getIt<CartHelper>().updateCartCount(context,0);
        Navigator.pop(context);
      }else{
        await getCartItems();
        cartItemsBloc.onUpdateData(cartItemsBloc.state.data);
        getIt<LoadingHelper>().dismissDialog();
      }
    }
  }

  @override
  void updateFavFromSheet(CartItem cartItem) {
    cartItem.isWishlist = !cartItem.isWishlist;
  }

  @override
  Future<void> refreshProductDetails(BuildContext context) async {
    // Standalone controller has no product details to refresh.
  }

  @override
  int? get productId => null;


  String  remainToGetMinAmount() {
    var total = double.parse(cartItemsBloc.state.data.subTotal ?? "0.0");
    var minAmount = cartItemsBloc.state.data.minimumAmount ?? 0.0;
    var remain = minAmount - total ;
    return remain.toStringAsFixed(2);
  }

  @override
  String get minAmountRemain => remainToGetMinAmount();


}
