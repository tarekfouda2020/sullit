import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/products/domain/entities/popular_products_params.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';
import 'package:flutter_tdd/features/user/products/domain/repository/products_repository.dart';

class GetPopularProducts extends UseCase<List<Product>, PopularProductsParams> {
  @override
  Future<List<Product>> call(PopularProductsParams params) async {
    var result = await getIt<ProductsRepository>().getPopularProducts(params);
    return result.fold((l) => [], (r) => r);
  }
}
