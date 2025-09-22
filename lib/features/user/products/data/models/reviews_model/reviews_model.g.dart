// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reviews_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReviewsModel _$$_ReviewsModelFromJson(Map<String, dynamic> json) =>
    _$_ReviewsModel(
      id: (json['id'] as num).toInt(),
      rate: (json['rate'] as num).toInt(),
      comment: json['comment'] as String,
      userReview:
          UserDetailsModel.fromJson(json['user'] as Map<String, dynamic>),
      createdAt: json['created_at'] as String,
    );

Map<String, dynamic> _$$_ReviewsModelToJson(_$_ReviewsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'rate': instance.rate,
      'comment': instance.comment,
      'user': instance.userReview.toJson(),
      'created_at': instance.createdAt,
    };
