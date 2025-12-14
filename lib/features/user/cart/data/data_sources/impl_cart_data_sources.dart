// ignore_for_file: avoid_dynamic_calls

import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart';
import 'package:flutter_tdd/core/http/models/http_request_model.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/cart/data/data_sources/cart_data_sources.dart';
import 'package:flutter_tdd/features/user/cart/data/models/cart_model/cart_model.dart';
import 'package:flutter_tdd/features/user/cart/data/models/coupon_response_model/coupon_response_model.dart';
import 'package:flutter_tdd/features/user/cart/data/models/delivery_instruction/delivery_instruction.dart';
import 'package:flutter_tdd/features/user/cart/data/models/fess_mechanism_model/fess_mechanism_model.dart';
import 'package:flutter_tdd/features/user/cart/data/models/gift_card_model/gift_card_model.dart';
import 'package:flutter_tdd/features/user/cart/data/models/order_summary_model/order_summary_model.dart';
import 'package:flutter_tdd/features/user/cart/data/models/seller_shipping_model/seller_shipping_model.dart';
import 'package:flutter_tdd/features/user/cart/data/models/shipping_model/shipping_model.dart';
import 'package:flutter_tdd/features/user/cart/data/models/shipping_summary_model/shipping_summary_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/entities/add_cart_address_params.dart';
import 'package:flutter_tdd/features/user/cart/domain/entities/apply_gift_card_params.dart';
import 'package:flutter_tdd/features/user/cart/domain/entities/create_order_params.dart';
import 'package:flutter_tdd/features/user/cart/domain/entities/delete_cart_item_params.dart';
import 'package:flutter_tdd/features/user/cart/domain/entities/get_cart_items_params.dart';
import 'package:flutter_tdd/features/user/cart/domain/entities/store_cart_shipping_params.dart';
import 'package:flutter_tdd/features/user/cart/domain/entities/update_cart_params.dart';
import 'package:flutter_tdd/features/user/products/domain/entities/add_product_to_cart_params.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CartDataSources)
class ImplCartDataSources extends CartDataSources {
  @override
  Future<Either<Failure, CartModel>> getCartItems(CartParams params) async {
    HttpRequestModel model = HttpRequestModel(
      url: params.toQuery(),
      requestMethod: RequestMethod.get,
      refresh: params.refresh,
      responseType: ResType.model,
      showLoader: true,
      toJsonFunc: (json) => CartModel.fromJson(json),
      responseKey: (data) => data["data"],
      errorFunc: (data) => data["msg"],
    );
    return await GenericHttpImpl<CartModel>().call(model);
  }

