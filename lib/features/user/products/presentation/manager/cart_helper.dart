// ignore_for_file: use_build_context_synchronously


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/app_constants.dart';
import 'package:flutter_tdd/core/helpers/custom_toast.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/get_device_id.dart';
import 'package:flutter_tdd/core/helpers/loading_helper.dart';
import 'package:flutter_tdd/core/helpers/router_helper.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/features/user/base/presentation/manager/count_cubit/count_cubit.dart';
import 'package:flutter_tdd/features/user/cart/domain/entities/delete_cart_item_params.dart';
import 'package:flutter_tdd/features/user/cart/domain/entities/get_cart_items_params.dart';
import 'package:flutter_tdd/features/user/cart/domain/entities/update_cart_params.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/cart.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/general_cart_item.dart';
import 'package:flutter_tdd/features/user/cart/domain/use_cases/add_product_to_cart.dart';
import 'package:flutter_tdd/features/user/cart/domain/use_cases/delete_item_from_cart.dart';
import 'package:flutter_tdd/features/user/cart/domain/use_cases/get_cart_items.dart';
import 'package:flutter_tdd/features/user/cart/domain/use_cases/import_cart.dart';
import 'package:flutter_tdd/features/user/cart/domain/use_cases/share_cart.dart';
import 'package:flutter_tdd/features/user/cart/domain/use_cases/update_cart_item.dart';
import 'package:flutter_tdd/features/user/products/domain/entities/add_product_to_cart_params.dart';
import 'package:flutter_tdd/features/user/products/domain/entities/variant_price_params.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';
import 'package:flutter_tdd/features/user/products/domain/use_cases/get_variant_price.dart';
import 'package:flutter_tdd/features/user/products/presentation/manager/cart_sheet_controller.dart';
import 'package:flutter_tdd/features/user/products/presentation/manager/cart_sheet_helper.dart';
import 'package:flutter_tdd/features/user/products/presentation/pages/product_details/widgets/product_details_widgets_imports.dart';
import 'package:flutter_tdd/features/user/products/presentation/widgets/build_add_to_cart_dialog.dart';
import 'package:injectable/injectable.dart';
import 'package:share_plus/share_plus.dart';

import '../../domain/models/product_attributes_options.dart';

@lazySingleton
class CartHelper {
  List<String> selectedVariants = [];

  final GenericBloc<CartDomainModel> cartItemsBloc =
      GenericBloc(CartDomainModel());

