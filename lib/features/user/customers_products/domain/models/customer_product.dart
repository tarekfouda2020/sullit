import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/core/models/domain_models/brand_domain_model.dart';
import 'package:flutter_tdd/features/general/auth/domain/models/user_domain_model.dart';
import 'package:flutter_tdd/features/user/category/domain/models/category.dart';

class CustomerProduct extends BaseDomainModel {
  int id;
  String name;
  String unit;
  String description;
  String unitPrice;
  String condition;
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
  UserDomainModel? userData;

  String? slug;
  bool? availableStatus;
  String? adminStatus;
  Category? category;
  BrandDomainModel? brand;

  CustomerProduct({
    required this.id,
    required this.name,
    required this.unit,
    required this.description,
    required this.unitPrice,
    required this.condition,
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
    required this.metaImgValue,
    this.userData,
    this.category,
    this.brand,
    this.adminStatus,
    this.availableStatus,
    this.slug,
  });
}
