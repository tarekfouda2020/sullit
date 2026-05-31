import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/models/model_to_domain/model_to_domain.dart';
import 'package:flutter_tdd/features/user/best_sellers/domain/entity/shop_category_params.dart';
import 'package:flutter_tdd/features/user/pharmacies/data/data_sources/pharmacies_sources.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/models/shop_id_params.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/repository/pharmacies_repository.dart';
import 'package:flutter_tdd/features/user/products/domain/models/shop.dart';
import 'package:flutter_tdd/features/user/products/domain/models/shop_category.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: PharmaciesRepository)
class ImplPharmaciesRepository extends PharmaciesRepository with ModelToDomain {
  final dataSources = getIt<PharmaciesSources>();

  @override
  Future<Either<Failure, List<ShopCategory>>> getShopCategories(ShopCategoryParams param) async {
    var result = await dataSources.getShopCategories(param);
    return toDomainResultList(result);
  }

  @override
  Future<Either<Failure, Shop>> getShopDetails(ShopIdParams param) async {
    final result = await dataSources.getShopDetails(param);
    return toDomainResult(result);
  }
}
