import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/gift_card/domain/models/pay_method_domain_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pay_method_model.freezed.dart';

part 'pay_method_model.g.dart';

@freezed
class PayMethodModel extends BaseApiModel<PayMethodDomainModel> with _$PayMethodModel {
  const PayMethodModel._();
  @JsonSerializable(explicitToJson: true)
  factory PayMethodModel({
    @JsonKey(name: "payment_type") required String paymentType,
    @JsonKey(name: "payment_type_key") required String paymentTypeKey,
    @JsonKey(name: "offline_payment_id") required int offlinePaymentId,
    required String image,
    required String details,
    required String name,
    required String title,
  }) = _PayMethodModel;

  factory PayMethodModel.fromJson(Map<String, dynamic> json) => _$PayMethodModelFromJson(json);

  @override
  PayMethodDomainModel toDomainModel() {
    return PayMethodDomainModel(
      paymentType: paymentType,
      paymentTypeKey: paymentTypeKey,
      offlinePaymentId: offlinePaymentId,
      image: image,
      details: details,
      name: name,
      title: title,
    );
  }
}
