import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/dashboard/domain/models/shipping_address.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shipping_address_model.freezed.dart';

part 'shipping_address_model.g.dart';

@freezed
@immutable
class ShippingAddressModel extends BaseApiModel<ShippingAddress>
    with _$ShippingAddressModel {
  const ShippingAddressModel._();

  @JsonSerializable(explicitToJson: true)
  const factory ShippingAddressModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'user_id') required int userId,
    @JsonKey(name: 'address') required String address,
    @JsonKey(name: 'postal_code') required String postalCode,
    @JsonKey(name: 'phone') required String phone,
    @JsonKey(name: 'set_default') required bool setDefault,
    @JsonKey(name: 'lat') required String lat,
    @JsonKey(name: 'lang') required String lang,
    @JsonKey(name: 'is_active') required bool isActive,
  }) = _ShippingAddressModel;

  factory ShippingAddressModel.fromJson(Map<String, dynamic> json) =>
      _$ShippingAddressModelFromJson(json);

  @override
  ShippingAddress toDomainModel() {
    return ShippingAddress(
      id: id,
      address: address,
      isActive: isActive,
      phone: phone,
      userId: userId,
      lang: lang,
      lat: lat,
      postalCode: postalCode,
      setDefault: setDefault,
    );
  }
}
