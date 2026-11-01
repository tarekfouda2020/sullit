import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/ai_chat/data/models/ai_chat_shop_card_model/ai_chat_shop_card_model.dart';
import 'package:flutter_tdd/features/user/ai_chat/data/models/ai_chat_view_all_model/ai_chat_view_all_model.dart';
import 'package:flutter_tdd/features/user/ai_chat/domain/models/ai_chat_payload.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shops_payload_model.freezed.dart';
part 'shops_payload_model.g.dart';

@freezed
class ShopsPayloadModel extends BaseApiModel<AiChatPayload>
    with _$ShopsPayloadModel {
  const ShopsPayloadModel._();

  @JsonSerializable(explicitToJson: true)
  const factory ShopsPayloadModel({
    @Default(<AiChatShopCardModel>[]) List<AiChatShopCardModel> shops,
    int? total,
    int? returned,
    @JsonKey(name: 'view_all') AiChatViewAllModel? viewAll,
  }) = _ShopsPayloadModel;

  factory ShopsPayloadModel.fromJson(Map<String, dynamic> json) =>
      _$ShopsPayloadModelFromJson(json);

  @override
  ShopsPayload toDomainModel() {
    return ShopsPayload(
      shops: shops.map((shop) => shop.toDomainModel()).toList(),
      total: total ?? 0,
      returned: returned ?? 0,
      viewAll: viewAll?.toDomainModel(),
    );
  }
}
