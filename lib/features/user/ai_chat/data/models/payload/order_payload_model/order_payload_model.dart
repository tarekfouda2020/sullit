import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/ai_chat/domain/models/ai_chat_payload.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_payload_model.freezed.dart';
part 'order_payload_model.g.dart';

@freezed
class OrderPayloadModel extends BaseApiModel<AiChatPayload>
    with _$OrderPayloadModel {
  const OrderPayloadModel._();

  @JsonSerializable(explicitToJson: true)
  const factory OrderPayloadModel({
    int? id,
    String? code,
    @JsonKey(name: 'delivery_status') String? deliveryStatus,
    @JsonKey(name: 'payment_status_text') String? paymentStatusText,
    String? total,
    @JsonKey(name: 'currency_symbol') String? currencySymbol,
    @JsonKey(name: 'sold_by_name') String? soldByName,
    @JsonKey(name: 'order_status') String? orderStatus,
  }) = _OrderPayloadModel;

  factory OrderPayloadModel.fromJson(Map<String, dynamic> json) =>
      _$OrderPayloadModelFromJson(json);

  @override
  OrderPayload toDomainModel() {
    return OrderPayload(
      id: id ?? 0,
      code: code ?? '',
      deliveryStatus: deliveryStatus ?? '',
      paymentStatusText: paymentStatusText ?? '',
      total: total ?? '',
      currencySymbol: currencySymbol ?? '',
      soldByName: soldByName ?? '',
      orderStatus: orderStatus ?? '',
    );
  }
}
