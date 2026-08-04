import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/cart/data/models/shipping_summary_model/shipping_summary_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/gift_card_domain_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'gift_card_model.freezed.dart';
part 'gift_card_model.g.dart';

@freezed
class GiftCardAppliedCartModel
    extends BaseApiModel<GiftCardApllieCartDomainModel>
    with _$GiftCardAppliedCartModel {
  const GiftCardAppliedCartModel._();
  @JsonSerializable(explicitToJson: true)
  factory GiftCardAppliedCartModel({
    @JsonKey(name: "summary")
    required ShippingSummaryModel shippingSummaryModel,
    @JsonKey(name: "applied_gift_card") String? appliedGiftCard,
  }) = _GiftCardAppliedCartModel;

  factory GiftCardAppliedCartModel.fromJson(Map<String, dynamic> json) =>
      _$GiftCardAppliedCartModelFromJson(json);

  @override
  GiftCardApllieCartDomainModel toDomainModel() {
    return GiftCardApllieCartDomainModel(
        summary: shippingSummaryModel.toDomainModel(),
        appliedGiftCard: appliedGiftCard);
  }
}
