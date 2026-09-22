import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class SocialMediaLogin extends BaseDomainModel {
  final String name;
  final String provider;
  final String logo;

  SocialMediaLogin({
    required this.name,
    required this.provider,
    required this.logo,
  });
}
