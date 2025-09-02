import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/cart/domain/entities/add_cart_address_params.dart';
import 'package:flutter_tdd/features/user/cart/domain/repository/cart_repository.dart';

class AddCartAddress implements UseCase<bool, AddCartAddressParams> {
  @override
  Future<bool> call(AddCartAddressParams param) async {
    var result = await getIt<CartRepository>().addCartAddress(param);
    return result.fold(
      (l) => false,
      (r) => r,
    );
  }
}
