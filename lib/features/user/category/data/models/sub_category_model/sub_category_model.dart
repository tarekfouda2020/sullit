import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/core/models/api_models/brand_model/brand_model.dart';
import 'package:flutter_tdd/features/user/category/data/models/attributes_model/attributes_model.dart';
import 'package:flutter_tdd/features/user/category/data/models/category_model/category_model.dart';
import 'package:flutter_tdd/features/user/category/data/models/color_model/color_model.dart';
import 'package:flutter_tdd/features/user/category/data/models/price_range_model/price_range_model.dart';
import 'package:flutter_tdd/features/user/category/domain/models/category.dart';
import 'package:flutter_tdd/features/user/category/domain/models/sub_category.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sub_category_model.freezed.dart';
part 'sub_category_model.g.dart';

@freezed
@immutable
class SubCategoryModel extends BaseApiModel<SubCategory>
    with _$SubCategoryModel {
  const SubCategoryModel._();

  @JsonSerializable(explicitToJson: true)
  const factory SubCategoryModel({
    @JsonKey(name: 'category') required CategoryModel category,
    @JsonKey(name: 'categories')  List<CategoryModel>? cats,
    @JsonKey(name: 'children_categories') required List<CategoryModel> subCats,
    @JsonKey(name: 'price_range') required PriceRangeModel priceRange,
    // @JsonKey(name: 'section_products')
    //     required SectionPaginationModel allProducts,
    int? selectedId,
  }) = _SubCategoryModel;

  factory SubCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$SubCategoryModelFromJson(json);

  @override
  SubCategory toDomainModel() {
    return SubCategory(
      category: category.toDomainModel(),
      categories: cats?.map((e) => e.toDomainModel()).toList() ?? <Category>[],
      subCats: subCats.map((e) => e.toDomainModel()).toList(),
      brands: [],
      colors: [],
      attributes: [],
      priceRange: priceRange.toDomainModel(),
      selectedId: selectedId,
      // allProducts: allProducts.toDomainModel(),
    );
  }
}
