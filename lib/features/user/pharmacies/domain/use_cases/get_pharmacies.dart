import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/best_sellers/domain/entity/shops_params.dart';
import 'package:flutter_tdd/features/user/best_sellers/domain/repository/best_sellers_repository.dart';
import 'package:flutter_tdd/features/user/products/domain/models/merchant_shop_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/shop.dart';
import 'package:flutter_tdd/features/user/products/domain/models/shop_card_domain_model.dart';

class GetPharmacies extends UseCase<List<ShopCardDomainModel>, ShopsParams> {
  @override
  Future<List<ShopCardDomainModel>> call(ShopsParams params) async {
    var result = await getIt<BestSellersRepository>().getPharmacies(params);
    if (result.isRight()) {
      return result.fold((l) => [], (r) => r);
    }
    return [];
  }
}
