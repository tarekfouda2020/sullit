import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class PharmacyBranchDomainModel extends BaseDomainModel {
  final int id;
  final String name;
  final String phone;
  final PharmacyBranchLocationDomainModel state;
  final PharmacyBranchLocationDomainModel city;
  final String address;
  final String mapDescription;
  final String latitude;
  final String longitude;
  final bool isDefault;
  final double? distanceKm;
  bool isSelected;

   PharmacyBranchDomainModel({
    required this.id,
    required this.name,
    required this.phone,
    required this.state,
    required this.city,
    required this.address,
    required this.mapDescription,
    required this.latitude,
    required this.longitude,
    required this.isDefault,
    this.distanceKm,
     this.isSelected = false,
  });
}

class PharmacyBranchLocationDomainModel extends BaseDomainModel {
  final int id;
  final String name;

  const PharmacyBranchLocationDomainModel({
    required this.id,
    required this.name,
  });
}