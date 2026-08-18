import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/models/cus_product_cat.dart';

import 'cus_product_brand.dart';

class CusProduct extends BaseDomainModel {
  int id;
  String name;
  String unit;
  String description;
  String slug;
  String unitPrice;
  CusProductsCat? category;
  CusProductBrand? brand;
  bool availableStatus;
  String adminStatus;
  String conditon;
  String location;
  String photosValue;
  List<String> photos;
  String thumbnailImg;
  String thumbnailImgValue;
  String pdf;
  String pdfValue;
  List<String> tags;
  String videoProvider;
  String videoLink;
  String metaTitle;
  String metaDescription;
  String metaImg;
  String metaImgValue;

  CusProduct(
      {required this.id,
      required this.name,
      required this.unit,
      required this.description,
      required this.slug,
      this.category,
      this.brand,
      required this.unitPrice,
      required this.availableStatus,
      required this.adminStatus,
      required this.conditon,
      required this.location,
      required this.photosValue,
      required this.photos,
      required this.thumbnailImg,
      required this.thumbnailImgValue,
      required this.pdf,
      required this.pdfValue,
      required this.tags,
      required this.videoProvider,
      required this.videoLink,
      required this.metaTitle,
      required this.metaDescription,
      required this.metaImg,
      required this.metaImgValue});
}
