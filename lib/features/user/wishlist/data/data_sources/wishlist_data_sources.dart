import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/models/api_models/product_model/product_model.dart';

abstract class WishlistDataSources {
  Future<Either<Failure, List<ProductModel>>> getWishlist(bool param);
}
