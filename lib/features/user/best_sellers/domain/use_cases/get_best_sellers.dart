import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/best_sellers/domain/entity/shops_params.dart';
import 'package:flutter_tdd/features/user/best_sellers/domain/repository/best_sellers_repository.dart';
import 'package:flutter_tdd/features/user/products/domain/models/shop_card_domain_model.dart';
import 'package:flutter_tdd/features/user/search/domain/entities/search_result_params.dart';

class GetBestSellers extends UseCase<List<ShopCardDomainModel>, ShopsParams> {
  @override
  Future<List<ShopCardDomainModel>> call(ShopsParams params) async {
    var result = await getIt<BestSellersRepository>().getShop(params);
    if (result.isRight()) {
      return result.fold((l) => [], (r) => r);
    }
    return [];
  }
}
