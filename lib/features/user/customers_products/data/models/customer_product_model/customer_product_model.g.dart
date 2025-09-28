// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CustomerProductModel _$$_CustomerProductModelFromJson(
        Map<String, dynamic> json) =>
    _$_CustomerProductModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      unit: json['unit'] as String,
      description: json['description'] as String,
      unitPrice: json['unit_price'] as String,
      condition: json['conditon'] as String,
      location: json['location'] as String,
      photosValue: json['photos_value'] as String,
      photos:
          (json['photos'] as List<dynamic>).map((e) => e as String).toList(),
      thumbnailImg: json['thumbnail_img'] as String,
      thumbnailImgValue: json['thumbnail_img_value'] as String,
      pdf: json['pdf'] as String,
      pdfValue: json['pdf_value'] as String,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      videoProvider: json['video_provider'] as String,
      videoLink: json['video_link'] as String,
      metaTitle: json['meta_title'] as String,
      metaDescription: json['meta_description'] as String,
      metaImg: json['meta_img'] as String,
      metaImgValue: json['meta_img_value'] as String,
      userData: json['user'] == null
          ? null
          : UserModel.fromJson(json['user'] as Map<String, dynamic>),
      slug: json['slug'] as String?,
      availableStatus: json['available_status'] as bool?,
      adminStatus: json['admin_status'] as String?,
      category: json['category'] == null
          ? null
          : CategoryModel.fromJson(json['category'] as Map<String, dynamic>),
      brand: json['brand'] == null
          ? null
          : BrandModel.fromJson(json['brand'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CustomerProductModelToJson(
        _$_CustomerProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'unit': instance.unit,
      'description': instance.description,
      'unit_price': instance.unitPrice,
      'conditon': instance.condition,
      'location': instance.location,
      'photos_value': instance.photosValue,
      'photos': instance.photos,
      'thumbnail_img': instance.thumbnailImg,
      'thumbnail_img_value': instance.thumbnailImgValue,
      'pdf': instance.pdf,
      'pdf_value': instance.pdfValue,
      'tags': instance.tags,
      'video_provider': instance.videoProvider,
      'video_link': instance.videoLink,
      'meta_title': instance.metaTitle,
      'meta_description': instance.metaDescription,
      'meta_img': instance.metaImg,
      'meta_img_value': instance.metaImgValue,
      'user': instance.userData?.toJson(),
      'slug': instance.slug,
      'available_status': instance.availableStatus,
      'admin_status': instance.adminStatus,
      'category': instance.category?.toJson(),
      'brand': instance.brand?.toJson(),
    };
