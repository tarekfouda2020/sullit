import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';

abstract class WishlistRepository {
  Future<Either<Failure, List<Product>>> getWishlist(bool param);
}
