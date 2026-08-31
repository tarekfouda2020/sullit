import 'package:flutter_tdd/features/user/cart/domain/models/base_cart_domain_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/cart_option.dart';

class GeneralCartItem extends BaseCartItemDomainModel {
  @override
  int id;
  @override
  int ownerId;
  @override
  String thumbnailImage;
  @override
  String name;
  @override
  String price;
  @override
  String tax;
  @override
  int quantity;
  @override
  bool isDigital;
  @override
  String total;
  @override
  num calculableTotal;
  @override
  String currencySymbol;
  @override
  int productId;
  @override
  int loyaltyPoints;
  @override
  int minQty;
  @override
  int stockQty;
  @override
  bool isWishlist;
  @override
  bool isFresh;
  @override
  bool hasSpecialLoyaltyPoints;
  @override
  String soldByType;
  @override
  String soldBy;
  @override
  int? shopId;
  @override
  double rating;

  final bool? prescriptionRequired;
  final bool? insuranceEligible;
  final int? branchId;
  final List<CartOption>? cartOptions;

  GeneralCartItem({
    required this.id,
    this.prescriptionRequired,
    this.insuranceEligible,
    this.branchId,
    this.cartOptions,
    required this.ownerId,
    required this.thumbnailImage,
    required this.name,
    required this.price,
    required this.tax,
    required this.quantity,
    required this.isDigital,
    required this.total,
    required this.calculableTotal,
    required this.currencySymbol,
    required this.productId,
    required this.minQty,
    required this.stockQty,
    required this.isWishlist,
    required this.isFresh,
    required this.soldBy,
    required this.soldByType,
    required this.shopId,
    required this.rating,
    required this.loyaltyPoints,
    required this.hasSpecialLoyaltyPoints,
  });


}
