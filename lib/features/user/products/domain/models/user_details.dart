import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class UserDetails extends BaseDomainModel {
  final int id;
  final String name;
  final String avatar;
  final String avatarOriginal;

  UserDetails({
    required this.id,
    required this.name,
    required this.avatar,
    required this.avatarOriginal,
  });
}
