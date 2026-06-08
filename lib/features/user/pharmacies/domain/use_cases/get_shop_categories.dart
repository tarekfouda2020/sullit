import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/best_sellers/domain/entity/shop_category_params.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/repository/pharmacies_repository.dart';
import 'package:flutter_tdd/features/user/products/domain/models/shop_category.dart';

class GetShopCategories
    extends UseCase<List<ShopCategory>, ShopCategoryParams> {
  @override
  Future<List<ShopCategory>> call(ShopCategoryParams params) async {
    var result = await getIt<PharmaciesRepository>().getShopCategories(params);
    return result.fold(
      (l) => [],
      (r) => r,
    );
  }
}
