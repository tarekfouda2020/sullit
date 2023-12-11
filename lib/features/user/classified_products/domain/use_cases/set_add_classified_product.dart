import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/entities/add_classified_product.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/models/cus_product.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/repository/classified_products_repository.dart';

class SetAddClassifiedProducts
    implements UseCase<CusProduct?, AddClassifiedProductParams> {
  @override
  Future<CusProduct?> call(AddClassifiedProductParams params) async {
    var result = await getIt<ClassifiedProductsRepository>()
        .setAddClassifiedProducts(params);
    return result.fold((l) => null, (r) => r);
  }
}
