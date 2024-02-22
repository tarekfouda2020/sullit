// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDataModel _$$_UserDataModelFromJson(Map<String, dynamic> json) =>
    _$_UserDataModel(
      user: json['user'] == null
          ? null
          : UserModel.fromJson(json['user'] as Map<String, dynamic>),
      isAdminDiscount: json['is_admin_discount'] as bool?,
      msgAdminDiscount: json['msg_admin_discount'] as String?,
    );

Map<String, dynamic> _$$_UserDataModelToJson(_$_UserDataModel instance) =>
    <String, dynamic>{
      'user': instance.user?.toJson(),
      'is_admin_discount': instance.isAdminDiscount,
      'msg_admin_discount': instance.msgAdminDiscount,
    };
