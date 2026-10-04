import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/ai_chat/domain/entities/handoff_params.dart';
import 'package:flutter_tdd/features/user/ai_chat/domain/models/ai_chat_reply.dart';
import 'package:flutter_tdd/features/user/ai_chat/domain/repositories/ai_chat_repository.dart';

class RequestAiHandoff implements UseCase<AiChatReply?, HandoffParams> {
  @override
  Future<AiChatReply?> call(HandoffParams params) async {
    final result = await getIt<AiChatRepository>().requestHandoff(params);
    return result.fold((_) => null, (data) => data);
  }
}
