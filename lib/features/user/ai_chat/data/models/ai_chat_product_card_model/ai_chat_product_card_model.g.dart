// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_chat_product_card_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AiChatProductCardModel _$$_AiChatProductCardModelFromJson(
        Map<String, dynamic> json) =>
    _$_AiChatProductCardModel(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      thumbnailImg: json['thumbnail_img'] as String?,
      priceHighLow: json['price_high_low'] as String?,
      priceHighLowDiscount: json['price_high_low_discount'] as String?,
      currencySymbol: json['currency_symbol'] as String?,
      hasDiscount: json['has_discount'] as bool?,
      isWishlist: json['is_wishlist'] as bool?,
      branch: json['branch'] == null
          ? null
          : AiChatBranchModel.fromJson(json['branch'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AiChatProductCardModelToJson(
        _$_AiChatProductCardModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'thumbnail_img': instance.thumbnailImg,
      'price_high_low': instance.priceHighLow,
      'price_high_low_discount': instance.priceHighLowDiscount,
      'currency_symbol': instance.currencySymbol,
      'has_discount': instance.hasDiscount,
      'is_wishlist': instance.isWishlist,
      'branch': instance.branch?.toJson(),
    };
