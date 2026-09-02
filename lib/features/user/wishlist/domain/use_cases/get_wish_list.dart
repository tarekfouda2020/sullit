import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product_card.dart';
import 'package:flutter_tdd/features/user/wishlist/domain/entities/get_wishlist_params.dart';
import 'package:flutter_tdd/features/user/wishlist/domain/repository/wishlist_repository.dart';

class GetWishlist implements UseCase<List<ProductCard>, GetWishlistParams> {
  @override
  Future<List<ProductCard>> call(GetWishlistParams param) async {
    var result = await getIt<WishlistRepository>().getWishlist(param);
    return result.fold(
      (l) => [],
      (r) => r,
    );
  }
}
