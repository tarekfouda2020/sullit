import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/repository/classified_products_repository.dart';

class SetDeleteProduct extends UseCase<String, int> {
  @override
  Future<String> call(int params) async {
    var result =
        await getIt<ClassifiedProductsRepository>().deleteProduct(params);
    return result.fold((l) => "", (r) => r);
  }
}
