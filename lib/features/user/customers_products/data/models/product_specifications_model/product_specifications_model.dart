import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/core/models/api_models/brand_model/brand_model.dart';
import 'package:flutter_tdd/features/user/category/data/models/category_model/category_model.dart';
import 'package:flutter_tdd/features/user/customers_products/data/models/sort_types_model/sort_types_model.dart';
import 'package:flutter_tdd/features/user/customers_products/domain/models/product_specifications.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_specifications_model.freezed.dart';
part 'product_specifications_model.g.dart';

@freezed
@immutable
class ProductSpecificationsModel extends BaseApiModel<ProductSpecifications>
    with _$ProductSpecificationsModel {
  const ProductSpecificationsModel._();

  @JsonSerializable(explicitToJson: true)
  const factory ProductSpecificationsModel({
    @JsonKey(name: "brands") required List<BrandModel> brands,
    @JsonKey(name: "categories") required List<CategoryModel> categories,
    @JsonKey(name: "children_categories") required List<CategoryModel> subCategories,
    @JsonKey(name: "sort_by_types") required List<SortTypesModel> sortTypes,
    @JsonKey(name: "sort_by_condition_types")
        required List<SortTypesModel> sortConditions,
  }) = _ProductSpecificationsModel;

  factory ProductSpecificationsModel.fromJson(Map<String, dynamic> json) =>
      _$ProductSpecificationsModelFromJson(json);

  @override
  ProductSpecifications toDomainModel() {
    return ProductSpecifications(
      brands: brands.map((e) => e.toDomainModel()).toList(),
      categories: categories.map((e) => e.toDomainModel()).toList(),
      subCategories:subCategories.map((e) => e.toDomainModel()).toList() ,
      sortConditions: sortConditions.map((e) => e.toDomainModel()).toList(),
      sortTypes: sortTypes.map((e) => e.toDomainModel()).toList(),
    );
  }
}
