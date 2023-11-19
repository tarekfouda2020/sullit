import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/wallet/domain/models/wallet_types.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_types_model.freezed.dart';
part 'wallet_types_model.g.dart';

@freezed
@immutable
class WalletTypesModel extends BaseApiModel<WalletTypes>
    with _$WalletTypesModel {
  const WalletTypesModel._();

  @JsonSerializable(explicitToJson: true)
  const factory WalletTypesModel({
    @JsonKey(name: "payment_type") required String paymentType,
    @JsonKey(name: "payment_type_key") required String paymentTypeKey,
    @JsonKey(name: "image") required String image,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "title") required String title,
    @JsonKey(name: "offline_payment_id") required int offlinePaymentId,
    @JsonKey(name: "details") required String details,
  }) = _WalletTypesModel;

  factory WalletTypesModel.fromJson(Map<String, dynamic> json) =>
      _$WalletTypesModelFromJson(json);

  @override
  WalletTypes toDomainModel() {
    return WalletTypes(
      name: name,
      title: title,
      image: image,
      details: details,
      offlinePaymentId: offlinePaymentId,
      paymentType: paymentType,
      paymentTypeKey: paymentTypeKey,
    );
  }
}
