// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_queries_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductQueriesModel _$$_ProductQueriesModelFromJson(
        Map<String, dynamic> json) =>
    _$_ProductQueriesModel(
      ownProductQueries: (json['own_product_queries'] as List<dynamic>)
          .map((e) => QueriesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      otherProductQueries: (json['other_product_queries'] as List<dynamic>)
          .map((e) => QueriesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalCount: (json['total_count'] as num).toInt(),
      queriesOffset: (json['queries_offset'] as num).toInt(),
    );

Map<String, dynamic> _$$_ProductQueriesModelToJson(
        _$_ProductQueriesModel instance) =>
    <String, dynamic>{
      'own_product_queries':
          instance.ownProductQueries.map((e) => e.toJson()).toList(),
      'other_product_queries':
          instance.otherProductQueries.map((e) => e.toJson()).toList(),
      'total_count': instance.totalCount,
      'queries_offset': instance.queriesOffset,
    };
