// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_query_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchQueryModel _$$_SearchQueryModelFromJson(Map<String, dynamic> json) =>
    _$_SearchQueryModel(
      id: (json['id'] as num).toInt(),
      query: json['query'] as String,
      count: (json['count'] as num).toInt(),
      category: json['category'] == null
          ? null
          : SearchQueryCategoryModel.fromJson(
              json['category'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SearchQueryModelToJson(_$_SearchQueryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'query': instance.query,
      'count': instance.count,
      'category': instance.category?.toJson(),
    };

_$_SearchQueryCategoryModel _$$_SearchQueryCategoryModelFromJson(
        Map<String, dynamic> json) =>
    _$_SearchQueryCategoryModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_SearchQueryCategoryModelToJson(
        _$_SearchQueryCategoryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
