import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/order_summary.dart';
import 'package:flutter_tdd/features/user/restaurants/domain/params/restaurant_create_order_params.dart';

abstract class RestaurantsRepository {
  Future<Either<Failure, OrderSummaryDomainModel>> createOrder(
    RestaurantCreateOrderParams params,
  );
}
