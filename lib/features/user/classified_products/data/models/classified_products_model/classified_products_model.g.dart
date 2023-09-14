// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'classified_products_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ClassifiedProductsModel _$$_ClassifiedProductsModelFromJson(
        Map<String, dynamic> json) =>
    _$_ClassifiedProductsModel(
      remainingUploads: json['remaining_uploads'] as int,
      currentPackage: CurrentPackageModel.fromJson(
          json['current_package'] as Map<String, dynamic>),
      sectionsProducts: SectionProductsModel.fromJson(
          json['sections_products'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ClassifiedProductsModelToJson(
        _$_ClassifiedProductsModel instance) =>
    <String, dynamic>{
      'remaining_uploads': instance.remainingUploads,
      'current_package': instance.currentPackage.toJson(),
      'sections_products': instance.sectionsProducts.toJson(),
    };
