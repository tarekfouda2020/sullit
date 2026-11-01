import 'package:flutter_tdd/features/user/ai_chat/domain/models/ai_chat_view_all.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter_tdd/features/user/ai_chat/data/models/ai_chat_view_all_query_model/ai_chat_view_all_query_model.dart';

part 'ai_chat_view_all_model.freezed.dart';
part 'ai_chat_view_all_model.g.dart';

@freezed
class AiChatViewAllModel with _$AiChatViewAllModel {
  const AiChatViewAllModel._();

  @JsonSerializable(explicitToJson: true)
  const factory AiChatViewAllModel({
    String? screen,
    AiChatViewAllQueryModel? query,
  }) = _AiChatViewAllModel;

  factory AiChatViewAllModel.fromJson(Map<String, dynamic> json) =>
      _$AiChatViewAllModelFromJson(json);

  AiChatViewAll toDomainModel() {
    return AiChatViewAll(screen: screen, query: query?.toDomainModel());
  }
}
