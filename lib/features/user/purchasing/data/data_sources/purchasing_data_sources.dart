import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
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

abstract class PurchasingDataSources {
  Future<Either<Failure, List<PaymentOptionModel>>> getOrderPaymentOptions(
      bool param);

  Future<Either<Failure, OrderModel>> changeOrderPaymentMethod(
      ChangeOrderPaymentParams param);

  Future<Either<Failure, List<OrderCardModel>>> getPurchaseHistory(MyOrdersParams param);

  Future<Either<Failure, List<OrderCardModel>>> getReturnOrders(GenericPaginateParams param);

  Future<Either<Failure, OrderModel>> trackOrder(String param);

  Future<Either<Failure, OrderModel>> getOrderDetails(GenericParams param);

  Future<Either<Failure, ReviewsModel>> sendReview(SendReviewParams param);

  Future<Either<Failure, String>> cancelOrder(int param);

  Future<Either<Failure, String>> reOrder(int param);

  Future<Either<Failure, bool>> returnOrder(ReturnOrderParams param);

  Future<Either<Failure, String>> payOrder(int param);

  Future<Either<Failure, TrackOrder>> trackingHistory(int param);
}
