// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_preview_seller_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartPreviewSellerModel _$$_CartPreviewSellerModelFromJson(
        Map<String, dynamic> json) =>
    _$_CartPreviewSellerModel(
      ownerId: (json['owner_id'] as num).toInt(),
      sellerName: json['seller_name'] as String,
      shopName: json['shop_name'] as String,
      branchChanged: json['branch_changed'] as bool,
      fromBranch: json['from_branch'] == null
          ? null
          : CartPreviewBranchModel.fromJson(
              json['from_branch'] as Map<String, dynamic>),
      toBranch: json['to_branch'] == null
          ? null
          : CartPreviewBranchModel.fromJson(
              json['to_branch'] as Map<String, dynamic>),
      deliveryAvailable: json['delivery_available'] as bool,
      deliveryMessage: json['delivery_message'] as String?,
      removed: (json['removed'] as List<dynamic>?)
              ?.map((e) => CartPreviewRemovedItemModel.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          const [],
      updated: (json['updated'] as List<dynamic>?)
              ?.map((e) => CartPreviewUpdatedItemModel.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_CartPreviewSellerModelToJson(
        _$_CartPreviewSellerModel instance) =>
    <String, dynamic>{
      'owner_id': instance.ownerId,
      'seller_name': instance.sellerName,
      'shop_name': instance.shopName,
      'branch_changed': instance.branchChanged,
      'from_branch': instance.fromBranch?.toJson(),
      'to_branch': instance.toBranch?.toJson(),
      'delivery_available': instance.deliveryAvailable,
      'delivery_message': instance.deliveryMessage,
      'removed': instance.removed.map((e) => e.toJson()).toList(),
      'updated': instance.updated.map((e) => e.toJson()).toList(),
    };
