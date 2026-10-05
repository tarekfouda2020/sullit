import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/ai_chat/data/models/payload/cart_item_model/cart_item_model.dart';
import 'package:flutter_tdd/features/user/ai_chat/domain/models/ai_chat_payload.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_payload_model.freezed.dart';
part 'cart_payload_model.g.dart';

@freezed
class CartPayloadModel extends BaseApiModel<AiChatPayload>
    with _$CartPayloadModel {
  const CartPayloadModel._();

  @JsonSerializable(explicitToJson: true)
  const factory CartPayloadModel({
    String? action,
    @Default(<CartItemModel>[]) List<CartItemModel> items,
    @JsonKey(name: 'sub_total') String? subTotal,
    @JsonKey(name: 'calculable_total') num? calculableTotal,
    @JsonKey(name: 'currency_symbol') String? currencySymbol,
    int? returned,
    @JsonKey(name: 'minimum_order_amount_msg') String? minimumOrderAmountMsg,
    @JsonKey(name: 'minimum_order_amount_status')
    @Default(false)
    bool minimumOrderAmountStatus,
  }) = _CartPayloadModel;

  factory CartPayloadModel.fromJson(Map<String, dynamic> json) =>
      _$CartPayloadModelFromJson(json);

  @override
  CartPayload toDomainModel() {
    return CartPayload(
      action: action ?? '',
      items: items.map((item) => item.toDomainModel()).toList(),
      subTotal: subTotal ?? '',
      calculableTotal: calculableTotal?.toDouble() ?? 0,
      currencySymbol: currencySymbol ?? '',
      returned: returned ?? 0,
      minimumOrderAmountMsg: minimumOrderAmountMsg ?? '',
      minimumOrderAmountStatus: minimumOrderAmountStatus,
    );
  }
}
