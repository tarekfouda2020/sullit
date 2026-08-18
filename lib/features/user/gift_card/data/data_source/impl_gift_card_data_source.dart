// ignore_for_file: avoid_dynamic_calls

import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart';
import 'package:flutter_tdd/core/http/models/http_request_model.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_paginate_params.dart';
import 'package:flutter_tdd/features/user/gift_card/data/data_source/gift_cards_data_source.dart';
import 'package:flutter_tdd/features/user/gift_card/data/models/gift_card_model/gift_card_model.dart';
import 'package:flutter_tdd/features/user/gift_card/data/models/pay_method_model/pay_method_model.dart';
import 'package:flutter_tdd/features/user/gift_card/data/models/subscribe_payment_model/subscribe_payment_model.dart';
import 'package:flutter_tdd/features/user/gift_card/domain/entity/pay_subscribe_params.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: GiftCardsDataSource)
class ImplGiftCardDataSource extends GiftCardsDataSource {
  @override
  Future<Either<Failure, List<PayMethodModel>>> getPayMethods() async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.paymentMethods,
      requestMethod: RequestMethod.get,
      responseType: ResType.list,
      responseKey: (data) => data['data'],
      toJsonFunc: (json) => List<PayMethodModel>.from(
        json.map((e) => PayMethodModel.fromJson(e)),
      ),
    );
    return await GenericHttpImpl<List<PayMethodModel>>()(model);
  }

  @override
  Future<Either<Failure, List<GiftCardModel>>> giftCardSubscriptionsList(
      GenericPaginateParams params) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.giftCardSubscriptions + params.paramsToQuery(),
      requestMethod: RequestMethod.get,
      refresh: params.refresh,
      responseType: ResType.list,
      responseKey: (data) => data['data']['gift_cards'],
      toJsonFunc: (json) => List<GiftCardModel>.from(
        json.map((e) => GiftCardModel.fromJson(e)),
      ),
    );
    return await GenericHttpImpl<List<GiftCardModel>>()(model);
  }

  @override
  Future<Either<Failure, List<GiftCardModel>>> giftCardList(
      GenericPaginateParams params) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.giftCards + params.paramsToQuery(),
      requestMethod: RequestMethod.get,
      responseType: ResType.list,
      refresh: params.refresh,
      responseKey: (data) => data['data']['gift_cards'],
      toJsonFunc: (json) => List<GiftCardModel>.from(
        json.map((e) => GiftCardModel.fromJson(e)),
      ),
    );
    return await GenericHttpImpl<List<GiftCardModel>>()(model);
  }

  @override
  Future<Either<Failure, GiftCardModel>> giftCardSubscriptionDetails(
      int params) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.giftCardSubscriptionDetails(params),
      requestMethod: RequestMethod.get,
      responseType: ResType.model,
      responseKey: (data) => data['data'],
      toJsonFunc: (json) => GiftCardModel.fromJson(json),
    );
    return await GenericHttpImpl<GiftCardModel>()(model);
  }

  @override
  Future<Either<Failure, GiftCardModel>> giftCardDetails(int params) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.giftCardDetails(params),
      requestMethod: RequestMethod.get,
      responseType: ResType.model,
      responseKey: (data) => data['data'],
      toJsonFunc: (json) => GiftCardModel.fromJson(json),
    );
    return await GenericHttpImpl<GiftCardModel>()(model);
  }

  @override
  Future<Either<Failure, SubscribePaymentModel>> payGiftCardSubscribe(
      PaySubscribeParams params) async {
    HttpRequestModel model = HttpRequestModel(
        url: ApiNames.payGiftCardSubscribe(params.id),
        requestMethod: RequestMethod.post,
        responseType: ResType.model,
        responseKey: (data) => data['data'],
        toJsonFunc: (json) => SubscribePaymentModel.fromJson(json),
        requestBody: params.toJson(),
        showLoader: false);
    return await GenericHttpImpl<SubscribePaymentModel>()(model);
  }
}
