import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/ai_chat/domain/models/ai_chat_message.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ai_chat_history_model.freezed.dart';
part 'ai_chat_history_model.g.dart';

@freezed
class AiChatHistoryModel extends BaseApiModel<AiChatMessage>
    with _$AiChatHistoryModel {
  const AiChatHistoryModel._();

  @JsonSerializable(explicitToJson: true)
  const factory AiChatHistoryModel({
    required String id,
    required String role,
    required String content,
  }) = _AiChatHistoryModel;

  factory AiChatHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$AiChatHistoryModelFromJson(json);

  @override
  AiChatMessage toDomainModel() {
    return AiChatMessage(
      id: id,
      isUser: role == 'user',
      text: content,
    );
  }
}
