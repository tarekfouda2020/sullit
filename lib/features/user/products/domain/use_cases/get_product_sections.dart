import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product_sections.dart';
import 'package:flutter_tdd/features/user/products/domain/repository/products_repository.dart';

class GetProductSections extends UseCase<List<ProductSections>, int> {
  @override
  Future<List<ProductSections>> call(int params) async {
    var result = await getIt<ProductsRepository>().getProductSections(params);
    return result.fold((l) => [], (r) => r);
  }
}
