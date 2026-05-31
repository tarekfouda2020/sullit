import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/user/best_sellers/domain/entity/shop_category_params.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/models/shop_id_params.dart';
import 'package:flutter_tdd/features/user/products/data/models/shop_model/shop_model.dart';

abstract class PharmaciesSources {

  Future<Either<Failure, List<ShopCategoryModel>>> getShopCategories(ShopCategoryParams param);

  Future<Either<Failure, ShopModel>> getShopDetails(ShopIdParams param);

}
