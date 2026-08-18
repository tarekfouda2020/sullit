import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/shipping_summary.dart';
import 'package:flutter_tdd/features/user/cart/domain/repository/cart_repository.dart';

class ApplyLoyaltyPoints extends UseCase<ShippingSummary?, NoParams> {
  @override
  Future<ShippingSummary?> call(NoParams params) async {
    var result = await getIt<CartRepository>().applyLoyaltyPoints(params);
    return result.fold(
      (l) => null,
      (r) => r,
    );
  }
}
