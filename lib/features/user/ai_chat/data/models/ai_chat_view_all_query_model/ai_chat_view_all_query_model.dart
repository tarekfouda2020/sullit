import 'package:flutter_tdd/features/user/ai_chat/domain/models/ai_chat_view_all_query.dart';
import 'package:freezed_annotation/freezed_annotation.dart';



part 'ai_chat_view_all_query_model.freezed.dart';
part 'ai_chat_view_all_query_model.g.dart';

@freezed
class AiChatViewAllQueryModel with _$AiChatViewAllQueryModel {
  const AiChatViewAllQueryModel._();

  @JsonSerializable(explicitToJson: true)
  const factory AiChatViewAllQueryModel({
    String? keyword,
    num? latitude,
    num? longitude,
    @JsonKey(name: 'shop_id')
    int? shopId,
    @JsonKey(name: 'branch_id')
    int? branchId,
    String? type,
    @JsonKey(name: 'offer_type')
    String? offerType,
  }) = _AiChatViewAllQueryModel;

  factory AiChatViewAllQueryModel.fromJson(Map<String, dynamic> json) =>
      _$AiChatViewAllQueryModelFromJson(json);

  AiChatViewAllQuery toDomainModel() {
    return AiChatViewAllQuery(keyword: keyword);
  }
}
