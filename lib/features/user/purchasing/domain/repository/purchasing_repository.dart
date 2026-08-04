import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_paginate_params.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_params.dart';
import 'package:flutter_tdd/features/user/products/domain/models/reviews.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/entities/change_order_payment_params.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/entities/my_orders_params.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/entities/return_order_params.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/entities/send_review_params.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/models/orders.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/payment_option.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/models/track_order_model.dart';

abstract class PurchasingRepository {
  Future<Either<Failure, List<Orders>>> getPurchaseHistory(
      MyOrdersParams param);

  Future<Either<Failure, List<Orders>>> getReturnOrders(
      GenericPaginateParams param);

  Future<Either<Failure, Orders>> trackOrder(String param);

  Future<Either<Failure, Orders>> getOrderDetails(GenericParams param);

  Future<Either<Failure, Reviews>> sendReview(SendReviewParams param);

  Future<Either<Failure, String>> cancelOrder(int param);

  Future<Either<Failure, String>> reOrder(int param);

  Future<Either<Failure, bool>> returnOrder(ReturnOrderParams param);

  Future<Either<Failure, String>> payOrder(int param);

  Future<Either<Failure, TrackOrderModel>> trackingHistory(int param);

  Future<Either<Failure, List<PaymentOption>>> getOrderPaymentOptions(
      bool param);

  Future<Either<Failure, Orders>> changeOrderPaymentMethod(
      ChangeOrderPaymentParams param);
}
