
import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_paginate_params.dart';
import 'package:flutter_tdd/features/user/gift_card/domain/models/pay_method_domain_model.dart';
import 'package:flutter_tdd/features/user/gift_card/domain/models/subscribe_payment_domain_model.dart';
import 'package:flutter_tdd/features/user/gift_card/domain/entity/pay_subscribe_params.dart';
import 'package:flutter_tdd/features/user/vip_subscribe/domain/models/subscribe_content_domain_model.dart';
import 'package:flutter_tdd/features/user/vip_subscribe/domain/models/vip_current_plan_domain_model.dart';
import 'package:flutter_tdd/features/user/vip_subscribe/domain/models/vip_subscribe_domain_model.dart';

abstract class VipRepositories{

  Future<Either<Failure, List<VipSubscribeDomainModel>>> getSubscriptions(GenericPaginateParams params);

  Future<Either<Failure, List<PayMethodDomainModel>>> getPayMethods();

  Future<Either<Failure, VipCurrentPlanDomainModel>> getCurrentSubscription(bool refresh);

  Future<Either<Failure, SubscribePaymentDomainModel>> paySubscription(PaySubscribeParams params);

  Future<Either<Failure, SubscribeContentDomainModel>> getSubscriptionContent();

}