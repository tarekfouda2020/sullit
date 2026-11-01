import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/ai_chat/domain/entities/get_ai_messages_params.dart';
import 'package:flutter_tdd/features/user/ai_chat/domain/models/ai_chat_message.dart';
import 'package:flutter_tdd/features/user/ai_chat/domain/repositories/ai_chat_repository.dart';

class GetAiMessages implements UseCase<List<AiChatMessage>, GetAiMessagesParams> {
  @override
  Future<List<AiChatMessage>> call(GetAiMessagesParams params) async {
    final result = await getIt<AiChatRepository>().getMessages(
      params.conversationId,
      params.participant,
    );
    return result.fold((_) => [], (data) => data);
  }
}
