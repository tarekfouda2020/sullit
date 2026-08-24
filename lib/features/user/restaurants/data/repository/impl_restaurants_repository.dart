import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/models/model_to_domain/model_to_domain.dart';
import 'package:flutter_tdd/features/user/cart/data/models/order_summary_model/order_summary_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/order_summary.dart';
import 'package:flutter_tdd/features/user/restaurants/data/data_sources/restaurants_data_source.dart';
import 'package:flutter_tdd/features/user/restaurants/domain/params/restaurant_create_order_params.dart';
import 'package:flutter_tdd/features/user/restaurants/domain/repository/restaurants_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: RestaurantsRepository)
class ImplRestaurantsRepository extends RestaurantsRepository
    with ModelToDomain {
  final RestaurantsDataSource _dataSource = getIt<RestaurantsDataSource>();

  @override
  Future<Either<Failure, OrderSummaryDomainModel>> createOrder(
    RestaurantCreateOrderParams params,
  ) async {
    final result = await _dataSource.createOrder(params);
    return toDomainResult<OrderSummaryDomainModel, OrderSummaryModel>(result);
  }
}
