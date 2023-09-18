// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchase_package_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PurchasePackageResponseModel _$$_PurchasePackageResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_PurchasePackageResponseModel(
      key: json['key'] as String,
      msg: json['msg'] as String,
      data: json['data'] == null
          ? null
          : TransactionModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PurchasePackageResponseModelToJson(
        _$_PurchasePackageResponseModel instance) =>
    <String, dynamic>{
      'key': instance.key,
      'msg': instance.msg,
      'data': instance.data?.toJson(),
    };
