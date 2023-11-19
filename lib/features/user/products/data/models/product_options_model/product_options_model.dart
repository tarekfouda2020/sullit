import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product_options.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_options_model.freezed.dart';
part 'product_options_model.g.dart';

@freezed
@immutable
class ProductOptionsModel extends BaseApiModel<ProductOptions>
    with _$ProductOptionsModel {
  const ProductOptionsModel._();

  @JsonSerializable(explicitToJson: true)
  const factory ProductOptionsModel({
    @JsonKey(name: 'attribute_id') required int attributeId,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'options') required List<String> options,
  }) = _ProductOptionsModel;

  factory ProductOptionsModel.fromJson(Map<String, dynamic> json) =>
      _$ProductOptionsModelFromJson(json);

  @override
  ProductOptions toDomainModel() {
    return ProductOptions(
      attributeId: attributeId,
      title: title,
      options: options,
      selectedAttribute: [],
    );
  }
}
