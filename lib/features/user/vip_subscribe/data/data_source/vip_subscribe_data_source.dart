import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_paginate_params.dart';
import 'package:flutter_tdd/features/user/gift_card/data/models/pay_method_model/pay_method_model.dart';
import 'package:flutter_tdd/features/user/gift_card/data/models/subscribe_payment_model/subscribe_payment_model.dart';
import 'package:flutter_tdd/features/user/gift_card/domain/entity/pay_subscribe_params.dart';
import 'package:flutter_tdd/features/user/vip_subscribe/data/models/subscribe_content_model/subscribe_content_model.dart';
import 'package:flutter_tdd/features/user/vip_subscribe/data/models/vip_current_plan_model/vip_current_plan_model.dart';
import 'package:flutter_tdd/features/user/vip_subscribe/data/models/vip_subscribe_model/vip_subscribe_model.dart';

abstract class VipDataSource {
  Future<Either<Failure, List<VipSubscribeModel>>> getSubscriptions(
      GenericPaginateParams params);

  Future<Either<Failure, List<PayMethodModel>>> getPayMethods();

  Future<Either<Failure, VipCurrentPlanModel>> getCurrentSubscription(
      bool refresh);

  Future<Either<Failure, SubscribePaymentModel>> paySubscription(
      PaySubscribeParams params);

  Future<Either<Failure, SubscribeContentModel>> getSubscriptionContent(
      bool param);
}
