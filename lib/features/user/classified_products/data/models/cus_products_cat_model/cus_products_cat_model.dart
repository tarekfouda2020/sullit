import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/models/cus_product_cat.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cus_products_cat_model.freezed.dart';
part 'cus_products_cat_model.g.dart';

@freezed
@immutable
class CusProductsCatModel extends BaseApiModel<CusProductsCat> with _$CusProductsCatModel{
  const CusProductsCatModel._();
  @JsonSerializable(explicitToJson: true)
  const factory CusProductsCatModel({
    required int id,
    required String name,
  }) = _CusProductsCatModel;


  factory CusProductsCatModel.fromJson(Map<String, dynamic> json) =>
      _$CusProductsCatModelFromJson(json);

  @override
  CusProductsCat toDomainModel() {
    return CusProductsCat(id: id, name: name);
  }
}
