import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/models/cus_product_brand.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/repository/classified_products_repository.dart';

class GetCusProductsBrands implements UseCase<List<CusProductBrand>, bool> {
  @override
  Future<List<CusProductBrand>> call(bool param) async {
    var result = await getIt<ClassifiedProductsRepository>().getCusProductBrands(param);
    return result.fold(
      (l) => [],
      (r) => r,
    );
  }
}
