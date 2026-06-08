import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/models/model_to_domain/model_to_domain.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_paginate_params.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_params.dart';
import 'package:flutter_tdd/features/user/products/domain/models/reviews.dart';
import 'package:flutter_tdd/features/user/purchasing/data/data_sources/purchasing_data_sources.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/entities/return_order_params.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/entities/send_review_params.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/models/orders.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/models/track_order_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/payment_option.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/repository/purchasing_repository.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/change_order_payment_params.dart';

@Injectable(as: PurchasingRepository)
class ImplPurchasingRepository extends PurchasingRepository with ModelToDomain {
  var dataSource = getIt<PurchasingDataSources>();

  @override
  Future<Either<Failure, List<Orders>>> getPurchaseHistory(
      GenericPaginateParams param) async {
    var result = await dataSource.getPurchaseHistory(param);
    return toDomainResultList(result);
  }

  @override
  Future<Either<Failure, Orders>> trackOrder(String param) async {
    var result = await dataSource.trackOrder(param);
    return toDomainResult(result);
  }

  @override
  Future<Either<Failure, Orders>> getOrderDetails(GenericParams param) async {
    var result = await dataSource.getOrderDetails(param);
    return toDomainResult(result);
  }

  @override
  Future<Either<Failure, Reviews>> sendReview(SendReviewParams param) async {
    var result = await dataSource.sendReview(param);
    return toDomainResult(result);
  }

  @override
  Future<Either<Failure, String>> cancelOrder(int param) async {
    return await dataSource.cancelOrder(param);
  }

  @override
  Future<Either<Failure, String>> reOrder(int param) async {
    return await dataSource.reOrder(param);
  }

  @override
  Future<Either<Failure, List<Orders>>> getReturnOrders(
      GenericPaginateParams param) async {
    var result = await dataSource.getReturnOrders(param);
    return toDomainResultList(result);
  }

  @override
  Future<Either<Failure, bool>> returnOrder(ReturnOrderParams param) async {
    return await dataSource.returnOrder(param);
  }

  @override
  Future<Either<Failure, String>> payOrder(int param) async {
    return await dataSource.payOrder(param);
  }

  @override
  Future<Either<Failure, TrackOrderModel>> trackingHistory(int param) async {
    var result = await dataSource.trackingHistory(param);
    return toDomainResult(result);
  }

  @override
  Future<Either<Failure, List<PaymentOption>>> getOrderPaymentOptions(
      bool param) async {
    var result = await dataSource.getOrderPaymentOptions(param);
    return toDomainResultList(result);
  }

  @override
  Future<Either<Failure, Orders>> changeOrderPaymentMethod(
      ChangeOrderPaymentParams param) async {
    var result = await dataSource.changeOrderPaymentMethod(param);
    return toDomainResult(result);
  }
}
