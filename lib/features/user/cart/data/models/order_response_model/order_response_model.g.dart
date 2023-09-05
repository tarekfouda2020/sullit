// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderResponseModel _$$_OrderResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_OrderResponseModel(
      key: json['key'] as String,
      msg: json['msg'] as String,
      data: OrderSummaryModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_OrderResponseModelToJson(
        _$_OrderResponseModel instance) =>
    <String, dynamic>{
      'key': instance.key,
      'msg': instance.msg,
      'data': instance.data.toJson(),
    };
