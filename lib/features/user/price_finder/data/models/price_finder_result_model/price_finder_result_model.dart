import 'package:flutter/foundation.dart';
import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/models/price_finder_deal_domain_model.dart';
import '../../../domain/models/price_finder_result.dart';
import '../price_comparison_product_model/price_comparison_product_model.dart';

part 'price_finder_result_model.freezed.dart';

part 'price_finder_result_model.g.dart';

@freezed
@immutable
class PriceFinderResultModel extends BaseApiModel<PriceFinderResult> with _$PriceFinderResultModel {
  const PriceFinderResultModel._();

  @JsonSerializable(explicitToJson: true)
  const factory PriceFinderResultModel({
    required int id,
    required String status,
    required PriceComparisonProductModel product,
    @JsonKey(name: 'best_deal') PriceFinderDealModel? bestDeal,
    @Default([]) List<PriceFinderDealModel> offers,
  }) = _PriceFinderResultModel;

  factory PriceFinderResultModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$PriceFinderResultModelFromJson(json);

  @override
  PriceFinderResult toDomainModel() {
    return PriceFinderResult(
      id: id,
      status: status,
      product: product.toDomainModel(),
      bestDeal: bestDeal?.toDomainModel(),
      offers: offers.map((e) => e.toDomainModel()).toList(),
    );
  }
}

@freezed
@immutable
class PriceFinderDealModel with _$PriceFinderDealModel {
  const PriceFinderDealModel._();

  @JsonSerializable()
  const factory PriceFinderDealModel({
    @JsonKey(name: 'store_name') required String storeName,
    required int rating,
    @JsonKey(name: 'distance_km', fromJson: _toDouble) required double distanceKm,
    @JsonKey(fromJson: _toDouble) required double price,
    @JsonKey(fromJson: _toDouble) required double savings,
    @JsonKey(name: 'is_lowest') required bool isLowest,
    @JsonKey(name: 'product_id') required int productId,
    @JsonKey(name: 'variant_id') required int variantId,
    @JsonKey(name: 'branch_id') int? branchId,
    @JsonKey(name: 'shop_id') required int shopId,
    @JsonKey(name: 'currency_symbol') required String currencySymbol,
  }) = _PriceFinderDealModel;

  factory PriceFinderDealModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$PriceFinderDealModelFromJson(json);

  PriceFinderDeal toDomainModel() {
    return PriceFinderDeal(
      storeName: storeName,
      rating: rating,
      distanceKm: distanceKm,
      price: price,
      savings: savings,
      isLowest: isLowest,
      productId: productId,
      variantId: variantId,
      branchId: branchId,
      shopId: shopId,
      currencySymbol: currencySymbol,
    );
  }
}

double _toDouble(dynamic value) {
  return double.tryParse(value.toString()) ?? 0.0;
}
