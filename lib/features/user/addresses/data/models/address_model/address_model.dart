import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/core/models/api_models/city_model/city_model.dart';
import 'package:flutter_tdd/core/models/api_models/country_model/country_model.dart';
import 'package:flutter_tdd/core/models/api_models/state_model/state_model.dart';
import 'package:flutter_tdd/features/user/addresses/domain/models/address.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_model.freezed.dart';

part 'address_model.g.dart';

@freezed
@immutable
class AddressModel extends BaseApiModel<Address> with _$AddressModel {
  const AddressModel._();

  @JsonSerializable(explicitToJson: true)
  const factory AddressModel({
    required int id,
    @JsonKey(name: "user_id") required int userId,
    required String address,
    CountryModel? country,
    StateModel? state,
    CityModel? city,
    @JsonKey(name: "postal_code") required String postalCode,
    required String phone,
  @JsonKey(name: "full_phone") required String fullPhone,
    @JsonKey(name: "country_code") required String countryCode,
    @JsonKey(name: "set_default") required bool setDefault,
    required String lat,
    required String lang,
    @JsonKey(name: "is_active") required bool isActive,
  }) = _AddressModel;

  factory AddressModel.fromJson(Map<String, dynamic> json) =>
      _$AddressModelFromJson(json);

  @override
  Address toDomainModel() {
    return Address(
      id: id,
      userId: userId,
      address: address,
      country: country?.toDomainModel(),
      state: state?.toDomainModel(),
      city: city?.toDomainModel(),
      postalCode: postalCode,
      phone: phone,
      fullPhone: fullPhone,
      countryCode:countryCode,
      setDefault: setDefault,
      lat: lat,
      lang: lang,
      isActive: isActive,
    );
  }
}
