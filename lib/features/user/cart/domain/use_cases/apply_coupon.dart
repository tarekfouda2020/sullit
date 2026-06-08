import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/coupon_response_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/repository/cart_repository.dart';

class ApplyCoupon implements UseCase<CouponResponse?, String> {
  @override
  Future<CouponResponse?> call(String param) async {
    var result = await getIt<CartRepository>().applyCoupon(param);
    return result.fold((l) => null, (r) => r);
  }
}
