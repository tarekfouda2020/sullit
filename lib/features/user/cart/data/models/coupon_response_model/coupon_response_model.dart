import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/cart/data/models/shipping_model/shipping_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/coupon_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'coupon_response_model.freezed.dart';
part 'coupon_response_model.g.dart';

@freezed
@immutable
class CouponResponseModel extends BaseApiModel<CouponResponse>
    with _$CouponResponseModel {
  const CouponResponseModel._();
  @JsonSerializable(explicitToJson: true)
  const factory CouponResponseModel({
    required String msg,
    required ShippingModel data,
  }) = _CouponResponseModel;

  factory CouponResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CouponResponseModelFromJson(json);

  @override
  CouponResponse toDomainModel() {
    return CouponResponse(msg: msg, shipping: data.toDomainModel());
  }
}
