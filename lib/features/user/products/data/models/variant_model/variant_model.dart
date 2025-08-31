import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/variant.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'variant_model.freezed.dart';
part 'variant_model.g.dart';

@freezed
@immutable
class VariantModel extends BaseApiModel<Variant> with _$VariantModel {
  const VariantModel._();

  @JsonSerializable(explicitToJson: true)
  const factory VariantModel({
    required int id,
    required String name,
    required String sku,
    @JsonKey(name: "stroked_price") required String strokedPrice,
    @JsonKey(name: "calculable_price") required String calculablePrice,
    @JsonKey(name: "main_price") required String mainPrice,
    @JsonKey(name: "current_stock") required int currentStock,
    @JsonKey(name: "currency_symbol") required String currencySymbol,
    @JsonKey(name: "has_discount")  bool? hasDiscount,
    @JsonKey(name: "original_price")  String? originalPrice,
    required String image,
    required String options,
  }) = _VariantModel;

  factory VariantModel.fromJson(Map<String, dynamic> json) =>
      _$VariantModelFromJson(json);

  @override
  Variant toDomainModel() {
    return Variant(
      id: id,
      name: name,
      strokedPrice: strokedPrice,
      calculablePrice: calculablePrice,
      mainPrice: mainPrice,
      currentStock: currentStock,
      currencySymbol: currencySymbol,
      image: image,
      options: options,
      sku: sku,
      hasDiscount: hasDiscount,
      originalPrice: originalPrice
    );
  }
}
