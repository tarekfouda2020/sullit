// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StateModel _$$_StateModelFromJson(Map<String, dynamic> json) =>
    _$_StateModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      country: json['country'] == null
          ? null
          : CountryModel.fromJson(json['country'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_StateModelToJson(_$_StateModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'country': instance.country?.toJson(),
    };
