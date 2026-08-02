// ignore_for_file: avoid_dynamic_calls

import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart';
import 'package:flutter_tdd/core/http/models/http_request_model.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_paginate_params.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_params.dart';
import 'package:flutter_tdd/features/user/products/data/models/reviews_model/reviews_model.dart';
import 'package:flutter_tdd/features/user/purchasing/data/models/order_card_model/order_card_model.dart';
import 'package:flutter_tdd/features/user/purchasing/data/models/order_model/order_model.dart';
import 'package:flutter_tdd/features/user/purchasing/data/models/track_order/track_order.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/entities/change_order_payment_params.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/entities/my_orders_params.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/entities/return_order_params.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/entities/send_review_params.dart';
import 'package:flutter_tdd/features/user/cart/data/models/payment_option_model/payment_option_model.dart';
import 'package:injectable/injectable.dart';

import 'purchasing_data_sources.dart';

@Injectable(as: PurchasingDataSources)
class ImplPurchasingDataSources extends PurchasingDataSources {
  @override
  Future<Either<Failure, List<OrderCardModel>>> getPurchaseHistory(
      MyOrdersParams param) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.getPurchaseHistory ,
      requestMethod: RequestMethod.get,
      refresh: param.refresh,
      responseType: ResType.list,
      requestBody: param.toJson(),
      toJsonFunc: (json) => List<OrderCardModel>.from(
        json.map((e) => OrderCardModel.fromJson(e)),
      ),
      responseKey: (data) => data["data"]["orders"],
    );
    return await GenericHttpImpl<List<OrderCardModel>>().call(model);
  }

  @override
  Future<Either<Failure, OrderModel>> trackOrder(String param) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.getTrackOrder(param),
      requestMethod: RequestMethod.get,
      responseType: ResType.model,
      showLoader: true,
      toJsonFunc: (json) => OrderModel.fromJson(json),
      responseKey: (data) => data["data"],
    );
    return await GenericHttpImpl<OrderModel>().call(model);
  }

  @override
  Future<Either<Failure, OrderModel>> getOrderDetails(
      GenericParams param) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.getOrderDetails(param.id),
      requestMethod: RequestMethod.get,
      responseType: ResType.model,
      showLoader: true,
      refresh: param.refresh,
      toJsonFunc: (json) => OrderModel.fromJson(json),
      responseKey: (data) => data["data"],
    );
    return await GenericHttpImpl<OrderModel>().call(model);
  }

  @override
  Future<Either<Failure, ReviewsModel>> sendReview(
      SendReviewParams param) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.sendReview(param.orderId),
      requestMethod: RequestMethod.post,
      responseType: ResType.model,
      showLoader: true,
      requestBody: param.toJson(),
      toJsonFunc: (json) => ReviewsModel.fromJson(json),
      responseKey: (data) => data["data"],
    );
    return await GenericHttpImpl<ReviewsModel>().call(model);
  }

  @override
  Future<Either<Failure, String>> cancelOrder(int param) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.cancelOrder(param),
      requestMethod: RequestMethod.get,
      responseType: ResType.type,
      showLoader: true,
      responseKey: (data) => data['msg'],
    );
    return await GenericHttpImpl<String>().call(model);
  }

  @override
  Future<Either<Failure, String>> reOrder(int param) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.reOrder(param),
      requestMethod: RequestMethod.post,
      responseType: ResType.type,
      showLoader: true,
      responseKey: (data) => data['msg'],
    );
    return await GenericHttpImpl<String>().call(model);
  }

  @override
  Future<Either<Failure, List<OrderCardModel>>> getReturnOrders(
      GenericPaginateParams param) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.getReturnOrders + param.paramsToQuery(),
      requestMethod: RequestMethod.get,
      refresh: param.refresh,
      responseType: ResType.list,
      showLoader: true,
      toJsonFunc: (json) => List<OrderCardModel>.from(
        json.map((e) => OrderCardModel.fromJson(e)),
      ),
      responseKey: (data) => data["data"]["orders"],
    );
    return await GenericHttpImpl<List<OrderCardModel>>().call(model);
  }

  @override
  Future<Either<Failure, bool>> returnOrder(ReturnOrderParams param) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.returnOrder(param.orderId),
      requestMethod: RequestMethod.post,
      responseType: ResType.type,
      showLoader: true,
      requestBody: param.toJson(),
      responseKey: (data) => data["key"] == "success",
      errorFunc: (data) => data["msg"],
    );
    return await GenericHttpImpl<bool>().call(model);
  }

  @override
  Future<Either<Failure, String>> payOrder(int param) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.payOrder(param),
      requestMethod: RequestMethod.post,
      responseType: ResType.type,
      showLoader: true,
      responseKey: (data) => data['data']['transaction_url'],
    );
    return await GenericHttpImpl<String>().call(model);
  }

  @override
  Future<Either<Failure, TrackOrder>> trackingHistory(int param) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.trackingHistory(param),
      requestMethod: RequestMethod.get,
      responseType: ResType.model,
      toJsonFunc: (data) => TrackOrder.fromJson(data),
      responseKey: (data) => data['data'],
    );
    return await GenericHttpImpl<TrackOrder>().call(model);
  }

  @override
  Future<Either<Failure, List<PaymentOptionModel>>> getOrderPaymentOptions(
      bool param) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.orderPaymentOptions,
      requestMethod: RequestMethod.get,
      refresh: param,
      responseType: ResType.list,
      showLoader: true,
      toJsonFunc: (json) => List<PaymentOptionModel>.from(
        json.map((e) => PaymentOptionModel.fromJson(e)),
      ),
      responseKey: (data) => data["data"],
    );
    return await GenericHttpImpl<List<PaymentOptionModel>>().call(model);
  }

  @override
  Future<Either<Failure, OrderModel>> changeOrderPaymentMethod(
      ChangeOrderPaymentParams param) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.changeOrderPayMethod(param.orderId),
      requestMethod: RequestMethod.post,
      responseType: ResType.model,
      requestBody: param.toJson(),
      showLoader: true,
      toJsonFunc: (json) => OrderModel.fromJson(json),
      responseKey: (data) => data["data"],
    );
    return await GenericHttpImpl<OrderModel>().call(model);
  }
}
