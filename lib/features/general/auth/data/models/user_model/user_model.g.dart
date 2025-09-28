// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      avatar: json['avatar'] as String?,
      avatarOriginal: json['avatar_original'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      fullPhone: json['full_phone'] as String,
      countryCode: json['country_code'] as String,
      token: json['token'] as String,
      tokenType: json['token_type'] as String,
      isPhoneActive: json['phone_is_active'] as bool,
      isEmailActive: json['email_is_active'] as bool,
      hasValidSubscription: json['has_valid_subscription'] as bool,
      address: json['address'] == null
          ? null
          : AddressModel.fromJson(json['address'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'avatar': instance.avatar,
      'avatar_original': instance.avatarOriginal,
      'email': instance.email,
      'phone': instance.phone,
      'full_phone': instance.fullPhone,
      'country_code': instance.countryCode,
      'token': instance.token,
      'token_type': instance.tokenType,
      'phone_is_active': instance.isPhoneActive,
      'email_is_active': instance.isEmailActive,
      'has_valid_subscription': instance.hasValidSubscription,
      'address': instance.address?.toJson(),
    };
