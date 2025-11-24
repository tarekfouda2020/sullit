// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartItemModel _$$_CartItemModelFromJson(Map<String, dynamic> json) =>
    _$_CartItemModel(
      id: (json['id'] as num).toInt(),
      ownerId: (json['owner_id'] as num).toInt(),
      loyaltyPoints: (json['loyalty_points'] as num).toInt(),
      thumbnailImage: json['thumbnail_image'] as String,
      name: json['name'] as String,
      price: json['price'] as String,
      tax: json['tax'] as String,
      quantity: (json['quantity'] as num).toInt(),
      rating: (json['rating'] as num).toDouble(),
      isDigital: json['is_digital'] as bool,
      hasSpecialLoyaltyPoints: json['has_special_loyalty_points'] as bool,
      total: json['total'] as String,
      calculableTotal: json['calculable_total'] as num,
      currencySymbol: json['currency_symbol'] as String,
      productId: (json['product_id'] as num).toInt(),
      minQty: (json['min_qty'] as num).toInt(),
      stockQty: (json['stock_qty'] as num).toInt(),
      isWishlist: json['is_wishlist'] as bool,
      soldByType: json['sold_by_type'] as String,
      soldBy: json['sold_by_name'] as String,
      shopId: (json['shop_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$_CartItemModelToJson(_$_CartItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'owner_id': instance.ownerId,
      'loyalty_points': instance.loyaltyPoints,
      'thumbnail_image': instance.thumbnailImage,
      'name': instance.name,
      'price': instance.price,
      'tax': instance.tax,
      'quantity': instance.quantity,
      'rating': instance.rating,
      'is_digital': instance.isDigital,
      'has_special_loyalty_points': instance.hasSpecialLoyaltyPoints,
      'total': instance.total,
      'calculable_total': instance.calculableTotal,
      'currency_symbol': instance.currencySymbol,
      'product_id': instance.productId,
      'min_qty': instance.minQty,
      'stock_qty': instance.stockQty,
      'is_wishlist': instance.isWishlist,
      'sold_by_type': instance.soldByType,
      'sold_by_name': instance.soldBy,
      'shop_id': instance.shopId,
    };
