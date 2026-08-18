import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/sale/domain/models/coupon.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'coupon_model.freezed.dart';

part 'coupon_model.g.dart';

@freezed
@immutable
class CouponModel extends BaseApiModel<Coupon> with _$CouponModel {
  const CouponModel._();

  @JsonSerializable(explicitToJson: true)
  const factory CouponModel({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "code") required String code,
    @JsonKey(name: "icon") required String icon,
    @JsonKey(name: "coupon_usages_count") required int couponUsagesCount,
  }) = _CouponModel;

  factory CouponModel.fromJson(Map<String, dynamic> json) =>
      _$CouponModelFromJson(json);

  @override
  Coupon toDomainModel() {
    return Coupon(
      id: id,
      icon: icon,
      code: code,
      couponUsagesCount: couponUsagesCount,
    );
  }
}
