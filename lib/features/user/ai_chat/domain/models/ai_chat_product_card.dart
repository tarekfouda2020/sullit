import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/ai_chat/domain/models/ai_chat_branch_card.dart';

class AiChatProductCard extends BaseDomainModel {
  final int? id;
  final String? name;
  final String? thumbnailImg;
  final String? priceHighLow;
  final String? priceHighLowDiscount;
  final String? currencySymbol;
  final bool? hasDiscount;
  final bool? isWishlist;
  final AiChatBranchCard? branch;

  const AiChatProductCard({
    this.id,
    this.name,
    this.thumbnailImg,
    this.priceHighLow,
    this.priceHighLowDiscount,
    this.currencySymbol,
    this.hasDiscount,
    this.isWishlist,
    this.branch,
  });

  String get priceText {
    final price = hasDiscount == true ? priceHighLowDiscount : priceHighLow;
    return '${price ?? ''} ${currencySymbol ?? ''}'.trim();
  }
}
