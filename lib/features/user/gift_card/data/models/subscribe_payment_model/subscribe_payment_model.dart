import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';

import 'package:flutter_tdd/features/user/gift_card/domain/models/subscribe_payment_domain_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'subscribe_payment_model.freezed.dart';

part 'subscribe_payment_model.g.dart';

@freezed
class SubscribePaymentModel extends BaseApiModel<SubscribePaymentDomainModel>
    with _$SubscribePaymentModel {
  const SubscribePaymentModel._();

  @JsonSerializable(explicitToJson: true)
  factory SubscribePaymentModel({
    @JsonKey(name: "transaction_url") String? transactionUrl,
  }) = _SubscribePaymentModel;

  factory SubscribePaymentModel.fromJson(Map<String, dynamic> json) =>
      _$SubscribePaymentModelFromJson(json);

  @override
  SubscribePaymentDomainModel toDomainModel() {
    return SubscribePaymentDomainModel(transactionUrl: transactionUrl);
  }
}
