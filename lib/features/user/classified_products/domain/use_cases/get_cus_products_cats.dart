import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/models/cus_product_cat.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/repository/classified_products_repository.dart';

class GetCusProductsCats implements UseCase<List<CusProductsCat>, bool> {
  @override
  Future<List<CusProductsCat>> call(bool param) async {
    var result =
        await getIt<ClassifiedProductsRepository>().getCusProductsCats(param);
    return result.fold(
      (l) => [],
      (r) => r,
    );
  }
}
