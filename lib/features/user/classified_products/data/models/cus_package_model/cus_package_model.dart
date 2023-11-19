import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/models/cus_package.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cus_package_model.freezed.dart';
part 'cus_package_model.g.dart';

@freezed
@immutable
class CusPackageModel extends BaseApiModel<CusPackage> with _$CusPackageModel {
  const CusPackageModel._();

  @JsonSerializable(explicitToJson: true)
  const factory CusPackageModel({
    required int id,
    required String name,
    required String logo,
    @JsonKey(name: 'is_free') required bool isFree,
    required String amount,
    @JsonKey(name: 'product_upload') required int productUpload,
  }) = _CusPackageModel;

  factory CusPackageModel.fromJson(Map<String, dynamic> json) =>
      _$CusPackageModelFromJson(json);

  @override
  CusPackage toDomainModel() {
    return CusPackage(
      id: id,
      name: name,
      logo: logo,
      isFree: isFree,
      amount: amount,
      productUpload: productUpload,
    );
  }
}
