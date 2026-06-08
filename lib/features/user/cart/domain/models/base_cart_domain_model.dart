import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

abstract class BaseCartItemDomainModel extends BaseDomainModel {
  abstract int id;
  abstract int ownerId;
  abstract String thumbnailImage;
  abstract String name;
  abstract String price;
  abstract String tax;
  abstract int quantity;
  abstract bool isDigital;
  abstract String total;
  abstract num calculableTotal;
  abstract String currencySymbol;
  abstract int productId;
  abstract int loyaltyPoints;
  abstract int minQty;
  abstract int stockQty;
  abstract bool isWishlist;
  abstract bool hasSpecialLoyaltyPoints;
  abstract String soldByType;
  abstract String soldBy;
  abstract int? shopId;
  abstract double rating;
}
