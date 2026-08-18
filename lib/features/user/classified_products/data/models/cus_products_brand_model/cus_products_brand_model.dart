import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/models/cus_product_brand.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cus_products_brand_model.freezed.dart';
part 'cus_products_brand_model.g.dart';

@freezed
@immutable
class CusProductsBrandModel extends BaseApiModel<CusProductBrand>
    with _$CusProductsBrandModel {
  const CusProductsBrandModel._();
  @JsonSerializable(explicitToJson: true)
  const factory CusProductsBrandModel(
      {required int id,
      required String name,
      required String logo}) = _CusProductsBrandModel;

  factory CusProductsBrandModel.fromJson(Map<String, dynamic> json) =>
      _$CusProductsBrandModelFromJson(json);

  @override
  CusProductBrand toDomainModel() {
    return CusProductBrand(id: id, name: name, logo: logo);
  }
}
