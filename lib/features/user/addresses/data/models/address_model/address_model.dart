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
class AddressModel extends BaseApiModel<AddressDomainModel> with _$AddressModel {
  const AddressModel._();

  @JsonSerializable(explicitToJson: true)
  const factory AddressModel({
    required int id,
    @JsonKey(name: "user_id") required int userId,
    required String address,
    CountryModel? country,
    StateModel? state,
    CityModel? city,
    required String phone,
  @JsonKey(name: "full_phone") required String fullPhone,
    @JsonKey(name: "country_code") required String countryCode,
    @JsonKey(name: "set_default") required bool setDefault,
    required String lat,
    required String lang,
    @JsonKey(name: "is_active") required bool isActive,
    @JsonKey(name: "address_type") required String addressType,
    @JsonKey(name: "address_type_label") required String addressTypeLabel,
    @JsonKey(name: "street_name") required String streetName,
    @JsonKey(name: "building_name") required String buildingName,
    @JsonKey(name: "flat_number") required String flatNumber,
    @JsonKey(name: "state_name") required String stateName,
    @JsonKey(name: "city_name") required String cityName,
    @JsonKey(name: "selected",defaultValue: false)  bool? selected,
  }) = _AddressModel;

  factory AddressModel.fromJson(Map<String, dynamic> json) =>
      _$AddressModelFromJson(json);

  @override
  AddressDomainModel toDomainModel() {
    return AddressDomainModel(
      id: id,
      userId: userId,
      address: address,
      country: country?.toDomainModel(),
      state: state?.toDomainModel(),
      city: city?.toDomainModel(),
      // postalCode: postalCode,
      phone: phone,
      fullPhone: fullPhone,
      countryCode:countryCode,
      setDefault: setDefault,
      lat: lat,
      lang: lang,
      isActive: isActive,
      addressType: addressType,
      addressTypeLabel: addressTypeLabel,
      streetName: streetName,
      buildingName: buildingName,
      flatNumber: flatNumber,
      selected: selected ?? false,
      cityName: cityName,
      stateName: stateName
    );
  }
}
