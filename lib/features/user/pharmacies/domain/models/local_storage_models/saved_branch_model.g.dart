// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saved_branch_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SavedBranchModel _$$_SavedBranchModelFromJson(Map<String, dynamic> json) =>
    _$_SavedBranchModel(
      id: (json['id'] as num).toInt(),
      ownerId: (json['owner_id'] as num).toInt(),
      ownerName: json['owner_name'] as String,
      name: json['name'] as String,
      type: $enumDecode(_$BranchTypeEnumEnumMap, json['type']),
    );

Map<String, dynamic> _$$_SavedBranchModelToJson(_$_SavedBranchModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'owner_id': instance.ownerId,
      'owner_name': instance.ownerName,
      'name': instance.name,
      'type': _$BranchTypeEnumEnumMap[instance.type]!,
    };

const _$BranchTypeEnumEnumMap = {
  BranchTypeEnum.pharmacy: 'pharmacy',
  BranchTypeEnum.merchant: 'merchant',
};
