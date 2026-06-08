import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/payment_option.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_option_model.freezed.dart';
part 'payment_option_model.g.dart';

@freezed
@immutable
class PaymentOptionModel extends BaseApiModel<PaymentOption>
    with _$PaymentOptionModel {
  const PaymentOptionModel._();

  @JsonSerializable(explicitToJson: true)
  const factory PaymentOptionModel(
      {@JsonKey(name: "payment_type") required String paymentType,
      @JsonKey(name: "payment_type_key") required String paymentTypeKey,
      required String image,
      required String title,
      String? name,
      @JsonKey(name: "offline_payment_id") required int offlinePaymentId,
      required String details}) = _PaymentOptionModel;

  factory PaymentOptionModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentOptionModelFromJson(json);

  @override
  PaymentOption toDomainModel() {
    return PaymentOption(
      paymentType: paymentType,
      paymentTypeKey: paymentTypeKey,
      image: image,
      title: title,
      details: details,
      name: name,
      offlinePaymentId: offlinePaymentId,
    );
  }
}
