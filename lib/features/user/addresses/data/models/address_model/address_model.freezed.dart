// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddressModel _$AddressModelFromJson(Map<String, dynamic> json) {
  return _AddressModel.fromJson(json);
}

/// @nodoc
mixin _$AddressModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  int get userId => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  CountryModel? get country => throw _privateConstructorUsedError;
  StateModel? get state => throw _privateConstructorUsedError;
  CityModel? get city => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "full_phone")
  String get fullPhone => throw _privateConstructorUsedError;
  @JsonKey(name: "country_code")
  String get countryCode => throw _privateConstructorUsedError;
  @JsonKey(name: "set_default")
  bool get setDefault => throw _privateConstructorUsedError;
  String get lat => throw _privateConstructorUsedError;
  String get lang => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active")
  bool get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "address_type")
  String get addressType => throw _privateConstructorUsedError;
  @JsonKey(name: "address_type_label")
  String get addressTypeLabel => throw _privateConstructorUsedError;
  @JsonKey(name: "street_name")
  String get streetName => throw _privateConstructorUsedError;
  @JsonKey(name: "building_name")
  String get buildingName => throw _privateConstructorUsedError;
  @JsonKey(name: "flat_number")
  String get flatNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressModelCopyWith<AddressModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressModelCopyWith<$Res> {
  factory $AddressModelCopyWith(
          AddressModel value, $Res Function(AddressModel) then) =
      _$AddressModelCopyWithImpl<$Res, AddressModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "user_id") int userId,
      String address,
      CountryModel? country,
      StateModel? state,
      CityModel? city,
      String phone,
      @JsonKey(name: "full_phone") String fullPhone,
      @JsonKey(name: "country_code") String countryCode,
      @JsonKey(name: "set_default") bool setDefault,
      String lat,
      String lang,
      @JsonKey(name: "is_active") bool isActive,
      @JsonKey(name: "address_type") String addressType,
      @JsonKey(name: "address_type_label") String addressTypeLabel,
      @JsonKey(name: "street_name") String streetName,
      @JsonKey(name: "building_name") String buildingName,
      @JsonKey(name: "flat_number") String flatNumber});

  $CountryModelCopyWith<$Res>? get country;
  $StateModelCopyWith<$Res>? get state;
  $CityModelCopyWith<$Res>? get city;
}

