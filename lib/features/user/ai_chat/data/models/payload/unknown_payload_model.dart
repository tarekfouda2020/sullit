import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/ai_chat/domain/models/ai_chat_payload.dart';

class UnknownPayloadModel extends BaseApiModel<AiChatPayload> {
  const UnknownPayloadModel();

  @override
  UnknownPayload toDomainModel() => const UnknownPayload();
}
