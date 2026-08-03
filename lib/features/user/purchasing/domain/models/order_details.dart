import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/reviews.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/models/order_review.dart';

class OrderProductDomainModel extends BaseDomainModel {
  final int id;
  final String name;
  final String type;
  final String typeLabel;
  final String unit;
  final String barcode;
  final double rating;
  final String thumbnailImage;
  final String currencySymbol;

  OrderProductDomainModel({
    required this.id,
    required this.name,
    required this.type,
    required this.typeLabel,
    required this.unit,
    required this.barcode,
    required this.rating,
    required this.thumbnailImage,
    required this.currencySymbol,
  });
}



class OrderDetails extends BaseDomainModel {
  int id;
  OrderProductDomainModel? product;
  String variation;
  int quantity;
  int availableReturnQty;
  String deliveryType;
  String price;
  String? tax;
  bool isAvailableReview;
  String msgCantReview;
  String soldBy;
  String soldByType;
  Reviews? review;
  OrderReview? orderReview;
  String? shippedBy;
  bool? isSelected;
  GenericBloc<int>? qtyCubit;
  String? pickerNotes;
  String? instructions;
  String? insuranceCoveragePercentage;

  OrderDetails({
    required this.id,
    this.product,
    required this.variation,
    required this.quantity,
    required this.availableReturnQty,
    required this.deliveryType,
    required this.price,
    required this.soldBy,
    required this.soldByType,
    this.tax,
    required this.isAvailableReview,
    required this.msgCantReview,
    this.review,
    this.orderReview,
    this.shippedBy,
    this.isSelected = false,
    this.qtyCubit,
    this.pickerNotes,
    this.instructions,
    this.insuranceCoveragePercentage,
  });

  double get getPrice => double.parse(price);
}
