import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/user/products/data/models/product_card_model/product_card_model.dart';

abstract class WishlistDataSources {
  Future<Either<Failure, List<ProductCardModel>>> getWishlist(bool param);
}
