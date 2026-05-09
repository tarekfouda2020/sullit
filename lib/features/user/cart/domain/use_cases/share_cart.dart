import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/cart/domain/repository/cart_repository.dart';

class ShareCart implements UseCase<String?, NoParams> {
  @override
  Future<String?> call([NoParams? params]) async {
    var result = await getIt<CartRepository>().shareCart(NoParams());
    return result.fold(
      (failure) => null,
      (data) => data,
    );
  }
}
