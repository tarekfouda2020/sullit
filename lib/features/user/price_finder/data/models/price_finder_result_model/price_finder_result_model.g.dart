// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_finder_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PriceFinderResultModel _$$_PriceFinderResultModelFromJson(
        Map<String, dynamic> json) =>
    _$_PriceFinderResultModel(
      id: (json['id'] as num).toInt(),
      status: json['status'] as String,
      product: PriceComparisonProductModel.fromJson(
          json['product'] as Map<String, dynamic>),
      bestDeal: json['best_deal'] == null
          ? null
          : PriceFinderDealModel.fromJson(
              json['best_deal'] as Map<String, dynamic>),
      offers: (json['offers'] as List<dynamic>?)
              ?.map((e) =>
                  PriceFinderDealModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_PriceFinderResultModelToJson(
        _$_PriceFinderResultModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'product': instance.product.toJson(),
      'best_deal': instance.bestDeal?.toJson(),
      'offers': instance.offers.map((e) => e.toJson()).toList(),
    };

_$_PriceFinderDealModel _$$_PriceFinderDealModelFromJson(
        Map<String, dynamic> json) =>
    _$_PriceFinderDealModel(
      storeName: json['store_name'] as String,
      rating: (json['rating'] as num).toInt(),
      distanceKm: _toDouble(json['distance_km']),
      price: _toDouble(json['price']),
      savings: _toDouble(json['savings']),
      isLowest: json['is_lowest'] as bool,
      productId: (json['product_id'] as num).toInt(),
      variantId: (json['variant_id'] as num).toInt(),
      branchId: (json['branch_id'] as num?)?.toInt(),
      shopId: (json['shop_id'] as num).toInt(),
      currencySymbol: json['currency_symbol'] as String,
    );

Map<String, dynamic> _$$_PriceFinderDealModelToJson(
        _$_PriceFinderDealModel instance) =>
    <String, dynamic>{
      'store_name': instance.storeName,
      'rating': instance.rating,
      'distance_km': instance.distanceKm,
      'price': instance.price,
      'savings': instance.savings,
      'is_lowest': instance.isLowest,
      'product_id': instance.productId,
      'variant_id': instance.variantId,
      'branch_id': instance.branchId,
      'shop_id': instance.shopId,
      'currency_symbol': instance.currencySymbol,
    };
