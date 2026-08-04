import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class ImageDomainModel extends BaseDomainModel {
  String name;
  String url;
  ImageDomainModel({required this.name, required this.url});
}