  void onSelectAttributes(
      BuildContext context,
      GenericBloc<Product?> productCubit,
      List<ProductAttributesOptions> model,
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
    var price =
        double.parse(variantPrice!.calculablePrice!.replaceAll(",", ""));
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
            msg:
                "${tr("only")} ${variantPrice.currentStock} ${tr("availableStock")}");
        return;
      }
    } else {
      CustomToast.showSimpleToast(msg: tr('outOfStock'));
      return;
    }
  }

  void onDecreaseQty(GenericBloc<Product?> productCubit) {
    var variantPrice = productCubit.state.data?.variant;
    var price =
        double.parse(variantPrice!.calculablePrice!.replaceAll(",", ""));
    if (productCubit.state.data!.minQty! > 1) {
      var priceQty = price - (price / productCubit.state.data!.minQty!);
      productCubit.state.data!.minQty = productCubit.state.data!.minQty! - 1;
      variantPrice.calculablePrice = priceQty.toString();
      productCubit.onUpdateData(productCubit.state.data);
    }
  }

  Future<bool?> addProductToCart(BuildContext context, int qty, int? variantId,
      {required Function() onAddCartFunc,
      bool showLoader = true,
      bool callCartData = true,
        CartTypeEnum type = CartTypeEnum.general
      }) async {
    var params = await _addToCartParams(variantId, qty, showLoader: showLoader);
    return _sendToCart(params,
        onAddCartFunc: onAddCartFunc, callCartData: callCartData, type: type);
  }

  Future<bool?> addPharmacyProductToCart(
      BuildContext context, int qty, int? variantId, int? branchId,
      {required Function() onAddCartFunc,
      bool showLoader = true,
      bool callCartData = true}) async {
    PharmacyCartParams params = await _addPharmacyCartParams(variantId, qty, branchId,
        showLoader: showLoader);
    return _sendToCart(params,
        onAddCartFunc: onAddCartFunc, callCartData: callCartData, type: CartTypeEnum.pharmacy);
  }

  Future<bool?> _sendToCart(BaseAddProductToCartParams params,
      {required Function() onAddCartFunc,
      bool callCartData = true,
      CartTypeEnum type = CartTypeEnum.general}) async {
    if (params.variantId == null) {
      CustomToast.showSimpleToast(msg: tr('variantNotFound'));
      return null;
    }
    String data = await AddProductToCart().call(params);

    if (data.isNotEmpty) {
      if (callCartData) {
        getCartItems(type:type );
      }
      onAddCartFunc();
      CustomToast.showSimpleToast(
          msg: tr('productAddedToYourCart'), type: ToastType.success);
      return true;
    }else{
      return false;
    }
  }

  void updateCartCount(BuildContext context, int qnt) {
    var countCubit = context.read<CountCubit>().state;
    context.read<CountCubit>().onUpdateCount(qnt, countCubit.discount);
  }

  void updateCartCountWithCart(BuildContext context, CartDomainModel cart) {
    final totalItems = (cart.items ?? <GeneralCartItem>[])
        .fold<int>(0, (sum, item) => sum + item.quantity);
    final countCubit = context.read<CountCubit>().state;
    context.read<CountCubit>().onUpdateCount(totalItems, countCubit.discount);
  }

  void addToCartDialog(BuildContext context, Product product,
      {void Function()? afterAddToCart}) {
    showDialog(
      context: context,
      builder: (context) => BuildAddToCartDialog(
        product: product,
        afterAddToCart: afterAddToCart,
      ),
    );
  }

  Future<CartDomainModel> getCartItems({bool refresh = true, CartTypeEnum type =  CartTypeEnum.general}) async {
    String? token = await getIt<GetDeviceId>().deviceId;
    var params = _cartParams(refresh, token!,type: type);
    var data = await GetCart().call(params);
    cartItemsBloc.onUpdateData(data);
    return cartItemsBloc.state.data;
  }

  Future<CartDomainModel?> updateCartItem(int qty, int id,[List<ProductOptionsParams>? options]) async {
    final params = await _updateCartItemParams(qty, id,options);
    final result = await UpdateCartItem().call(params);
    return result;
  }


  Future<bool> deleteItemFromCart(
      BuildContext context, GeneralCartItem cartItem) async {
    var params = await _deleteItemFromCart(cartItem.id);
    return await DeleteItemFormCart().call(params);
  }

  Future<DeleteCartItemParams> _deleteItemFromCart(int id) async {
    return DeleteCartItemParams(
      id: id,
      deviceId: await getIt<GetDeviceId>().deviceId,
    );
  }

  Future<void> showCartSuccessSheet(BuildContext context, {CartSheetController? controller, void Function()? onPressCheck}) async {
    final sheetController = controller ?? StandaloneCartSheetController(this);

    sheetController.getCartItems(refresh: false);
    sheetController.getCartItems().then(
      (value) {
        getIt<CartHelper>().updateCartCountWithCart(
            context, controller!.cartItemsBloc.state.data);
      },
    );

    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      useRootNavigator: true,
      enableDrag: false,
      builder: (ctx) => CartSuccessSheetWidget(controller: sheetController, onPressCheck: onPressCheck,),
    );
  }

  CartParams _cartParams(bool refresh, String token, {CartTypeEnum type =  CartTypeEnum.general}) {
    return CartParams(
      macAddress: token,
      refresh: refresh,
      type: type
    );
  }

  Future<AddProductToCartParams> _addToCartParams(int? variantId, int qty,
      {bool showLoader = true}) async {
    return AddProductToCartParams(
        quantity: qty,
        variantId: variantId,
        macAddress: await getIt<GetDeviceId>().deviceId,
        showLoader: showLoader);
  }

  Future<PharmacyCartParams> _addPharmacyCartParams(
      int? variantId, int qty, int? branchId,
      {bool showLoader = true}) async {
    return PharmacyCartParams(
        quantity: qty,
        variantId: variantId,
        macAddress: await getIt<GetDeviceId>().deviceId,
        showLoader: showLoader,
        branchId: branchId);
  }

  VariantPriceParams _variantPriceParams(int id) {
    return VariantPriceParams(
      id: id,
      variants: selectedVariants.join(','),
    );
  }

  Future<UpdateCartItemParams> _updateCartItemParams(int qty, int id,[List<ProductOptionsParams>? options]) async {
    return UpdateCartItemParams(
      macAddress: await getIt<GetDeviceId>().deviceId,
      qty: qty,
      id: id,
      options: options
    );
  }

  Future<void> shareCart(BuildContext context) async {
    final token = await ShareCart().call();
    if (token != null) {
      final link = "${AppConstants.instance.baseShareLink}/cart?token=$token";
      Share.share("Checkout My Cart\n$link", subject: "Shared Cart");
    } else {
      CustomToast.showSimpleToast(msg: "Failed to create cart share token");
    }
  }

  Future<void> importCart(BuildContext context, String token) async {
    final success = await ImportCart().call(token);
    if (success) {
      CustomToast.showSimpleToast(
          msg: 'Cart imported successfully', type: ToastType.success);
      await getCartItems();
      getIt<RouterHelper>().appRoute.push(CartRoute());
    } else {
      CustomToast.showSimpleToast(msg: "Failed to import cart");
    }
  }
}
