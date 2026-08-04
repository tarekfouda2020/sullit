import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class ContactUsSocialModel extends BaseDomainModel {
  final String image;
  final String url;

  ContactUsSocialModel({required this.image, required this.url});
}
