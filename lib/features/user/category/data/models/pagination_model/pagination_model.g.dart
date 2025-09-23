// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaginationModel _$$_PaginationModelFromJson(Map<String, dynamic> json) =>
    _$_PaginationModel(
      totalItems: (json['total_items'] as num).toInt(),
      countItems: (json['count_items'] as num).toInt(),
      perPage: (json['per_page'] as num).toInt(),
      totalPages: (json['total_pages'] as num).toInt(),
      currentPage: (json['current_page'] as num).toInt(),
      nextPage: json['next_page_url'] as String,
      prevPage: json['perv_page_url'] as String,
    );

Map<String, dynamic> _$$_PaginationModelToJson(_$_PaginationModel instance) =>
    <String, dynamic>{
      'total_items': instance.totalItems,
      'count_items': instance.countItems,
      'per_page': instance.perPage,
      'total_pages': instance.totalPages,
      'current_page': instance.currentPage,
      'next_page_url': instance.nextPage,
      'perv_page_url': instance.prevPage,
    };
