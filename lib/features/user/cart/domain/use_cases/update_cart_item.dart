import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/cart/domain/entities/update_cart_params.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/cart.dart';
import 'package:flutter_tdd/features/user/cart/domain/repository/cart_repository.dart';

class UpdateCartItem
    implements UseCase<CartDomainModel?, UpdateCartItemParams> {
  @override
  Future<CartDomainModel?> call(UpdateCartItemParams params) async {
    var result = await getIt<CartRepository>().updateCartItem(params);
    return result.fold(
      (l) => null,
      (r) => r,
    );
  }
}
