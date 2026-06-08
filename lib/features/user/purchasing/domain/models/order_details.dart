import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';
import 'package:flutter_tdd/features/user/products/domain/models/reviews.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/models/order_review.dart';

class OrderDetails extends BaseDomainModel {
  int id;
  Product? product;
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
  });

  double get getPrice => double.parse(product?.variant?.mainPrice ?? "0.0");
}