/// @nodoc
class _$AddressModelCopyWithImpl<$Res, $Val extends AddressModel>
    implements $AddressModelCopyWith<$Res> {
  _$AddressModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? address = null,
    Object? country = freezed,
    Object? state = freezed,
    Object? city = freezed,
    Object? phone = null,
    Object? fullPhone = null,
    Object? countryCode = null,
    Object? setDefault = null,
    Object? lat = null,
    Object? lang = null,
    Object? isActive = null,
    Object? addressType = null,
    Object? addressTypeLabel = null,
    Object? streetName = null,
    Object? buildingName = null,
    Object? flatNumber = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as CountryModel?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as StateModel?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as CityModel?,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      fullPhone: null == fullPhone
          ? _value.fullPhone
          : fullPhone // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      setDefault: null == setDefault
          ? _value.setDefault
          : setDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
      lang: null == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      addressType: null == addressType
          ? _value.addressType
          : addressType // ignore: cast_nullable_to_non_nullable
              as String,
      addressTypeLabel: null == addressTypeLabel
          ? _value.addressTypeLabel
          : addressTypeLabel // ignore: cast_nullable_to_non_nullable
              as String,
      streetName: null == streetName
          ? _value.streetName
          : streetName // ignore: cast_nullable_to_non_nullable
              as String,
      buildingName: null == buildingName
          ? _value.buildingName
          : buildingName // ignore: cast_nullable_to_non_nullable
              as String,
      flatNumber: null == flatNumber
          ? _value.flatNumber
          : flatNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CountryModelCopyWith<$Res>? get country {
    if (_value.country == null) {
      return null;
    }

    return $CountryModelCopyWith<$Res>(_value.country!, (value) {
      return _then(_value.copyWith(country: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StateModelCopyWith<$Res>? get state {
    if (_value.state == null) {
      return null;
    }

    return $StateModelCopyWith<$Res>(_value.state!, (value) {
      return _then(_value.copyWith(state: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CityModelCopyWith<$Res>? get city {
    if (_value.city == null) {
      return null;
    }

    return $CityModelCopyWith<$Res>(_value.city!, (value) {
      return _then(_value.copyWith(city: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AddressModelCopyWith<$Res>
    implements $AddressModelCopyWith<$Res> {
  factory _$$_AddressModelCopyWith(
          _$_AddressModel value, $Res Function(_$_AddressModel) then) =
      __$$_AddressModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "user_id") int userId,
      String address,
      CountryModel? country,
      StateModel? state,
      CityModel? city,
      String phone,
      @JsonKey(name: "full_phone") String fullPhone,
      @JsonKey(name: "country_code") String countryCode,
      @JsonKey(name: "set_default") bool setDefault,
      String lat,
      String lang,
      @JsonKey(name: "is_active") bool isActive,
      @JsonKey(name: "address_type") String addressType,
      @JsonKey(name: "address_type_label") String addressTypeLabel,
      @JsonKey(name: "street_name") String streetName,
      @JsonKey(name: "building_name") String buildingName,
      @JsonKey(name: "flat_number") String flatNumber});

  @override
  $CountryModelCopyWith<$Res>? get country;
  @override
  $StateModelCopyWith<$Res>? get state;
  @override
  $CityModelCopyWith<$Res>? get city;
}

/// @nodoc
class __$$_AddressModelCopyWithImpl<$Res>
    extends _$AddressModelCopyWithImpl<$Res, _$_AddressModel>
    implements _$$_AddressModelCopyWith<$Res> {
  __$$_AddressModelCopyWithImpl(
      _$_AddressModel _value, $Res Function(_$_AddressModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? address = null,
    Object? country = freezed,
    Object? state = freezed,
    Object? city = freezed,
    Object? phone = null,
    Object? fullPhone = null,
    Object? countryCode = null,
    Object? setDefault = null,
    Object? lat = null,
    Object? lang = null,
    Object? isActive = null,
    Object? addressType = null,
    Object? addressTypeLabel = null,
    Object? streetName = null,
    Object? buildingName = null,
    Object? flatNumber = null,
  }) {
    return _then(_$_AddressModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as CountryModel?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as StateModel?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as CityModel?,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      fullPhone: null == fullPhone
          ? _value.fullPhone
          : fullPhone // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      setDefault: null == setDefault
          ? _value.setDefault
          : setDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
      lang: null == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      addressType: null == addressType
          ? _value.addressType
          : addressType // ignore: cast_nullable_to_non_nullable
              as String,
      addressTypeLabel: null == addressTypeLabel
          ? _value.addressTypeLabel
          : addressTypeLabel // ignore: cast_nullable_to_non_nullable
              as String,
      streetName: null == streetName
          ? _value.streetName
          : streetName // ignore: cast_nullable_to_non_nullable
              as String,
      buildingName: null == buildingName
          ? _value.buildingName
          : buildingName // ignore: cast_nullable_to_non_nullable
              as String,
      flatNumber: null == flatNumber
          ? _value.flatNumber
          : flatNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_AddressModel extends _AddressModel {
  const _$_AddressModel(
      {required this.id,
      @JsonKey(name: "user_id") required this.userId,
      required this.address,
      this.country,
      this.state,
      this.city,
      required this.phone,
      @JsonKey(name: "full_phone") required this.fullPhone,
      @JsonKey(name: "country_code") required this.countryCode,
      @JsonKey(name: "set_default") required this.setDefault,
      required this.lat,
      required this.lang,
      @JsonKey(name: "is_active") required this.isActive,
      @JsonKey(name: "address_type") required this.addressType,
      @JsonKey(name: "address_type_label") required this.addressTypeLabel,
      @JsonKey(name: "street_name") required this.streetName,
      @JsonKey(name: "building_name") required this.buildingName,
      @JsonKey(name: "flat_number") required this.flatNumber})
      : super._();

  factory _$_AddressModel.fromJson(Map<String, dynamic> json) =>
      _$$_AddressModelFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: "user_id")
  final int userId;
  @override
  final String address;
  @override
  final CountryModel? country;
  @override
  final StateModel? state;
  @override
  final CityModel? city;
  @override
  final String phone;
  @override
  @JsonKey(name: "full_phone")
  final String fullPhone;
  @override
  @JsonKey(name: "country_code")
  final String countryCode;
  @override
  @JsonKey(name: "set_default")
  final bool setDefault;
  @override
  final String lat;
  @override
  final String lang;
  @override
  @JsonKey(name: "is_active")
  final bool isActive;
  @override
  @JsonKey(name: "address_type")
  final String addressType;
  @override
  @JsonKey(name: "address_type_label")
  final String addressTypeLabel;
  @override
  @JsonKey(name: "street_name")
  final String streetName;
  @override
  @JsonKey(name: "building_name")
  final String buildingName;
  @override
  @JsonKey(name: "flat_number")
  final String flatNumber;

  @override
  String toString() {
    return 'AddressModel(id: $id, userId: $userId, address: $address, country: $country, state: $state, city: $city, phone: $phone, fullPhone: $fullPhone, countryCode: $countryCode, setDefault: $setDefault, lat: $lat, lang: $lang, isActive: $isActive, addressType: $addressType, addressTypeLabel: $addressTypeLabel, streetName: $streetName, buildingName: $buildingName, flatNumber: $flatNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddressModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.fullPhone, fullPhone) ||
                other.fullPhone == fullPhone) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.setDefault, setDefault) ||
                other.setDefault == setDefault) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lang, lang) || other.lang == lang) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.addressType, addressType) ||
                other.addressType == addressType) &&
            (identical(other.addressTypeLabel, addressTypeLabel) ||
                other.addressTypeLabel == addressTypeLabel) &&
            (identical(other.streetName, streetName) ||
                other.streetName == streetName) &&
            (identical(other.buildingName, buildingName) ||
                other.buildingName == buildingName) &&
            (identical(other.flatNumber, flatNumber) ||
                other.flatNumber == flatNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      address,
      country,
      state,
      city,
      phone,
      fullPhone,
      countryCode,
      setDefault,
      lat,
      lang,
      isActive,
      addressType,
      addressTypeLabel,
      streetName,
      buildingName,
      flatNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddressModelCopyWith<_$_AddressModel> get copyWith =>
      __$$_AddressModelCopyWithImpl<_$_AddressModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddressModelToJson(
      this,
    );
  }
}

abstract class _AddressModel extends AddressModel {
  const factory _AddressModel(
          {required final int id,
          @JsonKey(name: "user_id") required final int userId,
          required final String address,
          final CountryModel? country,
          final StateModel? state,
          final CityModel? city,
          required final String phone,
          @JsonKey(name: "full_phone") required final String fullPhone,
          @JsonKey(name: "country_code") required final String countryCode,
          @JsonKey(name: "set_default") required final bool setDefault,
          required final String lat,
          required final String lang,
          @JsonKey(name: "is_active") required final bool isActive,
          @JsonKey(name: "address_type") required final String addressType,
          @JsonKey(name: "address_type_label")
          required final String addressTypeLabel,
          @JsonKey(name: "street_name") required final String streetName,
          @JsonKey(name: "building_name") required final String buildingName,
          @JsonKey(name: "flat_number") required final String flatNumber}) =
      _$_AddressModel;
  const _AddressModel._() : super._();

  factory _AddressModel.fromJson(Map<String, dynamic> json) =
      _$_AddressModel.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: "user_id")
  int get userId;
  @override
  String get address;
  @override
  CountryModel? get country;
  @override
  StateModel? get state;
  @override
  CityModel? get city;
  @override
  String get phone;
  @override
  @JsonKey(name: "full_phone")
  String get fullPhone;
  @override
  @JsonKey(name: "country_code")
  String get countryCode;
  @override
  @JsonKey(name: "set_default")
  bool get setDefault;
  @override
  String get lat;
  @override
  String get lang;
  @override
  @JsonKey(name: "is_active")
  bool get isActive;
  @override
  @JsonKey(name: "address_type")
  String get addressType;
  @override
  @JsonKey(name: "address_type_label")
  String get addressTypeLabel;
  @override
  @JsonKey(name: "street_name")
  String get streetName;
  @override
  @JsonKey(name: "building_name")
  String get buildingName;
  @override
  @JsonKey(name: "flat_number")
  String get flatNumber;
  @override
  @JsonKey(ignore: true)
  _$$_AddressModelCopyWith<_$_AddressModel> get copyWith =>
      throw _privateConstructorUsedError;
}
