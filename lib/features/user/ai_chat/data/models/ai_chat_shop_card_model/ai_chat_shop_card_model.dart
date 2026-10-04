import 'package:flutter_tdd/features/user/ai_chat/domain/models/ai_chat_shop_card.dart';
import 'package:freezed_annotation/freezed_annotation.dart';



part 'ai_chat_shop_card_model.freezed.dart';
part 'ai_chat_shop_card_model.g.dart';

@freezed
class AiChatShopCardModel with _$AiChatShopCardModel {
  const AiChatShopCardModel._();

  @JsonSerializable(explicitToJson: true)
  const factory AiChatShopCardModel({
    int? id,
    String? name,
    String? logo,
    @JsonKey(name: 'type_label')
    String? typeLabel,
    num? rating,
  }) = _AiChatShopCardModel;

  factory AiChatShopCardModel.fromJson(Map<String, dynamic> json) =>
      _$AiChatShopCardModelFromJson(json);

  AiChatShopCard toDomainModel() {
    return AiChatShopCard(
      id: id,
      name: name,
      logo: logo,
      typeLabel: typeLabel,
      rating: rating,
    );
  }
}
