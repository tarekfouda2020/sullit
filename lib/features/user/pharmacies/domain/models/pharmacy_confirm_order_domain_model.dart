import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/models/order_details.dart';

class PharmacyConfirmOrderDomainModel extends BaseDomainModel {
  final int? id;
  final String? transactionUrl;
  final OrderDetails? orderDetails;

  PharmacyConfirmOrderDomainModel({
    this.id,
    this.transactionUrl,
    this.orderDetails,
  });
}
