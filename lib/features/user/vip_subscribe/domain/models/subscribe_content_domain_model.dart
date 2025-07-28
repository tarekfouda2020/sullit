import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class SubscribeContentDomainModel extends BaseDomainModel {
  final String title;
  final String description;
  final String icon;

  SubscribeContentDomainModel({
    required this.title,
    required this.description,
    required this.icon,
  });
}
