import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/cart/data/models/shipping_summary_model/shipping_summary_model.dart';
import 'package:flutter_tdd/features/user/pharmacies/data/models/pharmacy_order_details_model/pharmacy_order_details_model.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/models/pharmacy_checkout_domai_model.dart';
import 'package:flutter_tdd/features/user/purchasing/data/models/order_details_model/order_details_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pharmacy_checkout_summary_model.freezed.dart';
part 'pharmacy_checkout_summary_model.g.dart';

@freezed
@immutable
class PharmacyCheckoutSummaryModel extends BaseApiModel<PharmacyCheckoutDomaiModel>
    with _$PharmacyCheckoutSummaryModel {
  const PharmacyCheckoutSummaryModel._();
  @JsonSerializable(explicitToJson: true)
  const factory PharmacyCheckoutSummaryModel({
    @JsonKey(name: "order_summary")  required ShippingSummaryModel orderSummary,

    @JsonKey(name: "order")  required PharmacyOrderDetailsModel orderDetails,

  }) = _PharmacyCheckoutSummaryModel;

  factory PharmacyCheckoutSummaryModel.fromJson(Map<String, dynamic> json) =>
      _$PharmacyCheckoutSummaryModelFromJson(json);

  @override
  PharmacyCheckoutDomaiModel toDomainModel() {
    return PharmacyCheckoutDomaiModel(
    orderDetails: orderDetails.toDomainModel(),
      summary: orderSummary.toDomainModel()
    );
  }
}
