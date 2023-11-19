import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/core/models/api_models/image_model/image_model.dart';
import 'package:flutter_tdd/features/general/auth/data/models/user_model/user_model.dart';
import 'package:flutter_tdd/features/user/tickets/domain/models/ticket_reply.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket_reply_model.freezed.dart';
part 'ticket_reply_model.g.dart';

@freezed
@immutable
class TicketReplyModel extends BaseApiModel<TicketReply>
    with _$TicketReplyModel {
  const TicketReplyModel._();

  @JsonSerializable(explicitToJson: true)
  const factory TicketReplyModel({
    required int id,
    @JsonKey(name: "created_at") required DateTime createdAt,
    required String reply,
    required UserModel user,    required List<ImageModel> images,

  }) = _TicketReplyModel;

  factory TicketReplyModel.fromJson(Map<String, dynamic> json) =>
      _$TicketReplyModelFromJson(json);

  @override
  TicketReply toDomainModel() {
    return TicketReply(
      id: id,
      createdAt: createdAt,
      user: user.toDomainModel(),
      reply: reply,
      images: images.map((e) => e.toDomainModel()).toList(),
    );
  }
}
