// ignore_for_file: avoid_dynamic_calls

import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart';
import 'package:flutter_tdd/core/http/models/http_request_model.dart';
import 'package:flutter_tdd/features/user/ai_chat/data/data_sources/ai_chat_data_source.dart';
import 'package:flutter_tdd/features/user/ai_chat/data/models/ai_chat_conversation_model/ai_chat_conversation_model.dart';
import 'package:flutter_tdd/features/user/ai_chat/data/models/ai_chat_history_model/ai_chat_history_model.dart';
import 'package:flutter_tdd/features/user/ai_chat/data/models/ai_chat_send_model/ai_chat_send_model.dart';
import 'package:flutter_tdd/features/user/ai_chat/domain/entities/ai_chat_participant_params.dart';
import 'package:flutter_tdd/features/user/ai_chat/domain/entities/handoff_params.dart';
import 'package:flutter_tdd/features/user/ai_chat/domain/entities/send_ai_message_params.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AiChatDataSource)
class AiChatDataSourceImpl extends AiChatDataSource {
  @override
  Future<Either<Failure, AiChatConversationModel>> startConversation(
    AiChatParticipantParams params,
  ) async {
    final model = HttpRequestModel(
      url: ApiNames.chatbotConversations,
      requestMethod: RequestMethod.post,
      requestBody: params.toJson(),
      responseType: ResType.model,
      showLoader: false,
      responseKey: (data) => data['data'],
      toJsonFunc: (json) => AiChatConversationModel.fromJson(json),
      errorFunc: (data) => data['msg'],
    );
    return GenericHttpImpl<AiChatConversationModel>().call(model);
  }

  @override
  Future<Either<Failure, List<AiChatHistoryModel>>> getMessages(
    String conversationId,
    AiChatParticipantParams params,
  ) async {
    final model = HttpRequestModel(
      url: ApiNames.chatbotMessages(conversationId) + params.query(),
      requestMethod: RequestMethod.get,
      responseType: ResType.list,
      showLoader: false,
      responseKey: (data) => data['data'],
      toJsonFunc: (json) => List<AiChatHistoryModel>.from(
        json.map((item) => AiChatHistoryModel.fromJson(item)),
      ),
      errorFunc: (data) => data['msg'],
    );
    return GenericHttpImpl<List<AiChatHistoryModel>>().call(model);
  }

  @override
  Future<Either<Failure, AiChatSendModel>> sendMessage(
    SendAiMessageParams params,
  ) async {
    final model = HttpRequestModel(
      url: ApiNames.chatbotMessages(params.conversationId),
      requestMethod: RequestMethod.post,
      requestBody: params.toJson(),
      responseType: ResType.model,
      showLoader: false,
      responseKey: (data) => data['data'],
      toJsonFunc: (json) => AiChatSendModel.fromJson(json),
      errorFunc: (data) => data['msg'],
    );
    return GenericHttpImpl<AiChatSendModel>().call(model);
  }

  @override
  Future<Either<Failure, AiChatConversationModel>> endConversation(
    String conversationId,
    AiChatParticipantParams params,
  ) async {
    final model = HttpRequestModel(
      url: ApiNames.chatbotEnd(conversationId),
      requestMethod: RequestMethod.post,
      requestBody: params.toJson(),
      responseType: ResType.model,
      showLoader: false,
      refresh: params.refresh,
      responseKey: (data) => data['data'],
      toJsonFunc: (json) => AiChatConversationModel.fromJson(json),
      errorFunc: (data) => data['msg'],
    );
    return GenericHttpImpl<AiChatConversationModel>().call(model);
  }

  @override
  Future<Either<Failure, AiChatSendModel>> requestHandoff(
    HandoffParams params,
  ) async {
    final model = HttpRequestModel(
      url: ApiNames.chatbotHandoff(params.conversationId),
      requestMethod: RequestMethod.post,
      requestBody: params.toJson(),
      responseType: ResType.model,
      showLoader: false,
      responseKey: (data) => data['data'],
      toJsonFunc: (json) => AiChatSendModel.fromJson(
        json is Map<String, dynamic> ? json : <String, dynamic>{},
      ),
      errorFunc: (data) => data['msg'],
    );
    return GenericHttpImpl<AiChatSendModel>().call(model);
  }
}
