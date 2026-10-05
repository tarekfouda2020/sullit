import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/ai_chat/data/models/ai_chat_payload_model/ai_chat_payload_model.dart';
import 'package:flutter_tdd/features/user/ai_chat/data/models/payload/ai_payload_branch_model/ai_payload_branch_model.dart';
import 'package:flutter_tdd/features/user/ai_chat/data/models/payload/cart_payload_model/cart_payload_model.dart';
import 'package:flutter_tdd/features/user/ai_chat/data/models/payload/order_payload_model/order_payload_model.dart';
import 'package:flutter_tdd/features/user/ai_chat/data/models/payload/shops_payload_model/shops_payload_model.dart';
import 'package:flutter_tdd/features/user/ai_chat/data/models/payload/unknown_payload_model.dart';
import 'package:flutter_tdd/features/user/ai_chat/domain/models/ai_chat_payload.dart';

abstract final class AiChatPayloadParser {
  static BaseApiModel<AiChatPayload>? parse({
    required String type,
    required Object? payloadJson,
  }) {
    if (payloadJson == null) return null;
    if (payloadJson is! Map) return const UnknownPayloadModel();
    final json = Map<String, dynamic>.from(payloadJson);
    try {
      return switch (type) {
        'cart' => CartPayloadModel.fromJson(json),
        'order' => OrderPayloadModel.fromJson(json),
        'shops' => ShopsPayloadModel.fromJson(json),
        'branches' => AiPayloadBranchModel.fromJson(json),
        'product' || 'products' || 'handoff' =>
          AiChatPayloadModel.fromJson(json),
        _ => const UnknownPayloadModel(),
      };
    } catch (_) {
      return const UnknownPayloadModel();
    }
  }
}
