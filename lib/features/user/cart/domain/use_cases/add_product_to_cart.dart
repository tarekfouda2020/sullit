import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/cart/domain/repository/cart_repository.dart';
import 'package:flutter_tdd/features/user/products/domain/entities/add_product_to_cart_params.dart';

class AddProductToCart implements UseCase<String, BaseAddProductToCartParams> {
  @override
  Future<String> call(BaseAddProductToCartParams params) async {
    var result = await getIt<CartRepository>().addToCart(params);
    return result.fold(
      (l) => '',
      (r) => r,
    );
  }
}
