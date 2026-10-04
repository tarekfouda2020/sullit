import 'package:flutter_tdd/features/user/ai_chat/domain/models/ai_chat_payload.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter_tdd/features/user/ai_chat/data/models/ai_chat_branch_model/ai_chat_branch_model.dart';
import 'package:flutter_tdd/features/user/ai_chat/data/models/ai_chat_cart_item_model/ai_chat_cart_item_model.dart';
import 'package:flutter_tdd/features/user/ai_chat/data/models/ai_chat_product_card_model/ai_chat_product_card_model.dart';
import 'package:flutter_tdd/features/user/ai_chat/data/models/ai_chat_shop_card_model/ai_chat_shop_card_model.dart';
import 'package:flutter_tdd/features/user/ai_chat/data/models/ai_chat_view_all_model/ai_chat_view_all_model.dart';

part 'ai_chat_payload_model.freezed.dart';
part 'ai_chat_payload_model.g.dart';

@freezed
class AiChatPayloadModel with _$AiChatPayloadModel {
  const AiChatPayloadModel._();

  @JsonSerializable(explicitToJson: true)
  const factory AiChatPayloadModel({
    String? type,
    String? action,
    List<AiChatCartItemModel>? items,
    @JsonKey(name: 'sub_total')
    String? subTotal,
    @JsonKey(name: 'calculable_total')
    String? calculableTotal,
    @JsonKey(name: 'currency_symbol')
    String? currencySymbol,
    int? returned,
    int? total,
    @JsonKey(name: 'view_all')
    AiChatViewAllModel? viewAll,
    AiChatProductCardModel? product,
    List<AiChatProductCardModel>? products,
    List<AiChatShopCardModel>? shops,
    AiChatShopCardModel? shop,
    List<AiChatBranchModel>? branches,
    int? id,
    String? code,
    @JsonKey(name: 'delivery_status')
    String? deliveryStatus,
    @JsonKey(name: 'payment_status')
    String? paymentStatus,
    @JsonKey(name: 'grand_total')
    num? grandTotal,
    String? status,
    @JsonKey(name: 'status_label')
    String? statusLabel,
  }) = _AiChatPayloadModel;

  factory AiChatPayloadModel.fromJson(Map<String, dynamic> json) =>
      _$AiChatPayloadModelFromJson(json);

  AiChatPayload toDomainModel() {
    return AiChatPayload(
      action: action,
      items: items?.map((item) => item.toDomainModel()).toList() ?? const [],
      subTotal: subTotal,
      calculableTotal: calculableTotal,
      currencySymbol: currencySymbol,
      returned: returned,
      total: total,
      viewAll: viewAll?.toDomainModel(),
      product: product?.toDomainModel(),
      products: products?.map((item) => item.toDomainModel()).toList() ?? const [],
      shops: shops?.map((item) => item.toDomainModel()).toList() ?? const [],
      shop: shop?.toDomainModel(),
      branches: branches?.map((item) => item.toDomainModel()).toList() ?? const [],
      id: id,
      code: code,
      deliveryStatus: deliveryStatus,
      paymentStatus: paymentStatus,
      grandTotal: grandTotal,
      status: status,
      statusLabel: statusLabel,
    );
  }
}
