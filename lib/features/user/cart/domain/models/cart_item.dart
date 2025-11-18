import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class CartItem extends BaseDomainModel {
  int id;
  int ownerId;
  String thumbnailImage;
  String name;
  String price;
  String tax;
  int quantity;
  bool isDigital;
  String total;
  num calculableTotal;
  String currencySymbol;
  int productId;
  int loyaltyPoints;
  int minQty;
  int stockQty;
  bool isWishlist;
  bool hasSpecialLoyaltyPoints;
  String soldByType;
  String soldBy;
  int? shopId;
  double rating;


  CartItem({
    required this.id,
    required this.ownerId,
    required this.thumbnailImage,
    required this.name,
    required this.price,
    required this.tax,
    required this.quantity,
    required this.isDigital,
    required this.total,
    required this.calculableTotal ,
    required this.currencySymbol,
    required this.productId,
    required this.minQty,
    required this.stockQty,
    required this.isWishlist,
    required this.soldBy,
    required this.soldByType,
    required this.shopId,
    required this.rating,
    required this.loyaltyPoints,
    required this.hasSpecialLoyaltyPoints,
  });
}
