import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/ai_chat/domain/entities/ai_chat_participant_params.dart';
import 'package:flutter_tdd/features/user/ai_chat/domain/models/ai_chat_conversation.dart';
import 'package:flutter_tdd/features/user/ai_chat/domain/repositories/ai_chat_repository.dart';

class StartAiConversation
    implements UseCase<AiChatConversation?, AiChatParticipantParams> {
  @override
  Future<AiChatConversation?> call(AiChatParticipantParams params) async {
    final result = await getIt<AiChatRepository>().startConversation(params);
    return result.fold((_) => null, (data) => data);
  }
}
