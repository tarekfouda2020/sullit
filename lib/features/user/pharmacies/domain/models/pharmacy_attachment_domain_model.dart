import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class PharmacyAttachmentDomainModel extends BaseDomainModel {
  final int? id;
  final String? url;
  final String? type;

  PharmacyAttachmentDomainModel({
    this.id,
    this.url,
    this.type,
  });
}
