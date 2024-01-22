import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/general/common/domain/models/support_msg.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'support_msg_model.freezed.dart';

part 'support_msg_model.g.dart';

@freezed
@immutable
class SupportMsgModel extends BaseApiModel<SupportMsg> with _$SupportMsgModel {
  const SupportMsgModel._();

  @JsonSerializable(explicitToJson: true)
  const factory SupportMsgModel({
    @JsonKey(name: "is_sender") required bool isSender,
    @JsonKey(name: "created_at") required String createdAt,
    @JsonKey(name: "message") required String msg,
    @JsonKey(name: "message_type") required String msgType,
  }) = _SupportMsgModel;

  factory SupportMsgModel.fromJson(Map<String, dynamic> json) =>
      _$SupportMsgModelFromJson(json);

  @override
  SupportMsg toDomainModel() {
    return SupportMsg(
      isSender: isSender,
      createdAt: createdAt,
      msg: msg,
      msgType: msgType,
    );
  }
}
