import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/order_summary.dart';
import 'package:flutter_tdd/features/user/restaurants/domain/params/restaurant_create_order_params.dart';
import 'package:flutter_tdd/features/user/restaurants/domain/repository/restaurants_repository.dart';

class CreateRestaurantOrder
    implements UseCase<OrderSummaryDomainModel?, RestaurantCreateOrderParams> {
  @override
  Future<OrderSummaryDomainModel?> call(
    RestaurantCreateOrderParams params,
  ) async {
    final result = await getIt<RestaurantsRepository>().createOrder(params);
    return result.fold((_) => null, (data) => data);
  }
}
