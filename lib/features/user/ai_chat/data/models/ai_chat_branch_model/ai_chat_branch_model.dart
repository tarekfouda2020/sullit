import 'package:flutter_tdd/features/user/ai_chat/domain/models/ai_chat_branch_card.dart';
import 'package:freezed_annotation/freezed_annotation.dart';



part 'ai_chat_branch_model.freezed.dart';
part 'ai_chat_branch_model.g.dart';

@freezed
class AiChatBranchModel with _$AiChatBranchModel {
  const AiChatBranchModel._();

  @JsonSerializable(explicitToJson: true)
  const factory AiChatBranchModel({
    int? id,
    String? name,
    @JsonKey(name: 'is_open')
    bool? isOpen,
  }) = _AiChatBranchModel;

  factory AiChatBranchModel.fromJson(Map<String, dynamic> json) =>
      _$AiChatBranchModelFromJson(json);

  AiChatBranchCard toDomainModel() {
    return AiChatBranchCard(id: id, name: name, isOpen: isOpen);
  }
}
