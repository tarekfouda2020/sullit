import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/products/domain/repository/products_repository.dart';

class SetToggleFollowing extends UseCase<bool, int> {
  @override
  Future<bool> call(int params) async {
    var result = await getIt<ProductsRepository>().toggleFollowing(params);
    return result.fold((l) => false, (r) => r);
  }
}
