// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TicketModel _$$_TicketModelFromJson(Map<String, dynamic> json) =>
    _$_TicketModel(
      id: (json['id'] as num).toInt(),
      ticketId: json['ticket_id'] as String,
      sendingDate: DateTime.parse(json['sending_date'] as String),
      subject: json['subject'] as String,
      status: json['status'] as String,
      images: (json['images'] as List<dynamic>)
          .map((e) => ImageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      replies: (json['replies'] as List<dynamic>?)
          ?.map((e) => TicketReplyModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TicketModelToJson(_$_TicketModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ticket_id': instance.ticketId,
      'sending_date': instance.sendingDate.toIso8601String(),
      'subject': instance.subject,
      'status': instance.status,
      'images': instance.images.map((e) => e.toJson()).toList(),
      'replies': instance.replies?.map((e) => e.toJson()).toList(),
    };
