import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/price_finder/domain/models/price_comparison_product_domain_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'price_comparison_product_model.freezed.dart';
part 'price_comparison_product_model.g.dart';

@freezed
class PriceComparisonProductModel
    extends BaseApiModel<PriceComparisonProductDomainModel>
    with _$PriceComparisonProductModel {
  const PriceComparisonProductModel._();

  const factory PriceComparisonProductModel({
    required int id,
    required String name,
    required String unit,
    @JsonKey(name: 'thumbnail_image') required String thumbnailImage,
    required String barcode,
    @JsonKey(name: 'category_name') required String categoryName,
  }) = _PriceComparisonProductModel;

  factory PriceComparisonProductModel.fromJson(Map<String, dynamic> json) =>
      _$PriceComparisonProductModelFromJson(json);

  @override
  PriceComparisonProductDomainModel toDomainModel() {
    return PriceComparisonProductDomainModel(
      id: id,
      name: name,
      unit: unit,
      thumbnailImage: thumbnailImage,
      barcode: barcode,
      categoryName: categoryName,
    );
  }
}
