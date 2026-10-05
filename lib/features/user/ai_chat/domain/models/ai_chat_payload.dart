import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/ai_chat/domain/models/ai_chat_branch_card.dart';
import 'package:flutter_tdd/features/user/ai_chat/domain/models/ai_chat_cart_item.dart';
import 'package:flutter_tdd/features/user/ai_chat/domain/models/ai_chat_product_card.dart';
import 'package:flutter_tdd/features/user/ai_chat/domain/models/ai_chat_shop_card.dart';
import 'package:flutter_tdd/features/user/ai_chat/domain/models/ai_chat_view_all.dart';

sealed class AiChatPayload extends BaseDomainModel {
  const AiChatPayload();
}

class CartPayload extends AiChatPayload {
  final String action;
  final List<AiChatCartItem> items;
  final String subTotal;
  final double calculableTotal;
  final String currencySymbol;
  final int returned;
  final String minimumOrderAmountMsg;
  final bool minimumOrderAmountStatus;

  const CartPayload({
    required this.action,
    required this.items,
    required this.subTotal,
    required this.calculableTotal,
    required this.currencySymbol,
    required this.returned,
    required this.minimumOrderAmountMsg,
    required this.minimumOrderAmountStatus,
  });
}

class OrderPayload extends AiChatPayload {
  final int id;
  final String code;
  final String deliveryStatus;
  final String paymentStatusText;
  final String total;
  final String currencySymbol;
  final String soldByName;
  final String orderStatus;

  const OrderPayload({
    required this.id,
    required this.code,
    required this.deliveryStatus,
    required this.paymentStatusText,
    required this.total,
    required this.currencySymbol,
    required this.soldByName,
    required this.orderStatus,
  });
}

class ShopsPayload extends AiChatPayload {
  final List<AiChatShopCard> shops;
  final int total;
  final int returned;
  final AiChatViewAll? viewAll;

  const ShopsPayload({
    required this.shops,
    required this.total,
    required this.returned,
    this.viewAll,
  });
}

class BranchesPayload extends AiChatPayload {
  final AiChatShopCard? shop;
  final List<AiChatBranchCard> branches;
  final int total;
  final int returned;
  final AiChatViewAll? viewAll;

  const BranchesPayload({
    this.shop,
    required this.branches,
    required this.total,
    required this.returned,
    this.viewAll,
  });
}

class DetailAiChatPayload extends AiChatPayload {
  final String? action;
  final List<AiChatCartItem> items;
  final String? subTotal;
  final String? calculableTotal;
  final String? currencySymbol;
  final int? returned;
  final int? total;
  final AiChatViewAll? viewAll;
  final AiChatProductCard? product;
  final List<AiChatProductCard> products;
  final List<AiChatShopCard> shops;
  final AiChatShopCard? shop;
  final List<AiChatBranchCard> branches;
  final int? id;
  final String? code;
  final String? deliveryStatus;
  final String? paymentStatus;
  final num? grandTotal;
  final String? status;
  final String? statusLabel;

  const DetailAiChatPayload({
    this.action,
    this.items = const [],
    this.subTotal,
    this.calculableTotal,
    this.currencySymbol,
    this.returned,
    this.total,
    this.viewAll,
    this.product,
    this.products = const [],
    this.shops = const [],
    this.shop,
    this.branches = const [],
    this.id,
    this.code,
    this.deliveryStatus,
    this.paymentStatus,
    this.grandTotal,
    this.status,
    this.statusLabel,
  });
}

class UnknownPayload extends AiChatPayload {
  const UnknownPayload();
}
