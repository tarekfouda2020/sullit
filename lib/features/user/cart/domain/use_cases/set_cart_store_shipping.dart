import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/cart/domain/entities/store_cart_shipping_params.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/shipping.dart';
import 'package:flutter_tdd/features/user/cart/domain/repository/cart_repository.dart';

class SetCartStoreShipping
    implements UseCase<Shipping?, StoreCartShippingParams> {
  @override
  Future<Shipping?> call(StoreCartShippingParams params) async {
    var result = await getIt<CartRepository>().cartStoreShipping(params);
    return result.fold(
      (l) => null,
      (r) => r,
    );
  }
}
