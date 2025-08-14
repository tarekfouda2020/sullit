import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/cart/data/models/shipping_summary_model/shipping_summary_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/gift_card_domain_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'gift_card_model.freezed.dart';
part 'gift_card_model.g.dart';

@freezed
class GiftCardModel extends BaseApiModel<GiftCardDomainModel> with _$GiftCardModel{
  const GiftCardModel._();
  @JsonSerializable(explicitToJson: true)
  factory GiftCardModel({
    @JsonKey(name: "summary") required ShippingSummaryModel shippingSummaryModel,
    @JsonKey(name: "applied_gift_card") String? appliedGiftCard,
  }) = _GiftCardModel;


  factory GiftCardModel.fromJson(Map<String, dynamic> json) =>
      _$GiftCardModelFromJson(json);

  @override
  GiftCardDomainModel toDomainModel() {
    return GiftCardDomainModel(
      summary: shippingSummaryModel.toDomainModel(),
      appliedGiftCard: appliedGiftCard
    );
  }
}