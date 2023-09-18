// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cus_package_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CusPackageModel _$$_CusPackageModelFromJson(Map<String, dynamic> json) =>
    _$_CusPackageModel(
      id: json['id'] as int,
      name: json['name'] as String,
      logo: json['logo'] as String,
      isFree: json['is_free'] as bool,
      amount: json['amount'] as String,
      productUpload: json['product_upload'] as int,
    );

Map<String, dynamic> _$$_CusPackageModelToJson(_$_CusPackageModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logo': instance.logo,
      'is_free': instance.isFree,
      'amount': instance.amount,
      'product_upload': instance.productUpload,
    };
