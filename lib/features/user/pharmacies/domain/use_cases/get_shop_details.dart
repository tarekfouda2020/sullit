import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/models/shop_id_params.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/repository/pharmacies_repository.dart';
import 'package:flutter_tdd/features/user/products/domain/models/shop.dart';

class GetShopDetails extends UseCase<Shop, ShopIdParams> {
  @override
  Future<Shop> call(ShopIdParams params) async {
    final result = await getIt<PharmaciesRepository>().getShopDetails(params);
    return result.fold(
      (l) => Shop(
        id: null,
        userId: null,
        name: null,
        logo: null,
        packageInvalidAt: null,
        products: null,
        orders: 0,
        rating: 0,
        follow: false,
      ),
      (r) => r,
    );
  }
}
