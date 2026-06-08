import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/order_summary.dart';

class OrderResponse extends BaseDomainModel {
  String key;
  String msg;
  OrderSummary data;
  OrderResponse({required this.key, required this.msg, required this.data});
}
