import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/ai_chat/domain/entities/send_ai_message_params.dart';
import 'package:flutter_tdd/features/user/ai_chat/domain/models/ai_chat_reply.dart';
import 'package:flutter_tdd/features/user/ai_chat/domain/repositories/ai_chat_repository.dart';

class SendAiMessage implements UseCase<AiChatReply?, SendAiMessageParams> {
  @override
  Future<AiChatReply?> call(SendAiMessageParams params) async {
    final result = await getIt<AiChatRepository>().sendMessage(params);
    return result.fold((_) => null, (data) => data);
  }
}
