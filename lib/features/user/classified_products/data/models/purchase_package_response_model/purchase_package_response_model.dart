import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/classified_products/data/models/transaction_model/transaction_model.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/models/purchase_package_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'purchase_package_response_model.freezed.dart';
part 'purchase_package_response_model.g.dart';

@freezed
@immutable
class PurchasePackageResponseModel extends BaseApiModel<PurchasePackageResponse>
    with _$PurchasePackageResponseModel {
  const PurchasePackageResponseModel._();
  @JsonSerializable(explicitToJson: true)
  const factory PurchasePackageResponseModel(
      {required String key,
      required String msg,
      TransactionModel? data}) = _PurchasePackageResponseModel;

  factory PurchasePackageResponseModel.fromJson(Map<String, dynamic> json) =>
      _$PurchasePackageResponseModelFromJson(json);

  @override
  PurchasePackageResponse toDomainModel() {
    return PurchasePackageResponse(
        key: key, msg: msg, data: data?.toDomainModel());
  }
}
