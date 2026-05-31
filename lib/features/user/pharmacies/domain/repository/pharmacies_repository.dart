import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/user/best_sellers/domain/entity/shop_category_params.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/models/shop_id_params.dart';
import 'package:flutter_tdd/features/user/products/domain/models/shop.dart';
import 'package:flutter_tdd/features/user/products/domain/models/shop_category.dart';

abstract class PharmaciesRepository {
  Future<Either<Failure, List<ShopCategory>>> getShopCategories(ShopCategoryParams param);
  Future<Either<Failure, Shop>> getShopDetails(ShopIdParams param);
}
