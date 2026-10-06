// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_comparison_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PriceComparisonModel _$$_PriceComparisonModelFromJson(
        Map<String, dynamic> json) =>
    _$_PriceComparisonModel(
      id: (json['id'] as num).toInt(),
      status: json['status'] as String,
      product: PriceComparisonProductModel.fromJson(
          json['product'] as Map<String, dynamic>),
      steps: (json['steps'] as List<dynamic>)
          .map((e) =>
              PriceComparisonStepModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      storesCount: (json['stores_count'] as num).toInt(),
      bestPrice: json['best_price'] as String?,
      bestSavings: json['best_savings'] as String?,
      currencySymbol: json['currency_symbol'] as String,
      channel: json['channel'] as String,
      event: json['event'] as String,
      errorMessage: json['error_message'] as String?,
    );

Map<String, dynamic> _$$_PriceComparisonModelToJson(
        _$_PriceComparisonModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'product': instance.product.toJson(),
      'steps': instance.steps.map((e) => e.toJson()).toList(),
      'stores_count': instance.storesCount,
      'best_price': instance.bestPrice,
      'best_savings': instance.bestSavings,
      'currency_symbol': instance.currencySymbol,
      'channel': instance.channel,
      'event': instance.event,
      'error_message': instance.errorMessage,
    };
