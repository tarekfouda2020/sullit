import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';
import 'package:flutter_tdd/features/user/wishlist/domain/repository/wishlist_repository.dart';

class GetWishlist implements UseCase<List<Product>, bool> {
  @override
  Future<List<Product>> call(bool param) async {
    var result = await getIt<WishlistRepository>().getWishlist(param);
    return result.fold(
      (l) => [],
      (r) => r,
    );
  }
}
