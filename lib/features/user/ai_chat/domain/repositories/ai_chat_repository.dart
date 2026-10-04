import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/user/ai_chat/domain/entities/ai_chat_participant_params.dart';
import 'package:flutter_tdd/features/user/ai_chat/domain/entities/handoff_params.dart';
import 'package:flutter_tdd/features/user/ai_chat/domain/entities/send_ai_message_params.dart';
import 'package:flutter_tdd/features/user/ai_chat/domain/models/ai_chat_conversation.dart';
import 'package:flutter_tdd/features/user/ai_chat/domain/models/ai_chat_message.dart';
import 'package:flutter_tdd/features/user/ai_chat/domain/models/ai_chat_reply.dart';

abstract class AiChatRepository {
  Future<Either<Failure, AiChatConversation>> startConversation(
    AiChatParticipantParams params,
  );

  Future<Either<Failure, List<AiChatMessage>>> getMessages(
    String conversationId,
    AiChatParticipantParams params,
  );

  Future<Either<Failure, AiChatReply>> sendMessage(SendAiMessageParams params);

  Future<Either<Failure, AiChatConversation>> endConversation(
    String conversationId,
    AiChatParticipantParams params,
  );

  Future<Either<Failure, AiChatReply>> requestHandoff(HandoffParams params);
}
