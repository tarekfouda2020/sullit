import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/models/model_to_domain/model_to_domain.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_paginate_params.dart';
import 'package:flutter_tdd/features/user/gift_card/data/models/pay_method_model/pay_method_model.dart';
import 'package:flutter_tdd/features/user/gift_card/data/models/subscribe_payment_model/subscribe_payment_model.dart';
import 'package:flutter_tdd/features/user/gift_card/domain/models/pay_method_domain_model.dart';
import 'package:flutter_tdd/features/user/gift_card/domain/models/subscribe_payment_domain_model.dart';
import 'package:flutter_tdd/features/user/gift_card/domain/entity/pay_subscribe_params.dart';
import 'package:flutter_tdd/features/user/vip_subscribe/data/data_source/vip_subscribe_data_source.dart';
import 'package:flutter_tdd/features/user/vip_subscribe/data/models/subscribe_content_model/subscribe_content_model.dart';
import 'package:flutter_tdd/features/user/vip_subscribe/data/models/vip_current_plan_model/vip_current_plan_model.dart';
import 'package:flutter_tdd/features/user/vip_subscribe/data/models/vip_subscribe_model/vip_subscribe_model.dart';
import 'package:flutter_tdd/features/user/vip_subscribe/domain/models/subscribe_content_domain_model.dart';
import 'package:flutter_tdd/features/user/vip_subscribe/domain/models/vip_current_plan_domain_model.dart';
import 'package:flutter_tdd/features/user/vip_subscribe/domain/models/vip_subscribe_domain_model.dart';
import 'package:flutter_tdd/features/user/vip_subscribe/domain/repositories/vip_repositories.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: VipRepositories)
class ImplVipSubscribe extends VipRepositories with ModelToDomain {
  final VipDataSource _dataSource = getIt<VipDataSource>();

  @override
  Future<Either<Failure, List<VipSubscribeDomainModel>>> getSubscriptions(
      GenericPaginateParams params) async {
    var result = await _dataSource.getSubscriptions(params);
    return toDomainResultList<VipSubscribeDomainModel, VipSubscribeModel>(
        result);
  }

  @override
  Future<Either<Failure, List<PayMethodDomainModel>>> getPayMethods() async {
    var result = await _dataSource.getPayMethods();
    return toDomainResultList<PayMethodDomainModel, PayMethodModel>(result);
  }

  @override
  Future<Either<Failure, VipCurrentPlanDomainModel>> getCurrentSubscription(
      bool refresh) async {
    var result = await _dataSource.getCurrentSubscription(refresh);
    return toDomainResult<VipCurrentPlanDomainModel, VipCurrentPlanModel>(
        result);
  }

  @override
  Future<Either<Failure, SubscribePaymentDomainModel>> paySubscription(
      PaySubscribeParams params) async {
    var result = await _dataSource.paySubscription(params);
    return toDomainResult<SubscribePaymentDomainModel, SubscribePaymentModel>(
        result);
  }

  @override
  Future<Either<Failure, SubscribeContentDomainModel>> getSubscriptionContent(
      bool param) async {
    var result = await _dataSource.getSubscriptionContent(param);
    return toDomainResult<SubscribeContentDomainModel, SubscribeContentModel>(
        result);
  }
}
