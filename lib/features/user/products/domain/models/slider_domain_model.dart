import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class SliderDomainModel extends BaseDomainModel {
  final String photo;
  final String linkType;
  final String? value;

  SliderDomainModel({
    required this.photo,
    required this.linkType,
    required this.value,
  });

  LinkTypeEnum get getLinkType {
    switch (linkType) {
      case "product":
        return LinkTypeEnum.product;
      case "external_link":
        return LinkTypeEnum.externalLink;
      case "category":
        return LinkTypeEnum.category;
      default:
        return LinkTypeEnum.externalLink;
    }
  }
}

enum LinkTypeEnum {
  product,

  externalLink,

  category;

  bool get isCategory => this == LinkTypeEnum.category;

  bool get isExternal => this == LinkTypeEnum.externalLink;

  bool get isProduct => this == LinkTypeEnum.product;

}
