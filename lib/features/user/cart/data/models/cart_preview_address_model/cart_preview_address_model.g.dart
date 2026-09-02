// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_preview_address_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartPreviewAddressModel _$$_CartPreviewAddressModelFromJson(
        Map<String, dynamic> json) =>
    _$_CartPreviewAddressModel(
      hasChanges: json['has_changes'] as bool,
      sellers: (json['sellers'] as List<dynamic>?)
              ?.map((e) =>
                  CartPreviewSellerModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_CartPreviewAddressModelToJson(
        _$_CartPreviewAddressModel instance) =>
    <String, dynamic>{
      'has_changes': instance.hasChanges,
      'sellers': instance.sellers.map((e) => e.toJson()).toList(),
    };
