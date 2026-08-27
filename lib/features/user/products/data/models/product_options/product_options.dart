import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/models/product_option_value.dart';
import '../../../domain/models/product_options.dart';
part 'product_options.freezed.dart';
part 'product_options.g.dart';

@freezed
class ProductOption extends BaseApiModel<ProductOptionModel>
    with _$ProductOption {
  const ProductOption._();

  const factory ProductOption({
    required int id,
    required String name,
    required String type,
    @JsonKey(name: 'is_required') required bool isRequired,
    @JsonKey(name: 'max_select') int? maxSelect,
    @JsonKey(name: 'sort_order') required int sortOrder,
    required List<ProductOptionValueModel> values,
  }) = _ProductOption;

  factory ProductOption.fromJson(Map<String, dynamic> json) =>
      _$ProductOptionFromJson(json);

  @override
  ProductOptionModel toDomainModel() {
    return ProductOptionModel(
      id: id,
      name: name,
      type: type,
      isRequired: isRequired,
      maxSelect: maxSelect,
      sortOrder: sortOrder,
      values: values.map((e) => e.toDomainModel()).toList(),
      isSelected: false,
    );
  }
}

@freezed
class ProductOptionValueModel extends BaseApiModel<ProductOptionValue>
    with _$ProductOptionValueModel {
  const ProductOptionValueModel._();

  const factory ProductOptionValueModel({
    required int id,
    required String name,
    required String price,
    @JsonKey(name: 'is_default') required bool isDefault,
    @JsonKey(name: 'sort_order') required int sortOrder,
  }) = _ProductOptionValueModel;

  factory ProductOptionValueModel.fromJson(Map<String, dynamic> json) =>
      _$ProductOptionValueModelFromJson(json);

  @override
  ProductOptionValue toDomainModel() {
    return ProductOptionValue(
      id: id,
      name: name,
      price: price,
      isDefault: isDefault,
      sortOrder: sortOrder,
      isSelected: false,
    );
  }
}
