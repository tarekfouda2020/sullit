import 'package:flutter_tdd/features/user/cart/data/models/order_summary_model/order_summary_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/order_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';

part 'order_response_model.freezed.dart';
part 'order_response_model.g.dart';

@freezed
@immutable
class OrderResponseModel extends BaseApiModel<OrderResponse> with _$OrderResponseModel{
  const OrderResponseModel._();
  @JsonSerializable(explicitToJson: true)
  const factory OrderResponseModel({
    required String key ,
    required String msg ,
    required  OrderSummaryModel data
  }) = _OrderResponseModel;


  factory OrderResponseModel.fromJson(Map<String, dynamic> json) =>
      _$OrderResponseModelFromJson(json);

  @override
  OrderResponse toDomainModel() {
    return OrderResponse(key: key, msg: msg, data: data.toDomainModel());
  }
}
