import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/models/payment_domain_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_method_model.freezed.dart';

part 'payment_method_model.g.dart';

@freezed
@immutable
class PaymentMethodModel extends BaseApiModel<PaymentMethodDomainModel>
    with _$PaymentMethodModel {
  const PaymentMethodModel._();

  @JsonSerializable(explicitToJson: true)
  const factory PaymentMethodModel(
      {@JsonKey(name: 'payment_type') required String paymentType,
      @JsonKey(name: 'payment_type_key') required String paymentTypeKey,
      required String image,
        required String name,
      required String title,
      @JsonKey(name: 'offline_payment_id') required int offlinePaymentId,
      required String details}) = _PaymentMethodModel;

  factory PaymentMethodModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodModelFromJson(json);

  @override
  PaymentMethodDomainModel toDomainModel() {
    return PaymentMethodDomainModel(
      paymentType: paymentType,
      paymentTypeKey: paymentTypeKey,
      image: image,
      title: title,
      offlinePaymentId: offlinePaymentId,
      details: details,
      name: name,
    );
  }
}
