
import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class OrderStatusModel extends BaseDomainModel{

final String status;
final String createdAt;

  OrderStatusModel({required this.status, required this.createdAt});


}