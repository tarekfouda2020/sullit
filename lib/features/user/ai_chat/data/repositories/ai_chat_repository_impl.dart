import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/models/model_to_domain/model_to_domain.dart';
import 'package:flutter_tdd/features/user/ai_chat/data/data_sources/ai_chat_data_source.dart';
import 'package:flutter_tdd/features/user/ai_chat/data/models/ai_chat_conversation_model/ai_chat_conversation_model.dart';
import 'package:flutter_tdd/features/user/ai_chat/data/models/ai_chat_history_model/ai_chat_history_model.dart';
import 'package:flutter_tdd/features/user/ai_chat/data/models/ai_chat_send_model/ai_chat_send_model.dart';
import 'package:flutter_tdd/features/user/ai_chat/domain/entities/ai_chat_participant_params.dart';
import 'package:flutter_tdd/features/user/ai_chat/domain/entities/handoff_params.dart';
import 'package:flutter_tdd/features/user/ai_chat/domain/entities/send_ai_message_params.dart';
import 'package:flutter_tdd/features/user/ai_chat/domain/models/ai_chat_conversation.dart';
import 'package:flutter_tdd/features/user/ai_chat/domain/models/ai_chat_message.dart';
import 'package:flutter_tdd/features/user/ai_chat/domain/models/ai_chat_reply.dart';
import 'package:flutter_tdd/features/user/ai_chat/domain/repositories/ai_chat_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AiChatRepository)
class AiChatRepositoryImpl extends AiChatRepository with ModelToDomain {
  final AiChatDataSource _dataSource = getIt<AiChatDataSource>();

  @override
  Future<Either<Failure, AiChatConversation>> startConversation(
    AiChatParticipantParams params,
  ) async {
    final result = await _dataSource.startConversation(params);
    return toDomainResult<AiChatConversation, AiChatConversationModel>(result);
  }

  @override
  Future<Either<Failure, List<AiChatMessage>>> getMessages(
    String conversationId,
    AiChatParticipantParams params,
  ) async {
    final result = await _dataSource.getMessages(conversationId, params);
    return toDomainResultList<AiChatMessage, AiChatHistoryModel>(result);
  }

  @override
  Future<Either<Failure, AiChatReply>> sendMessage(
    SendAiMessageParams params,
  ) async {
    final result = await _dataSource.sendMessage(params);
    return toDomainResult<AiChatReply, AiChatSendModel>(result);
  }

  @override
  Future<Either<Failure, AiChatConversation>> endConversation(
    String conversationId,
    AiChatParticipantParams params,
  ) async {
    final result = await _dataSource.endConversation(conversationId, params);
    return toDomainResult<AiChatConversation, AiChatConversationModel>(result);
  }

  @override
  Future<Either<Failure, AiChatReply>> requestHandoff(
    HandoffParams params,
  ) async {
    final result = await _dataSource.requestHandoff(params);
    return toDomainResult<AiChatReply, AiChatSendModel>(result);
  }
}
