import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/shipping_summary.dart';
import 'package:flutter_tdd/features/user/pharmacies/data/models/pharmacy_order_details_model/pharmacy_order_details_model.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/models/pharmacy_order_details_domain_model.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/models/order_details.dart';

class PharmacyCheckoutDomaiModel extends BaseDomainModel {
  final ShippingSummary summary;
  final PharmacyOrderDetailsDomainModel orderDetails;

  PharmacyCheckoutDomaiModel({
    required this.summary,
    required this.orderDetails,
  });
}
