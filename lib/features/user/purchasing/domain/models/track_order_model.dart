import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/models/order_status_model.dart';

class TrackOrderModel extends BaseDomainModel {
  final int id;
  final String code;
  final bool isCompleted;
  final String orderType;
  final List<OrderStatusModel> tracking;

  TrackOrderModel({
    required this.id,
    required this.code,
    required this.isCompleted,
    required this.orderType,
    required this.tracking,
  });
}
