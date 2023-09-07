import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/customers_products/domain/models/packages.dart';
import 'package:flutter_tdd/features/user/dashboard/domain/models/shipping_address.dart';

class Dashboards extends BaseDomainModel {
  final int cartCount;
  final int wishlistCount;
  final int ordersCount;
  ShippingAddress? defaultAddress;
  Packages? customerPackage;

  Dashboards({
    required this.cartCount,
    required this.wishlistCount,
    required this.ordersCount,
    this.defaultAddress,
    this.customerPackage,
  });
}
