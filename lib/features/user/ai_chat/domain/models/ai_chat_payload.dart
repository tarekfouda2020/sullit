import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/ai_chat/domain/models/ai_chat_branch_card.dart';
import 'package:flutter_tdd/features/user/ai_chat/domain/models/ai_chat_cart_item.dart';
import 'package:flutter_tdd/features/user/ai_chat/domain/models/ai_chat_product_card.dart';
import 'package:flutter_tdd/features/user/ai_chat/domain/models/ai_chat_shop_card.dart';
import 'package:flutter_tdd/features/user/ai_chat/domain/models/ai_chat_view_all.dart';

class AiChatPayload extends BaseDomainModel {
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

  const AiChatPayload({
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
