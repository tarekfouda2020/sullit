import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/user/cart/data/models/order_summary_model/order_summary_model.dart';
import 'package:flutter_tdd/features/user/restaurants/domain/params/restaurant_create_order_params.dart';

abstract class RestaurantsDataSource {
  Future<Either<Failure, OrderSummaryModel>> createOrder(
    RestaurantCreateOrderParams params,
  );
}
