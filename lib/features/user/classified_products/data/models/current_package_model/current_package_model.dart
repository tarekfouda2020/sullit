import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/models/current_package.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'current_package_model.freezed.dart';
part 'current_package_model.g.dart';

@freezed
@immutable
class CurrentPackageModel extends BaseApiModel<CurrentPackage>
    with _$CurrentPackageModel {
  const CurrentPackageModel._();

  @JsonSerializable(explicitToJson: true)
  const factory CurrentPackageModel({
    required int id,
    required String name,
    required String logo,
    @JsonKey(name: 'is_free') required bool isFree,
    required String amount,
    @JsonKey(name: 'product_upload') required int productUpload,
  }) = _CurrentPackageModel;

  factory CurrentPackageModel.fromJson(Map<String, dynamic> json) =>
      _$CurrentPackageModelFromJson(json);

  @override
  CurrentPackage toDomainModel() {
    return CurrentPackage(
      id: id,
      name: name,
      logo: logo,
      amount: amount,
      isFree: isFree,
      productUpload: productUpload,
    );
  }
}
