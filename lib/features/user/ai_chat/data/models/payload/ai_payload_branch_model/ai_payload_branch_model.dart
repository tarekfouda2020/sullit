import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/ai_chat/data/models/ai_chat_branch_model/ai_chat_branch_model.dart';
import 'package:flutter_tdd/features/user/ai_chat/data/models/ai_chat_shop_card_model/ai_chat_shop_card_model.dart';
import 'package:flutter_tdd/features/user/ai_chat/data/models/ai_chat_view_all_model/ai_chat_view_all_model.dart';
import 'package:flutter_tdd/features/user/ai_chat/domain/models/ai_chat_payload.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ai_payload_branch_model.freezed.dart';
part 'ai_payload_branch_model.g.dart';

@freezed
class AiPayloadBranchModel extends BaseApiModel<AiChatPayload>
    with _$AiPayloadBranchModel {
  const AiPayloadBranchModel._();

  @JsonSerializable(explicitToJson: true)
  const factory AiPayloadBranchModel({
    AiChatShopCardModel? shop,
    @Default(<AiChatBranchModel>[]) List<AiChatBranchModel> branches,
    int? total,
    int? returned,
    @JsonKey(name: 'view_all') AiChatViewAllModel? viewAll,
  }) = _AiPayloadBranchModel;

  factory AiPayloadBranchModel.fromJson(Map<String, dynamic> json) =>
      _$AiPayloadBranchModelFromJson(json);

  @override
  BranchesPayload toDomainModel() {
    return BranchesPayload(
      shop: shop?.toDomainModel(),
      branches: branches.map((branch) => branch.toDomainModel()).toList(),
      total: total ?? 0,
      returned: returned ?? 0,
      viewAll: viewAll?.toDomainModel(),
    );
  }
}
