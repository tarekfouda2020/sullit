import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/slider_domain_model.dart';

import '../../data/enum/banner_link_type_enum.dart';

class BannerDomainModel extends BaseDomainModel {
  final String photo;
  final String? url;
  final String linkType;
  final String? value;

  BannerDomainModel( {required this.photo, this.url,required this.linkType, required this.value,});

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
