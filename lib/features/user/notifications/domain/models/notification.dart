import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class NotificationDomainModel extends BaseDomainModel {
  String id;
  int orderId;
  String text;
  String createdAt;

  NotificationDomainModel({
    required this.id,
    required this.orderId,
    required this.text,
    required this.createdAt,
  });


}
