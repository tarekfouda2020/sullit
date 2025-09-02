import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/gift_card/domain/models/git_card_domain_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'gift_card_model.freezed.dart';

part 'gift_card_model.g.dart';

@freezed
class GiftCardModel extends BaseApiModel<GiftCardDomainModel> with _$GiftCardModel {
  const GiftCardModel._();

  @JsonSerializable(explicitToJson: true)
  factory GiftCardModel({
    required int id,
    required String title,
     String? code,
    required String price,
    required String value,
    @JsonKey(name: "validity_days") required int validateDays,
    @JsonKey(name: "expired_at")  String? expiredAt,
    @JsonKey(name: "expired_in_days")  int? expiredInDays,
    @JsonKey(name: "is_expired")  bool? isExpired,
  }) = _GiftCardModel;

  factory GiftCardModel.fromJson(Map<String, dynamic> json) => _$GiftCardModelFromJson(json);

  @override
  GiftCardDomainModel toDomainModel() {
    return GiftCardDomainModel(
      id: id,
      title: title,
      code: code,
      price: price,
      value: value,
      validateDays: validateDays,
      expiredAt: expiredAt,
      expiredInDays: expiredInDays,
      isExpired: isExpired,
    );
  }
}