  @override
  Future<Either<Failure, bool>> addCartAddress(AddCartAddressParams param)async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.addCartAddress,
      requestBody: {"address_id": param.addressId},
      requestMethod: RequestMethod.post,
      responseType: ResType.type,
      showLoader: param.showLoader,
      responseKey: (data)=> data["key"] == "success",
      errorFunc: (data)=> data["msg"],
    );
    return await GenericHttpImpl<bool>().call(model);
  }

  @override
  Future<Either<Failure, ShippingModel>> cartStoreShipping(StoreCartShippingParams params) async  {
    var param = json.encode(params.params);
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.cartStoreShipping,
      requestBody: {"shipping_info": param},
      requestMethod: RequestMethod.post,
      responseType: ResType.model,
      showLoader: params.showLoader,
      toJsonFunc: (data) => ShippingModel.fromJson(data),
      responseKey: (data)=> data["data"],
      errorFunc: (data)=> data["msg"],
    );
    return await GenericHttpImpl<ShippingModel>().call(model);
  }

  @override
  Future<Either<Failure, CouponResponseModel>> applyCoupon(String param)async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.applyCoupon,
      requestBody: {"code": param},
      requestMethod: RequestMethod.post,
      responseType: ResType.model,
      refresh: true,
      showLoader: true,
      toJsonFunc: (data) => CouponResponseModel.fromJson(data),
      errorFunc: (data)=> data["msg"],
    );
    return await GenericHttpImpl<CouponResponseModel>().call(model);
  }

  @override
  Future<Either<Failure, OrderSummaryModel>> createOrder(CreateOrderParams params)async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.storeOrders,
      requestBody: params.toJson(),
      requestMethod: RequestMethod.post,
      responseType: ResType.model,
      showLoader: true,
      toJsonFunc: (data) => OrderSummaryModel.fromJson(data),
      responseKey: (data)=> data['data'],
      errorFunc: (data)=> data["msg"],
    );
    return await GenericHttpImpl<OrderSummaryModel>().call(model);
  }

  @override
  Future<Either<Failure, String>> addToCart (AddProductToCartParams params) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.storeProductToCart,
      requestMethod: RequestMethod.post,
      responseType: ResType.type,
      showLoader: true,
      requestBody: params.toJson(),
      responseKey: (data) => data["msg"],
    );
    return await GenericHttpImpl<String>().call(model);
  }

  @override
  Future<Either<Failure, bool>> deleteCartItem(DeleteCartItemParams params)async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.cart + params.toQuery(),
      requestBody: params.toJson(),
      requestMethod: RequestMethod.delete,
      responseType: ResType.type,
      responseKey: (data)=> data["key"] == "success",
      errorFunc: (data)=> data["msg"],
    );
    return await GenericHttpImpl<bool>().call(model);
  }

  @override
  Future<Either<Failure, CartModel>> updateCartItem(UpdateCartItemParams params)async {
    HttpRequestModel model = HttpRequestModel(
      url: params.toQuery(),
      requestBody: params.toJson(),
      requestMethod: RequestMethod.post,
      responseType: ResType.model,
      showLoader: false,
      toJsonFunc: (data) => CartModel.fromJson(data),
      responseKey: (data)=> data['data'],
      errorFunc: (data)=> data["msg"],
    );
    return await GenericHttpImpl<CartModel>().call(model);
  }

  @override
  Future<Either<Failure, List<SellerShippingModel>>> getShippingInfo(bool param)async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.cartShippingInfo,
      requestMethod: RequestMethod.get,
      refresh: param,
      responseType: ResType.list,
      showLoader: true,
      toJsonFunc: (json) => List<SellerShippingModel>.from(
        json.map(
              (e) => SellerShippingModel.fromJson(e),
        ),
      ),
      responseKey: (data) => data["data"],
      errorFunc: (data) => data["msg"],
    );
    return await GenericHttpImpl<List<SellerShippingModel>>().call(model);
  }

  @override
  Future<Either<Failure, OrderSummaryModel>> getCombinedOrder(int param)async {
    HttpRequestModel model = HttpRequestModel(
      url:'${ApiNames.getCombinedOrder}$param',
      requestMethod: RequestMethod.get,
      responseType: ResType.model,
      showLoader: true,
      toJsonFunc: (data) => OrderSummaryModel.fromJson(data),
      responseKey: (data)=> data['data'],
      errorFunc: (data)=> data["msg"],
    );
    return await GenericHttpImpl<OrderSummaryModel>().call(model);
  }

  @override
  Future<Either<Failure, ShippingSummaryModel>> applyLoyaltyPoints(NoParams params)async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.applyLoyaltyPoints,
      requestMethod: RequestMethod.post,
      responseType: ResType.model,
      showLoader: true,
      responseKey: (data) => data["data"]["summary"],
      toJsonFunc: (json) => ShippingSummaryModel.fromJson(json),
      errorFunc: (data) => data["msg"],
    );
    return await GenericHttpImpl<ShippingSummaryModel>().call(model);
  }

  @override
  Future<Either<Failure, ShippingSummaryModel>> removeLoyaltyPoints(NoParams params)async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.removeLoyaltyPoints,
      responseType: ResType.model,
      requestMethod: RequestMethod.post,
      responseKey: (data) => data['data']['summary'],
      showLoader: true,
      errorFunc: (data) => data["msg"],
      toJsonFunc: (json) => ShippingSummaryModel.fromJson(json),
    );
    return await GenericHttpImpl<ShippingSummaryModel>()(model);
  }

  @override
  Future<Either<Failure, GiftCardAppliedCartModel>> applyGiftCard(ApplyGiftCardParams params)async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.applyGiftCard,
      requestMethod: RequestMethod.post,
      responseType: ResType.model,
      showLoader: true,
      requestBody: params.toJson(),
      responseKey: (data) => data["data"],
      toJsonFunc: (json) => GiftCardAppliedCartModel.fromJson(json),
      errorFunc: (data) => data["msg"],
    );
    return await GenericHttpImpl<GiftCardAppliedCartModel>().call(model);
  }

  @override
  Future<Either<Failure, String>> clearCart(CartParams params)async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.clearCart,
      requestBody: params.toJson(),
      requestMethod: RequestMethod.post,
      responseType: ResType.type,
      showLoader: true,
      responseKey: (data)=> data["msg"],
      errorFunc: (data)=> data["msg"],
    );
    return await GenericHttpImpl<String>().call(model);
  }

  @override
  Future<Either<Failure, ShippingSummaryModel>> removeCoupon(NoParams params)async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.removeCoupon,
      responseType: ResType.model,
      requestMethod: RequestMethod.post,
      responseKey: (data) => data['data']['summary'],
      showLoader: true,
      errorFunc: (data) => data["msg"],
      toJsonFunc: (json) => ShippingSummaryModel.fromJson(json),
    );
    return await GenericHttpImpl<ShippingSummaryModel>()(model);
  }

  @override
  Future<Either<Failure, FessMechanismModel>> getFees (bool params)async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.feesMechanism,
      responseType: ResType.model,
      requestMethod: RequestMethod.get,
      responseKey: (data) => data['data'],
      errorFunc: (data) => data["msg"],
      toJsonFunc: (json) => FessMechanismModel.fromJson(json),
    );
    return await GenericHttpImpl<FessMechanismModel>()(model);
  }



  @override
  Future<Either<Failure, List<DeliveryInstruction>>> getInstructions(bool params)async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.deliveryInstructions,
      requestMethod: RequestMethod.get,
      responseType: ResType.list,
      refresh: params,
      toJsonFunc: (json) => List<DeliveryInstruction>.from(
        json.map(
              (e) => DeliveryInstruction.fromJson(e),
        ),
      ),
      responseKey: (data) => data["data"],
      errorFunc: (data) => data["msg"],
    );
    return await GenericHttpImpl<List<DeliveryInstruction>>().call(model);
  }


}
