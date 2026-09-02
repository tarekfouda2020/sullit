import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product_card.dart';

import 'package:flutter_tdd/features/user/wishlist/domain/entities/get_wishlist_params.dart';

abstract class WishlistRepository {
  Future<Either<Failure, List<ProductCard>>> getWishlist(GetWishlistParams param);
}
