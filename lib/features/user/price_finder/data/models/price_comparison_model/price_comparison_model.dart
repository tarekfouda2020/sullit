import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/price_finder/data/models/price_comparison_product_model/price_comparison_product_model.dart';
import 'package:flutter_tdd/features/user/price_finder/data/models/price_comparison_step_model/price_comparison_step_model.dart';
import 'package:flutter_tdd/features/user/price_finder/domain/models/price_comparison_domain_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'price_comparison_model.freezed.dart';
part 'price_comparison_model.g.dart';

@freezed
class PriceComparisonModel extends BaseApiModel<PriceComparisonDomainModel>
    with _$PriceComparisonModel {
  const PriceComparisonModel._();

  @JsonSerializable(explicitToJson: true)
  const factory PriceComparisonModel({
    required int id,
    required String status,
    required PriceComparisonProductModel product,
    required List<PriceComparisonStepModel> steps,
    @JsonKey(name: 'stores_count') required int storesCount,
    @JsonKey(name: 'best_price') String? bestPrice,
    @JsonKey(name: 'best_savings') String? bestSavings,
    @JsonKey(name: 'currency_symbol') required String currencySymbol,
    required String channel,
    required String event,
    @JsonKey(name: 'error_message') String? errorMessage,
  }) = _PriceComparisonModel;

  factory PriceComparisonModel.fromJson(Map<String, dynamic> json) =>
      _$PriceComparisonModelFromJson(json);


  @override
  PriceComparisonDomainModel toDomainModel() {
    return PriceComparisonDomainModel(
      id: id,
      status: status,
      product: product.toDomainModel(),
      steps: steps.map((e) => e.toDomainModel()).toList(),
      storesCount: storesCount,
      bestPrice: bestPrice,
      bestSavings: bestSavings,
      currencySymbol: currencySymbol,
      channel: channel,
      event: event,
      errorMessage: errorMessage,
    );
  }
}
