import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';

import '../../../domain/models/order_driver_domain_model.dart';

part 'order_driver_model.freezed.dart';

part 'order_driver_model.g.dart';

@freezed
class OrderDriverModel extends BaseApiModel<OrderDriverDomainModel>
    with _$OrderDriverModel {
  const OrderDriverModel._();

  @JsonSerializable(explicitToJson: true)
  factory OrderDriverModel(
      {required int id,
      required String name,
      required String email,
      required String avatar,
      required String phone,
      @JsonKey(name: "work_type") required String workType,
      @JsonKey(name: "avg_rate") required int avgRate}) = _OrderDriverModel;

  factory OrderDriverModel.fromJson(Map<String, dynamic> json) =>
      _$OrderDriverModelFromJson(json);

  @override
  OrderDriverDomainModel toDomainModel() {
    return OrderDriverDomainModel(
      id: id,
      name: name,
      email: email,
      image: avatar,
      phone: phone,
      workType: workType,
      avgRate: avgRate,
    );
  }
}
