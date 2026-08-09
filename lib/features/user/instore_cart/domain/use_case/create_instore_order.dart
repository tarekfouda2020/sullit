import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/order_summary.dart';
import 'package:flutter_tdd/features/user/instore_cart/domain/entity/instore_create_order_params.dart';
import 'package:flutter_tdd/features/user/instore_cart/domain/repository/instore_cart_repository.dart';

class CreateInstoreOrder
    implements UseCase<OrderSummary?, InstoreCreateOrderParams> {
  @override
  Future<OrderSummary?> call(InstoreCreateOrderParams params) async {
    final result = await getIt<InstoreCartRepository>().createOrder(params);
    return result.fold((_) => null, (data) => data);
  }
}
