import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/cart/domain/repository/cart_repository.dart';

class ImportCart implements UseCase<bool, String> {
  @override
  Future<bool> call([String? params]) async {
    if (params == null) return false;
    var result = await getIt<CartRepository>().importCart(params);
    return result.fold(
      (failure) => false,
      (data) => data,
    );
  }
}
