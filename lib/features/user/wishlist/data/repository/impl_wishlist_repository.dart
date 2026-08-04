import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/models/model_to_domain/model_to_domain.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';
import 'package:flutter_tdd/features/user/wishlist/data/data_sources/wishlist_data_sources.dart';
import 'package:flutter_tdd/features/user/wishlist/domain/repository/wishlist_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: WishlistRepository)
class ImplWishlistRepository extends WishlistRepository with ModelToDomain {
  var dataSources = getIt<WishlistDataSources>();
  @override
  Future<Either<Failure, List<Product>>> getWishlist(bool param) async {
    var result = await dataSources.getWishlist(param);
    return toDomainResultList(result);
  }
}
