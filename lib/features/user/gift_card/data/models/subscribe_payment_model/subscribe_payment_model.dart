import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';

import 'package:flutter_tdd/features/user/gift_card/domain/models/subscribe_payment_domain_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'subscribe_payment_model.freezed.dart';

part 'subscribe_payment_model.g.dart';

@freezed
class SubscribePaymentModel extends BaseApiModel<SubscribePaymentDomainModel> with _$SubscribePaymentModel {
  const SubscribePaymentModel._();

  @JsonSerializable(explicitToJson: true)
  factory SubscribePaymentModel({
    // int? id,
    // String? title,
    // String? code,
    // String? price,
    // String? value,
    // @JsonKey(name: "validity_days") int? validateDays,
    // @JsonKey(name: "expired_at") String? expiredAt,
    // @JsonKey(name: "expired_in_days") int? expiredInDays,
    // @JsonKey(name: "is_expired") bool? isExpired,
    @JsonKey(name: "transaction_url") String? transactionUrl,
  }) = _SubscribePaymentModel;

  factory SubscribePaymentModel.fromJson(Map<String, dynamic> json) => _$SubscribePaymentModelFromJson(json);

  @override
  SubscribePaymentDomainModel toDomainModel() {
   return SubscribePaymentDomainModel(
      // id: id,
      // title: title,
      // code: code,
      // price: price,
      // value: value,
      // validateDays: validateDays,
      // expiredAt: expiredAt,
      // expiredInDays: expiredInDays,
      // isExpired: isExpired,
     transactionUrl: transactionUrl
    );
  }
}
