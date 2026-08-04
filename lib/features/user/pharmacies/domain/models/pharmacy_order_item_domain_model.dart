import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';
import 'package:flutter_tdd/features/user/products/domain/models/reviews.dart';

class PharmacyOrderItemDomainModel extends BaseDomainModel {
  final int? id;
  final String? variation;
  final int? quantity;
  final String? soldByType;
  final String? soldByName;
  final int? availableReturnQty;
  final String? deliveryType;
  final String? price;
  final String? tax;
  final String? vipOfferDiscount;
  final String? shareholderDiscount;
  final Product? product;
  final bool? reviewIsAvailable;
  final String? msgCantReview;
  final Reviews? review;
  final String? shippedBy;
  final String? pickerNotes;

  PharmacyOrderItemDomainModel({
    this.id,
    this.variation,
    this.quantity,
    this.soldByType,
    this.soldByName,
    this.availableReturnQty,
    this.deliveryType,
    this.price,
    this.tax,
    this.vipOfferDiscount,
    this.shareholderDiscount,
    this.product,
    this.reviewIsAvailable,
    this.msgCantReview,
    this.review,
    this.shippedBy,
    this.pickerNotes,
  });
}
