import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/brand_details_params.dart';
import 'package:flutter_tdd/features/user/category/domain/repository/category_repository.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product_card.dart';

class GetBrandProducts implements UseCase<List<ProductCard>, BrandDetailsParams> {
  @override
  Future<List<ProductCard>> call(BrandDetailsParams param) async {
    var result = await getIt.get<CategoryRepository>().getBrandProducts(param);
    return result.fold(
      (l) => [],
      (r) => r,
    );
  }
}
