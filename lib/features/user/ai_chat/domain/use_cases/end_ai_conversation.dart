import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/ai_chat/domain/entities/ai_chat_participant_params.dart';
import 'package:flutter_tdd/features/user/ai_chat/domain/repositories/ai_chat_repository.dart';

class EndAiConversation implements UseCase<bool, AiChatParticipantParams> {
  final String conversationId;

  EndAiConversation(this.conversationId);

  @override
  Future<bool> call(AiChatParticipantParams params) async {
    final result = await getIt<AiChatRepository>().endConversation(
      conversationId,
      params,
    );
    return result.fold((_) => false, (_) => true);
  }
}
