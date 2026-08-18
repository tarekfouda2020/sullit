import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class ShopPickup extends BaseDomainModel {
  final int id;
  final String address;
  final String postalCode;
  final String phone;
  final double lat;
  final double lang;

  ShopPickup({
    required this.id,
    required this.address,
    required this.postalCode,
    required this.phone,
    required this.lat,
    required this.lang,
  });
}
