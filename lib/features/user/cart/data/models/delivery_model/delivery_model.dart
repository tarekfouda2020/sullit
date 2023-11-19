import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/delivery.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_model.freezed.dart';
part 'delivery_model.g.dart';

@freezed
@immutable
class DeliveryModel extends BaseApiModel<Delivery> with _$DeliveryModel {
  const DeliveryModel._();

  @JsonSerializable(explicitToJson: true)
  const factory DeliveryModel({
    @JsonKey(name: "transit_in") required String transitIn,
    @JsonKey(name: "shipping_cost") required String shippingCost,
  }) = _DeliveryModel;

  factory DeliveryModel.fromJson(Map<String, dynamic> json) =>
      _$DeliveryModelFromJson(json);

  @override
  Delivery toDomainModel() {
    return Delivery(
      shippingCost: shippingCost,
      transitIn: transitIn,
    );
  }
}
