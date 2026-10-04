import 'package:flutter_tdd/features/user/ai_chat/domain/models/ai_chat_product_card.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter_tdd/features/user/ai_chat/data/models/ai_chat_branch_model/ai_chat_branch_model.dart';

part 'ai_chat_product_card_model.freezed.dart';
part 'ai_chat_product_card_model.g.dart';

@freezed
class AiChatProductCardModel with _$AiChatProductCardModel {
  const AiChatProductCardModel._();

  @JsonSerializable(explicitToJson: true)
  const factory AiChatProductCardModel({
    int? id,
    String? name,
    @JsonKey(name: 'thumbnail_img')
    String? thumbnailImg,
    @JsonKey(name: 'price_high_low')
    String? priceHighLow,
    @JsonKey(name: 'price_high_low_discount')
    String? priceHighLowDiscount,
    @JsonKey(name: 'currency_symbol')
    String? currencySymbol,
    @JsonKey(name: 'has_discount')
    bool? hasDiscount,
    @JsonKey(name: 'is_wishlist')
    bool? isWishlist,
    AiChatBranchModel? branch,
  }) = _AiChatProductCardModel;

  factory AiChatProductCardModel.fromJson(Map<String, dynamic> json) =>
      _$AiChatProductCardModelFromJson(json);

  AiChatProductCard toDomainModel() {
    return AiChatProductCard(
      id: id,
      name: name,
      thumbnailImg: thumbnailImg,
      priceHighLow: priceHighLow,
      priceHighLowDiscount: priceHighLowDiscount,
      currencySymbol: currencySymbol,
      hasDiscount: hasDiscount,
      isWishlist: isWishlist,
      branch: branch?.toDomainModel(),
    );
  }
}
