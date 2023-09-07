import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class ShippingAddress extends BaseDomainModel {
  int id;
  int userId;
  String address;
  String postalCode;
  String phone;
  bool setDefault;
  String lat;
  String lang;
  bool isActive;

  ShippingAddress({
    required this.id,
    required this.userId,
    required this.address,
    required this.postalCode,
    required this.phone,
    required this.setDefault,
    required this.lat,
    required this.lang,
    required this.isActive,
  });
}
