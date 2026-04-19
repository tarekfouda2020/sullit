import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class Pharmacy extends BaseDomainModel {
  final int id;
  final String name;
  final String logo;
  final double rating;
  final List<Insurance> supportedInsurance;

  Pharmacy({
    required this.id,
    required this.name,
    required this.logo,
    required this.rating,
    required this.supportedInsurance,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'logo': logo,
        'rating': rating,
        'supportedInsurance': supportedInsurance.map((x) => x.toJson()).toList(),
      };
}

class Insurance {
  final String name;
  final String logo;
 bool isSelected;
  Insurance({required this.name, required this.logo, this.isSelected = false});

  Map<String, dynamic> toJson() => {
        'name': name,
        'logo': logo,
      };
}
