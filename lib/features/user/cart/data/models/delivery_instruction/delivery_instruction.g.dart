// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_instruction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DeliveryInstruction _$$_DeliveryInstructionFromJson(
        Map<String, dynamic> json) =>
    _$_DeliveryInstruction(
      name: json['name'] as String,
      image: json['image'] as String,
      id: (json['id'] as num).toInt(),
    );

Map<String, dynamic> _$$_DeliveryInstructionToJson(
        _$_DeliveryInstruction instance) =>
    <String, dynamic>{
      'name': instance.name,
      'image': instance.image,
      'id': instance.id,
    };
