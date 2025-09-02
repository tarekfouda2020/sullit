import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/cart/domain/entities/get_cart_items_params.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/cart.dart';
import 'package:flutter_tdd/features/user/cart/domain/repository/cart_repository.dart';

class GetCart implements UseCase<CartDomainModel, CartParams> {
  @override
  Future<CartDomainModel> call(CartParams params) async {
    var result = await getIt<CartRepository>().getCartItems(params);
    return result.fold(
      (l) => CartDomainModel(),
      (r) => r,
    );
  }
}
