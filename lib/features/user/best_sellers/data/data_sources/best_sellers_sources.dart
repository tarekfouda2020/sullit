import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/user/best_sellers/domain/entity/shops_params.dart';
import 'package:flutter_tdd/features/user/products/data/models/shop_model/shop_model.dart';
import 'package:flutter_tdd/features/user/search/domain/entities/search_result_params.dart';

abstract class BestSellersSources {
  Future<Either<Failure, List<ShopModel>>> getShop(ShopsParams param);
}
