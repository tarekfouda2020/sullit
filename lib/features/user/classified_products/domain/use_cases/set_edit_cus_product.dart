import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/entities/edit_classified_product_params.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/repository/classified_products_repository.dart';

class SetEditCusProduct implements UseCase<bool, EditClassifiedProductParams> {
  @override
  Future<bool> call(EditClassifiedProductParams params) async {
    var result =
        await getIt<ClassifiedProductsRepository>().updateClassifiedProduct(params);
    return result.fold(
      (l) => false,
      (r) => r,
    );
  }
}
