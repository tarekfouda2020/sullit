// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pharmacy_order_terms_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PharmacyOrderTerms _$$_PharmacyOrderTermsFromJson(
        Map<String, dynamic> json) =>
    _$_PharmacyOrderTerms(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      content: json['content'] as String,
    );

Map<String, dynamic> _$$_PharmacyOrderTermsToJson(
        _$_PharmacyOrderTerms instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
    };
