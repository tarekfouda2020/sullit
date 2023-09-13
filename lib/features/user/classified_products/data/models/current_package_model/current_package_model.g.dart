// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_package_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CurrentPackageModel _$$_CurrentPackageModelFromJson(
        Map<String, dynamic> json) =>
    _$_CurrentPackageModel(
      id: json['id'] as int,
      name: json['name'] as String,
      logo: json['logo'] as String,
      isFree: json['isFree'] as bool,
      amount: json['amount'] as String,
      productUpload: json['product_upload'] as int,
    );

Map<String, dynamic> _$$_CurrentPackageModelToJson(
        _$_CurrentPackageModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logo': instance.logo,
      'isFree': instance.isFree,
      'amount': instance.amount,
      'product_upload': instance.productUpload,
    };
