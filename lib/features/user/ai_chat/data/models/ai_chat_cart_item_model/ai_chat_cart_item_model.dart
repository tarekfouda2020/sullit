import 'package:flutter_tdd/features/user/ai_chat/domain/models/ai_chat_cart_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';



part 'ai_chat_cart_item_model.freezed.dart';
part 'ai_chat_cart_item_model.g.dart';

@freezed
class AiChatCartItemModel with _$AiChatCartItemModel {
  const AiChatCartItemModel._();

  @JsonSerializable(explicitToJson: true)
  const factory AiChatCartItemModel({
    int? id,
    @JsonKey(name: 'product_id')
    int? productId,
    int? quantity,
    String? name,
  }) = _AiChatCartItemModel;

  factory AiChatCartItemModel.fromJson(Map<String, dynamic> json) =>
      _$AiChatCartItemModelFromJson(json);

  AiChatCartItem toDomainModel() {
    return AiChatCartItem(id: id, quantity: quantity, name: name);
  }
}
