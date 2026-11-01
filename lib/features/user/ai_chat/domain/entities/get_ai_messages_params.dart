import 'package:flutter_tdd/features/user/ai_chat/domain/entities/ai_chat_participant_params.dart';

class GetAiMessagesParams {
  final String conversationId;
  final AiChatParticipantParams participant;
  const GetAiMessagesParams({
    required this.conversationId,
    required this.participant,
  });
}
