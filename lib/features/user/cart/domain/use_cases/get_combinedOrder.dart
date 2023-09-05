import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/order_summary.dart';
import 'package:flutter_tdd/features/user/cart/domain/repository/cart_repository.dart';

class GetCombinedOrder implements UseCase<OrderSummary?, int> {
  @override
  Future<OrderSummary?> call(int param) async {
    var result = await getIt<CartRepository>().getCombinedOrder(param);
    return result.fold(
      (l) => null,
      (r) => r,
    );
  }
}
