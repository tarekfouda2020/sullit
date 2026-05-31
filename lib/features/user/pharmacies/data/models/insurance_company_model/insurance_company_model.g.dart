// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'insurance_company_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InsuranceCompanyModel _$$_InsuranceCompanyModelFromJson(
        Map<String, dynamic> json) =>
    _$_InsuranceCompanyModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      code: json['code'] as String,
      logo: json['logo'] as String,
    );

Map<String, dynamic> _$$_InsuranceCompanyModelToJson(
        _$_InsuranceCompanyModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'logo': instance.logo,
    };
