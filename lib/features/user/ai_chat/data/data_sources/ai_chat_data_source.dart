import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/user/ai_chat/data/models/ai_chat_conversation_model/ai_chat_conversation_model.dart';
import 'package:flutter_tdd/features/user/ai_chat/data/models/ai_chat_history_model/ai_chat_history_model.dart';
import 'package:flutter_tdd/features/user/ai_chat/data/models/ai_chat_send_model/ai_chat_send_model.dart';
import 'package:flutter_tdd/features/user/ai_chat/domain/entities/ai_chat_participant_params.dart';
import 'package:flutter_tdd/features/user/ai_chat/domain/entities/handoff_params.dart';
import 'package:flutter_tdd/features/user/ai_chat/domain/entities/send_ai_message_params.dart';

abstract class AiChatDataSource {
  Future<Either<Failure, AiChatConversationModel>> startConversation(
    AiChatParticipantParams params,
  );

  Future<Either<Failure, List<AiChatHistoryModel>>> getMessages(
    String conversationId,
    AiChatParticipantParams params,
  );

  Future<Either<Failure, AiChatSendModel>> sendMessage(
    SendAiMessageParams params,
  );

  Future<Either<Failure, AiChatConversationModel>> endConversation(
    String conversationId,
    AiChatParticipantParams params,
  );

  Future<Either<Failure, AiChatSendModel>> requestHandoff(HandoffParams params);
}
