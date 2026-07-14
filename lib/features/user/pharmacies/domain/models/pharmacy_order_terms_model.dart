import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class PharmacyOrderTermsModel extends BaseDomainModel {
  final int? id;
  final String? title;
  final String? content;

  PharmacyOrderTermsModel({
    this.id,
    this.title,
    this.content,
  });
}
