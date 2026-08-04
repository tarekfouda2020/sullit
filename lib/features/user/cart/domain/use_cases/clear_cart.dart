import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/cart/domain/entities/clear_cart_params.dart';
import 'package:flutter_tdd/features/user/cart/domain/entities/delete_cart_item_params.dart';
import 'package:flutter_tdd/features/user/cart/domain/entities/get_cart_items_params.dart';
import 'package:flutter_tdd/features/user/cart/domain/repository/cart_repository.dart';

class ClearCart extends UseCase<String, ClearCartParams> {
  @override
  Future<String> call(ClearCartParams params) async {
    var result = await getIt<CartRepository>().clearCart(params);
    return result.fold(
      (l) => '',
      (r) => r,
    );
  }
}
