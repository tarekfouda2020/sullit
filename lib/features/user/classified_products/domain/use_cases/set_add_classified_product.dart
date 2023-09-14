import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/entities/add_classified_product.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/repository/classified_products_repository.dart';

class SetAddClassifiedProducts implements UseCase<bool, AddClassifiedProductParams> {
  @override
  Future<bool> call(AddClassifiedProductParams params) async {
    var result = await getIt<ClassifiedProductsRepository>().setAddClassifiedProducts(params);
    return result.fold(
      (l) => false,
      (r) => r,
    );
  }
}
