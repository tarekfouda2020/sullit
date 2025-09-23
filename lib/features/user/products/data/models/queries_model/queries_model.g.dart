// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'queries_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QueriesModel _$$_QueriesModelFromJson(Map<String, dynamic> json) =>
    _$_QueriesModel(
      id: (json['id'] as num).toInt(),
      question: json['question'] as String,
      reply: json['reply'] as String,
      userDetails:
          UserDetailsModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_QueriesModelToJson(_$_QueriesModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'question': instance.question,
      'reply': instance.reply,
      'user': instance.userDetails.toJson(),
    };
