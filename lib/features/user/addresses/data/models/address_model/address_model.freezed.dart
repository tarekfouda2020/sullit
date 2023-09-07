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
  @JsonKey(name: "postal_code")
  String get postalCode => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "set_default")
  bool get setDefault => throw _privateConstructorUsedError;
  String get lat => throw _privateConstructorUsedError;
  String get lang => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active")
  bool get isActive => throw _privateConstructorUsedError;

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
      @JsonKey(name: "postal_code") String postalCode,
      String phone,
      @JsonKey(name: "set_default") bool setDefault,
      String lat,
      String lang,
      @JsonKey(name: "is_active") bool isActive});

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
    Object? postalCode = null,
    Object? phone = null,
    Object? setDefault = null,
    Object? lat = null,
    Object? lang = null,
    Object? isActive = null,
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
      postalCode: null == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
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
      @JsonKey(name: "postal_code") String postalCode,
      String phone,
      @JsonKey(name: "set_default") bool setDefault,
      String lat,
      String lang,
      @JsonKey(name: "is_active") bool isActive});

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
    Object? postalCode = null,
    Object? phone = null,
    Object? setDefault = null,
    Object? lat = null,
    Object? lang = null,
    Object? isActive = null,
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
      postalCode: null == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
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
      @JsonKey(name: "postal_code") required this.postalCode,
      required this.phone,
      @JsonKey(name: "set_default") required this.setDefault,
      required this.lat,
      required this.lang,
      @JsonKey(name: "is_active") required this.isActive})
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
  @JsonKey(name: "postal_code")
  final String postalCode;
  @override
  final String phone;
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
  String toString() {
    return 'AddressModel(id: $id, userId: $userId, address: $address, country: $country, state: $state, city: $city, postalCode: $postalCode, phone: $phone, setDefault: $setDefault, lat: $lat, lang: $lang, isActive: $isActive)';
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
            (identical(other.postalCode, postalCode) ||
                other.postalCode == postalCode) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.setDefault, setDefault) ||
                other.setDefault == setDefault) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lang, lang) || other.lang == lang) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, address, country,
      state, city, postalCode, phone, setDefault, lat, lang, isActive);

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
          @JsonKey(name: "postal_code") required final String postalCode,
          required final String phone,
          @JsonKey(name: "set_default") required final bool setDefault,
          required final String lat,
          required final String lang,
          @JsonKey(name: "is_active") required final bool isActive}) =
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
  @JsonKey(name: "postal_code")
  String get postalCode;
  @override
  String get phone;
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
  @JsonKey(ignore: true)
  _$$_AddressModelCopyWith<_$_AddressModel> get copyWith =>
      throw _privateConstructorUsedError;
}
