// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blog_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BlogModel _$$_BlogModelFromJson(Map<String, dynamic> json) => _$_BlogModel(
      id: (json['id'] as num).toInt(),
      banner: json['banner'] as String,
      title: json['title'] as String,
      slug: json['slug'] as String,
      category: json['category'] as String,
      shortDescription: json['short_description'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$_BlogModelToJson(_$_BlogModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'banner': instance.banner,
      'title': instance.title,
      'slug': instance.slug,
      'category': instance.category,
      'short_description': instance.shortDescription,
      'description': instance.description,
    };
