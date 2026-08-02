// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SubCategoryModel _$$_SubCategoryModelFromJson(Map<String, dynamic> json) =>
    _$_SubCategoryModel(
      category:
          CategoryModel.fromJson(json['category'] as Map<String, dynamic>),
      cats: (json['categories'] as List<dynamic>?)
          ?.map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      subCats: (json['children_categories'] as List<dynamic>)
          .map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      priceRange:
          PriceRangeModel.fromJson(json['price_range'] as Map<String, dynamic>),
      selectedId: (json['selectedId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$_SubCategoryModelToJson(_$_SubCategoryModel instance) =>
    <String, dynamic>{
      'category': instance.category.toJson(),
      'categories': instance.cats?.map((e) => e.toJson()).toList(),
      'children_categories': instance.subCats.map((e) => e.toJson()).toList(),
      'price_range': instance.priceRange.toJson(),
      'selectedId': instance.selectedId,
    };
