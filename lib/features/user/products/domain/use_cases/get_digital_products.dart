import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product_card.dart';
import 'package:flutter_tdd/features/user/products/domain/repository/products_repository.dart';

class GetDigitalProducts extends UseCase<List<ProductCard>, bool> {
  @override
  Future<List<ProductCard>> call(bool params) async {
    var result = await getIt<ProductsRepository>().getDigitalProducts(params);
    return result.fold((l) => [], (r) => r);
  }
}
