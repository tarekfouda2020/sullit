import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/classified_products/data/models/current_package_model/current_package_model.dart';
import 'package:flutter_tdd/features/user/classified_products/data/models/section_products_model/section_products_model.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/models/classified_product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'classified_products_model.freezed.dart';
part 'classified_products_model.g.dart';

@freezed
@immutable
class ClassifiedProductsModel
    extends BaseApiModel<ClassifiedProductsDomainModel>
    with _$ClassifiedProductsModel {
  const ClassifiedProductsModel._();

  @JsonSerializable(explicitToJson: true)
  const factory ClassifiedProductsModel({
    @JsonKey(name: 'remaining_uploads') required int remainingUploads,
    @JsonKey(name: 'current_package') CurrentPackageModel? currentPackage,
    @JsonKey(name: 'section_products')
    required SectionProductsModel sectionsProducts,
  }) = _ClassifiedProductsModel;

  factory ClassifiedProductsModel.fromJson(Map<String, dynamic> json) =>
      _$ClassifiedProductsModelFromJson(json);

  @override
  ClassifiedProductsDomainModel toDomainModel() {
    return ClassifiedProductsDomainModel(
      remainingUploads: remainingUploads,
      currentPackage: currentPackage?.toDomainModel(),
      sectionsProducts: sectionsProducts.toDomainModel(),
    );
  }
}
