import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/ai_chat/domain/models/ai_chat_conversation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ai_chat_conversation_model.freezed.dart';
part 'ai_chat_conversation_model.g.dart';


@freezed
class AiChatConversationModel extends BaseApiModel<AiChatConversation>
    with _$AiChatConversationModel {
  const AiChatConversationModel._();

  @JsonSerializable(explicitToJson: true)
  const factory AiChatConversationModel({
    required String id,
    String? title,
    String? status,
  }) = _AiChatConversationModel;

  factory AiChatConversationModel.fromJson(Map<String, dynamic> json) =>
      _$AiChatConversationModelFromJson(json);

  @override
  AiChatConversation toDomainModel() {
    return AiChatConversation(
      id: id,
      title: title ?? '',
      status: status ?? '',
    );
  }
}
