import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/core/models/api_models/image_model/image_model.dart';
import 'package:flutter_tdd/features/user/tickets/data/models/ticket_reply_model/ticket_reply_model.dart';
import 'package:flutter_tdd/features/user/tickets/domain/models/ticket.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket_model.freezed.dart';
part 'ticket_model.g.dart';

@freezed
@immutable
class TicketModel extends BaseApiModel<Ticket> with _$TicketModel {
  const TicketModel._();
  @JsonSerializable(explicitToJson: true)
  const factory TicketModel(
      {required int id,
      @JsonKey(name: "ticket_id") required String ticketId,
      @JsonKey(name: "sending_date") required DateTime sendingDate,
      required String subject,
      required String status,
      required List<ImageModel> images,
      List<TicketReplyModel>? replies}) = _TicketModel;

  factory TicketModel.fromJson(Map<String, dynamic> json) =>
      _$TicketModelFromJson(json);

  @override
  Ticket toDomainModel() {
    return Ticket(
        id: id,
        images: images.map((e) => e.toDomainModel()).toList(),
        sendingDate: sendingDate,
        subject: subject,
        ticketId: ticketId,
        status: status,
        replies: replies?.map((e) => e.toDomainModel()).toList());
  }
}
