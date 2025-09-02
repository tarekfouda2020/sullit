// ignore_for_file: avoid_dynamic_calls


import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart';
import 'package:flutter_tdd/core/http/models/http_request_model.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_paginate_params.dart';
import 'package:flutter_tdd/features/user/gift_card/data/models/pay_method_model/pay_method_model.dart';
import 'package:flutter_tdd/features/user/gift_card/data/models/subscribe_payment_model/subscribe_payment_model.dart';
import 'package:flutter_tdd/features/user/gift_card/domain/entity/pay_subscribe_params.dart';
import 'package:flutter_tdd/features/user/vip_subscribe/data/data_source/vip_subscribe_data_source.dart';
import 'package:flutter_tdd/features/user/vip_subscribe/data/models/subscribe_content_model/subscribe_content_model.dart';
import 'package:flutter_tdd/features/user/vip_subscribe/data/models/vip_current_plan_model/vip_current_plan_model.dart';
import 'package:flutter_tdd/features/user/vip_subscribe/data/models/vip_subscribe_model/vip_subscribe_model.dart';
import 'package:injectable/injectable.dart';


@Injectable(as: VipDataSource)
class ImplVipSubscribeDataSource extends VipDataSource {
  @override
  Future<Either<Failure, List<VipSubscribeModel>>> getSubscriptions(GenericPaginateParams params) async{
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.subscriptions+params.paramsToQuery(),
      requestMethod: RequestMethod.get,
      responseType: ResType.list,
      responseKey: (data) => data['data']['subscriptions'],
      toJsonFunc: (json) => List<VipSubscribeModel>.from(
        json.map((e) => VipSubscribeModel.fromJson(e)),
      ),
    );
    return await GenericHttpImpl<List<VipSubscribeModel>>()(model);
  }


  @override
  Future<Either<Failure, List<PayMethodModel>>> getPayMethods() async{
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.subscriptionsPaymentMethods,
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
  Future<Either<Failure, VipCurrentPlanModel>> getCurrentSubscription(bool refresh) async{
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.currentSubscription,
      requestMethod: RequestMethod.get,
      responseType: ResType.model,
      refresh: refresh,
      responseKey: (data) => data['data'],
      toJsonFunc: (json) => VipCurrentPlanModel.fromJson(json),
    );
    return await GenericHttpImpl<VipCurrentPlanModel>()(model);
  }

  @override
  Future<Either<Failure, SubscribePaymentModel>> paySubscription(PaySubscribeParams params) async{
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.paySubscription(params.id),
      requestMethod: RequestMethod.post,
      responseType: ResType.model,
      responseKey: (data) => data['data'],
      toJsonFunc: (json) => SubscribePaymentModel.fromJson(json),
      requestBody: params.toJson(),
      showLoader: false
    );
    return await GenericHttpImpl<SubscribePaymentModel>()(model);
  }

  @override
  Future<Either<Failure, SubscribeContentModel>> getSubscriptionContent() async{
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.subscriptionPage,
      requestMethod: RequestMethod.get,
      responseType: ResType.model,
      responseKey: (data) => data['data'],
      toJsonFunc: (json) => SubscribeContentModel.fromJson(json),
    );
    return await GenericHttpImpl<SubscribeContentModel>()(model);
  }

}