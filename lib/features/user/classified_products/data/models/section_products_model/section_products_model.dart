import 'package:flutter_tdd/features/user/classified_products/data/models/cus_product_model/cus_product_model.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/models/sections_products.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
part 'section_products_model.freezed.dart';
part 'section_products_model.g.dart';

@freezed
@immutable
class SectionProductsModel extends BaseApiModel<SectionsProducts> with _$SectionProductsModel{
  const SectionProductsModel._();
  @JsonSerializable(explicitToJson: true)
  const factory SectionProductsModel({
    required List<CusProductModel> products
  }) = _SectionProductsModel;


  factory SectionProductsModel.fromJson(Map<String, dynamic> json) =>
      _$SectionProductsModelFromJson(json);

  @override
  SectionsProducts toDomainModel() {
    return SectionsProducts(products: products.map((e) => e.toDomainModel()).toList());
  }
}
