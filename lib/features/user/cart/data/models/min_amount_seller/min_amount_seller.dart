import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/min_amount_seller_domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'min_amount_seller.freezed.dart';

part 'min_amount_seller.g.dart';

@freezed
class MinAmountSeller extends BaseApiModel<MinAmountSellerDomain>
    with _$MinAmountSeller {
  const MinAmountSeller._();

  @JsonSerializable(explicitToJson: true)
  factory MinAmountSeller({
    required int id,
    required String name,
    required String message,
    @JsonKey(name: "shop_id") required int shopId,
    @JsonKey(name: "minimum_order_amount") required double minOrderAmount,
  }) = _MinAmountSeller;

  factory MinAmountSeller.fromJson(Map<String, dynamic> json) =>
      _$MinAmountSellerFromJson(json);

  @override
  MinAmountSellerDomain toDomainModel() {
    return MinAmountSellerDomain(
        id: id,
        name: name,
        message: message,
        minOrderAmount: minOrderAmount,
        shopId: shopId);
  }
}
