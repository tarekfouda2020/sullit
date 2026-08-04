import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_params.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/models/cus_product.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/repository/classified_products_repository.dart';

class GetClassifiedProduct implements UseCase<CusProduct?, GenericParams> {
  @override
  Future<CusProduct?> call(GenericParams param) async {
    var result =
        await getIt<ClassifiedProductsRepository>().getClassifiedProduct(param);
    return result.fold(
      (l) => null,
      (r) => r,
    );
  }
}
