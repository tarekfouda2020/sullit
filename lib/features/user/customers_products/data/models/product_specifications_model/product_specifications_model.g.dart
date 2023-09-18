// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_specifications_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductSpecificationsModel _$$_ProductSpecificationsModelFromJson(
        Map<String, dynamic> json) =>
    _$_ProductSpecificationsModel(
      brands: (json['brands'] as List<dynamic>)
          .map((e) => BrandModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      categories: (json['categories'] as List<dynamic>)
          .map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      subCategories: (json['children_categories'] as List<dynamic>)
          .map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      sortTypes: (json['sort_by_types'] as List<dynamic>)
          .map((e) => SortTypesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      sortConditions: (json['sort_by_condition_types'] as List<dynamic>)
          .map((e) => SortTypesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ProductSpecificationsModelToJson(
        _$_ProductSpecificationsModel instance) =>
    <String, dynamic>{
      'brands': instance.brands.map((e) => e.toJson()).toList(),
      'categories': instance.categories.map((e) => e.toJson()).toList(),
      'children_categories':
          instance.subCategories.map((e) => e.toJson()).toList(),
      'sort_by_types': instance.sortTypes.map((e) => e.toJson()).toList(),
      'sort_by_condition_types':
          instance.sortConditions.map((e) => e.toJson()).toList(),
    };
