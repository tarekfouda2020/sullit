import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/search_products_params.dart';
import 'package:flutter_tdd/features/user/category/domain/repository/category_repository.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product_card.dart';

class GetCategoryProducts extends UseCase<List<ProductCard>, SearchProductsParams> {
  @override
  Future<List<ProductCard>> call(SearchProductsParams params) async {
    var result = await getIt<CategoryRepository>().getCategoryProducts(params);
    return result.fold((l) => [], (r) => r);
  }
}
