// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cus_product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CusProductModel _$$_CusProductModelFromJson(Map<String, dynamic> json) =>
    _$_CusProductModel(
      id: json['id'] as int,
      name: json['name'] as String,
      unit: json['unit'] as String,
      description: json['description'] as String,
      slug: json['slug'] as String,
      unitPrice: json['unit_price'] as String,
      availableStatus: json['available_status'] as bool,
      adminStatus: json['admin_status'] as String,
      conditon: json['conditon'] as String,
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
    );

Map<String, dynamic> _$$_CusProductModelToJson(_$_CusProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'unit': instance.unit,
      'description': instance.description,
      'slug': instance.slug,
      'unit_price': instance.unitPrice,
      'available_status': instance.availableStatus,
      'admin_status': instance.adminStatus,
      'conditon': instance.conditon,
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
    };
