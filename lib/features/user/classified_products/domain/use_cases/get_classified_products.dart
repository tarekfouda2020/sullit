import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/models/classified_product.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/repository/classified_products_repository.dart';

class GetClassifiedProducts
    implements UseCase<ClassifiedProductsDomainModel?, bool> {
  @override
  Future<ClassifiedProductsDomainModel?> call(bool param) async {
    var result = await getIt<ClassifiedProductsRepository>()
        .getClassifiedProducts(param);
    return result.fold(
      (l) => null,
      (r) => r,
    );
  }
}
