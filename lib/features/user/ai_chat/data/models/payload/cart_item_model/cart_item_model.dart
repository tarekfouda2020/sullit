import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/ai_chat/domain/models/ai_chat_cart_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_item_model.freezed.dart';
part 'cart_item_model.g.dart';

@freezed
class CartItemModel extends BaseApiModel<AiChatCartItem> with _$CartItemModel {
  const CartItemModel._();

  @JsonSerializable(explicitToJson: true)
  const factory CartItemModel({
    int? id,
    String? name,
    int? quantity,
    String? price,
    @JsonKey(name: 'thumbnail_image') String? thumbnailImage,
    @JsonKey(name: 'product_id') int? productId,
    String? total,
    @JsonKey(name: 'currency_symbol') String? currencySymbol,
  }) = _CartItemModel;


  /// khan murjan mixed grill platter

  factory CartItemModel.fromJson(Map<String, dynamic> json) =>
      _$CartItemModelFromJson(json);

  @override
  AiChatCartItem toDomainModel() {
    return AiChatCartItem(
      id: id,
      name: name ?? '',
      quantity: quantity ?? 0,
      price: price ?? '',
      thumbnailImage: thumbnailImage,
      productId: productId,
      total: total ?? '',
      currencySymbol: currencySymbol ?? '',
    );
  }
}
