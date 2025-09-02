// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track_order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TrackOrder _$$_TrackOrderFromJson(Map<String, dynamic> json) =>
    _$_TrackOrder(
      id: json['id'] as int,
      code: json['code'] as String,
      isCompleted: json['is_completed'] as bool,
      orderType: json['order_type'] as String,
      tracking: (json['tracking'] as List<dynamic>)
          .map((e) => OrderStatus.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TrackOrderToJson(_$_TrackOrder instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'is_completed': instance.isCompleted,
      'order_type': instance.orderType,
      'tracking': instance.tracking.map((e) => e.toJson()).toList(),
    };

_$_OrderStatus _$$_OrderStatusFromJson(Map<String, dynamic> json) =>
    _$_OrderStatus(
      status: json['status'] as String,
      createdAt: json['created_at'] as String,
    );

Map<String, dynamic> _$$_OrderStatusToJson(_$_OrderStatus instance) =>
    <String, dynamic>{
      'status': instance.status,
      'created_at': instance.createdAt,
    };
