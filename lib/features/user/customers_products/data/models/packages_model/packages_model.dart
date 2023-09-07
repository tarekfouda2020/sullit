import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/customers_products/domain/models/packages.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'packages_model.freezed.dart';

part 'packages_model.g.dart';

@freezed
@immutable
class PackagesModel extends BaseApiModel<Packages> with _$PackagesModel {
  const PackagesModel._();

  @JsonSerializable(explicitToJson: true)
  const factory PackagesModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'logo') required String logo,
    @JsonKey(name: 'is_free') required bool isFree,
    @JsonKey(name: 'amount') required String amount,
    @JsonKey(name: 'product_upload') required int productUpload,
  }) = _PackagesModel;

  factory PackagesModel.fromJson(Map<String, dynamic> json) =>
      _$PackagesModelFromJson(json);

  @override
  Packages toDomainModel() {
    return Packages(
      id: id,
      name: name,
      logo: logo,
      amount: amount,
      isFree: isFree,
      productUpload: productUpload,
    );
  }
}
