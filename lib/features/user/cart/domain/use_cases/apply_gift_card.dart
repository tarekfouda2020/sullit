import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/cart/domain/entities/apply_gift_card_params.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/gift_card_domain_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/shipping_summary.dart';
import 'package:flutter_tdd/features/user/cart/domain/repository/cart_repository.dart';

class ApplyGiftCard
    extends UseCase<GiftCardApllieCartDomainModel?, ApplyGiftCardParams> {
  @override
  Future<GiftCardApllieCartDomainModel?> call(
      ApplyGiftCardParams params) async {
    var result = await getIt<CartRepository>().applyGiftCard(params);
    return result.fold(
      (l) => null,
      (r) => r,
    );
  }
}
