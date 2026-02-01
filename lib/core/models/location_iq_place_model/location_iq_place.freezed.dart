// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_iq_place.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocationIQPlace _$LocationIQPlaceFromJson(Map<String, dynamic> json) {
  return _LocationIQPlace.fromJson(json);
}

/// @nodoc
mixin _$LocationIQPlace {
  @JsonKey(name: 'place_id')
  String? get placeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'osm_id')
  String? get osmId => throw _privateConstructorUsedError;
  @JsonKey(name: 'osm_type')
  String? get osmType => throw _privateConstructorUsedError;
  String? get licence => throw _privateConstructorUsedError;
  String? get lat => throw _privateConstructorUsedError;
  String? get lon => throw _privateConstructorUsedError;
  List<String>? get boundingbox => throw _privateConstructorUsedError;
  @JsonKey(name: 'class')
  String? get placeClass => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'display_name')
  String? get displayName => throw _privateConstructorUsedError;
  @JsonKey(name: 'display_place')
  String? get displayPlace => throw _privateConstructorUsedError;
  @JsonKey(name: 'display_address')
  String? get displayAddress => throw _privateConstructorUsedError;
  LocationIQAddress? get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationIQPlaceCopyWith<LocationIQPlace> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationIQPlaceCopyWith<$Res> {
  factory $LocationIQPlaceCopyWith(
          LocationIQPlace value, $Res Function(LocationIQPlace) then) =
      _$LocationIQPlaceCopyWithImpl<$Res, LocationIQPlace>;
  @useResult
  $Res call(
      {@JsonKey(name: 'place_id') String? placeId,
      @JsonKey(name: 'osm_id') String? osmId,
      @JsonKey(name: 'osm_type') String? osmType,
      String? licence,
      String? lat,
      String? lon,
      List<String>? boundingbox,
      @JsonKey(name: 'class') String? placeClass,
      String? type,
      @JsonKey(name: 'display_name') String? displayName,
      @JsonKey(name: 'display_place') String? displayPlace,
      @JsonKey(name: 'display_address') String? displayAddress,
      LocationIQAddress? address});

  $LocationIQAddressCopyWith<$Res>? get address;
}

/// @nodoc
class _$LocationIQPlaceCopyWithImpl<$Res, $Val extends LocationIQPlace>
    implements $LocationIQPlaceCopyWith<$Res> {
  _$LocationIQPlaceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeId = freezed,
    Object? osmId = freezed,
    Object? osmType = freezed,
    Object? licence = freezed,
    Object? lat = freezed,
    Object? lon = freezed,
    Object? boundingbox = freezed,
    Object? placeClass = freezed,
    Object? type = freezed,
    Object? displayName = freezed,
    Object? displayPlace = freezed,
    Object? displayAddress = freezed,
    Object? address = freezed,
  }) {
    return _then(_value.copyWith(
      placeId: freezed == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String?,
      osmId: freezed == osmId
          ? _value.osmId
          : osmId // ignore: cast_nullable_to_non_nullable
              as String?,
      osmType: freezed == osmType
          ? _value.osmType
          : osmType // ignore: cast_nullable_to_non_nullable
              as String?,
      licence: freezed == licence
          ? _value.licence
          : licence // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
      lon: freezed == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as String?,
      boundingbox: freezed == boundingbox
          ? _value.boundingbox
          : boundingbox // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      placeClass: freezed == placeClass
          ? _value.placeClass
          : placeClass // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      displayPlace: freezed == displayPlace
          ? _value.displayPlace
          : displayPlace // ignore: cast_nullable_to_non_nullable
              as String?,
      displayAddress: freezed == displayAddress
          ? _value.displayAddress
          : displayAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as LocationIQAddress?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationIQAddressCopyWith<$Res>? get address {
    if (_value.address == null) {
      return null;
    }

    return $LocationIQAddressCopyWith<$Res>(_value.address!, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LocationIQPlaceCopyWith<$Res>
    implements $LocationIQPlaceCopyWith<$Res> {
  factory _$$_LocationIQPlaceCopyWith(
          _$_LocationIQPlace value, $Res Function(_$_LocationIQPlace) then) =
      __$$_LocationIQPlaceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'place_id') String? placeId,
      @JsonKey(name: 'osm_id') String? osmId,
      @JsonKey(name: 'osm_type') String? osmType,
      String? licence,
      String? lat,
      String? lon,
      List<String>? boundingbox,
      @JsonKey(name: 'class') String? placeClass,
      String? type,
      @JsonKey(name: 'display_name') String? displayName,
      @JsonKey(name: 'display_place') String? displayPlace,
      @JsonKey(name: 'display_address') String? displayAddress,
      LocationIQAddress? address});

  @override
  $LocationIQAddressCopyWith<$Res>? get address;
}

/// @nodoc
class __$$_LocationIQPlaceCopyWithImpl<$Res>
    extends _$LocationIQPlaceCopyWithImpl<$Res, _$_LocationIQPlace>
    implements _$$_LocationIQPlaceCopyWith<$Res> {
  __$$_LocationIQPlaceCopyWithImpl(
      _$_LocationIQPlace _value, $Res Function(_$_LocationIQPlace) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeId = freezed,
    Object? osmId = freezed,
    Object? osmType = freezed,
    Object? licence = freezed,
    Object? lat = freezed,
    Object? lon = freezed,
    Object? boundingbox = freezed,
    Object? placeClass = freezed,
    Object? type = freezed,
    Object? displayName = freezed,
    Object? displayPlace = freezed,
    Object? displayAddress = freezed,
    Object? address = freezed,
  }) {
    return _then(_$_LocationIQPlace(
      placeId: freezed == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String?,
      osmId: freezed == osmId
          ? _value.osmId
          : osmId // ignore: cast_nullable_to_non_nullable
              as String?,
      osmType: freezed == osmType
          ? _value.osmType
          : osmType // ignore: cast_nullable_to_non_nullable
              as String?,
      licence: freezed == licence
          ? _value.licence
          : licence // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
      lon: freezed == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as String?,
      boundingbox: freezed == boundingbox
          ? _value._boundingbox
          : boundingbox // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      placeClass: freezed == placeClass
          ? _value.placeClass
          : placeClass // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      displayPlace: freezed == displayPlace
          ? _value.displayPlace
          : displayPlace // ignore: cast_nullable_to_non_nullable
              as String?,
      displayAddress: freezed == displayAddress
          ? _value.displayAddress
          : displayAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as LocationIQAddress?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocationIQPlace implements _LocationIQPlace {
  const _$_LocationIQPlace(
      {@JsonKey(name: 'place_id') this.placeId,
      @JsonKey(name: 'osm_id') this.osmId,
      @JsonKey(name: 'osm_type') this.osmType,
      this.licence,
      this.lat,
      this.lon,
      final List<String>? boundingbox,
      @JsonKey(name: 'class') this.placeClass,
      this.type,
      @JsonKey(name: 'display_name') this.displayName,
      @JsonKey(name: 'display_place') this.displayPlace,
      @JsonKey(name: 'display_address') this.displayAddress,
      this.address})
      : _boundingbox = boundingbox;

  factory _$_LocationIQPlace.fromJson(Map<String, dynamic> json) =>
      _$$_LocationIQPlaceFromJson(json);

  @override
  @JsonKey(name: 'place_id')
  final String? placeId;
  @override
  @JsonKey(name: 'osm_id')
  final String? osmId;
  @override
  @JsonKey(name: 'osm_type')
  final String? osmType;
  @override
  final String? licence;
  @override
  final String? lat;
  @override
  final String? lon;
  final List<String>? _boundingbox;
  @override
  List<String>? get boundingbox {
    final value = _boundingbox;
    if (value == null) return null;
    if (_boundingbox is EqualUnmodifiableListView) return _boundingbox;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'class')
  final String? placeClass;
  @override
  final String? type;
  @override
  @JsonKey(name: 'display_name')
  final String? displayName;
  @override
  @JsonKey(name: 'display_place')
  final String? displayPlace;
  @override
  @JsonKey(name: 'display_address')
  final String? displayAddress;
  @override
  final LocationIQAddress? address;

  @override
  String toString() {
    return 'LocationIQPlace(placeId: $placeId, osmId: $osmId, osmType: $osmType, licence: $licence, lat: $lat, lon: $lon, boundingbox: $boundingbox, placeClass: $placeClass, type: $type, displayName: $displayName, displayPlace: $displayPlace, displayAddress: $displayAddress, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationIQPlace &&
            (identical(other.placeId, placeId) || other.placeId == placeId) &&
            (identical(other.osmId, osmId) || other.osmId == osmId) &&
            (identical(other.osmType, osmType) || other.osmType == osmType) &&
            (identical(other.licence, licence) || other.licence == licence) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon) &&
            const DeepCollectionEquality()
                .equals(other._boundingbox, _boundingbox) &&
            (identical(other.placeClass, placeClass) ||
                other.placeClass == placeClass) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.displayPlace, displayPlace) ||
                other.displayPlace == displayPlace) &&
            (identical(other.displayAddress, displayAddress) ||
                other.displayAddress == displayAddress) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      placeId,
      osmId,
      osmType,
      licence,
      lat,
      lon,
      const DeepCollectionEquality().hash(_boundingbox),
      placeClass,
      type,
      displayName,
      displayPlace,
      displayAddress,
      address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocationIQPlaceCopyWith<_$_LocationIQPlace> get copyWith =>
      __$$_LocationIQPlaceCopyWithImpl<_$_LocationIQPlace>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationIQPlaceToJson(
      this,
    );
  }
}

abstract class _LocationIQPlace implements LocationIQPlace {
  const factory _LocationIQPlace(
      {@JsonKey(name: 'place_id') final String? placeId,
      @JsonKey(name: 'osm_id') final String? osmId,
      @JsonKey(name: 'osm_type') final String? osmType,
      final String? licence,
      final String? lat,
      final String? lon,
      final List<String>? boundingbox,
      @JsonKey(name: 'class') final String? placeClass,
      final String? type,
      @JsonKey(name: 'display_name') final String? displayName,
      @JsonKey(name: 'display_place') final String? displayPlace,
      @JsonKey(name: 'display_address') final String? displayAddress,
      final LocationIQAddress? address}) = _$_LocationIQPlace;

  factory _LocationIQPlace.fromJson(Map<String, dynamic> json) =
      _$_LocationIQPlace.fromJson;

  @override
  @JsonKey(name: 'place_id')
  String? get placeId;
  @override
  @JsonKey(name: 'osm_id')
  String? get osmId;
  @override
  @JsonKey(name: 'osm_type')
  String? get osmType;
  @override
  String? get licence;
  @override
  String? get lat;
  @override
  String? get lon;
  @override
  List<String>? get boundingbox;
  @override
  @JsonKey(name: 'class')
  String? get placeClass;
  @override
  String? get type;
  @override
  @JsonKey(name: 'display_name')
  String? get displayName;
  @override
  @JsonKey(name: 'display_place')
  String? get displayPlace;
  @override
  @JsonKey(name: 'display_address')
  String? get displayAddress;
  @override
  LocationIQAddress? get address;
  @override
  @JsonKey(ignore: true)
  _$$_LocationIQPlaceCopyWith<_$_LocationIQPlace> get copyWith =>
      throw _privateConstructorUsedError;
}

LocationIQAddress _$LocationIQAddressFromJson(Map<String, dynamic> json) {
  return _LocationIQAddress.fromJson(json);
}

/// @nodoc
mixin _$LocationIQAddress {
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'house_number')
  String? get houseNumber => throw _privateConstructorUsedError;
  String? get road => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get postcode => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationIQAddressCopyWith<LocationIQAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationIQAddressCopyWith<$Res> {
  factory $LocationIQAddressCopyWith(
          LocationIQAddress value, $Res Function(LocationIQAddress) then) =
      _$LocationIQAddressCopyWithImpl<$Res, LocationIQAddress>;
  @useResult
  $Res call(
      {String? name,
      @JsonKey(name: 'house_number') String? houseNumber,
      String? road,
      String? city,
      String? state,
      String? postcode,
      String? country});
}

/// @nodoc
class _$LocationIQAddressCopyWithImpl<$Res, $Val extends LocationIQAddress>
    implements $LocationIQAddressCopyWith<$Res> {
  _$LocationIQAddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? houseNumber = freezed,
    Object? road = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? postcode = freezed,
    Object? country = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      houseNumber: freezed == houseNumber
          ? _value.houseNumber
          : houseNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      road: freezed == road
          ? _value.road
          : road // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      postcode: freezed == postcode
          ? _value.postcode
          : postcode // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LocationIQAddressCopyWith<$Res>
    implements $LocationIQAddressCopyWith<$Res> {
  factory _$$_LocationIQAddressCopyWith(_$_LocationIQAddress value,
          $Res Function(_$_LocationIQAddress) then) =
      __$$_LocationIQAddressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      @JsonKey(name: 'house_number') String? houseNumber,
      String? road,
      String? city,
      String? state,
      String? postcode,
      String? country});
}

/// @nodoc
class __$$_LocationIQAddressCopyWithImpl<$Res>
    extends _$LocationIQAddressCopyWithImpl<$Res, _$_LocationIQAddress>
    implements _$$_LocationIQAddressCopyWith<$Res> {
  __$$_LocationIQAddressCopyWithImpl(
      _$_LocationIQAddress _value, $Res Function(_$_LocationIQAddress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? houseNumber = freezed,
    Object? road = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? postcode = freezed,
    Object? country = freezed,
  }) {
    return _then(_$_LocationIQAddress(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      houseNumber: freezed == houseNumber
          ? _value.houseNumber
          : houseNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      road: freezed == road
          ? _value.road
          : road // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      postcode: freezed == postcode
          ? _value.postcode
          : postcode // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocationIQAddress implements _LocationIQAddress {
  const _$_LocationIQAddress(
      {this.name,
      @JsonKey(name: 'house_number') this.houseNumber,
      this.road,
      this.city,
      this.state,
      this.postcode,
      this.country});

  factory _$_LocationIQAddress.fromJson(Map<String, dynamic> json) =>
      _$$_LocationIQAddressFromJson(json);

  @override
  final String? name;
  @override
  @JsonKey(name: 'house_number')
  final String? houseNumber;
  @override
  final String? road;
  @override
  final String? city;
  @override
  final String? state;
  @override
  final String? postcode;
  @override
  final String? country;

  @override
  String toString() {
    return 'LocationIQAddress(name: $name, houseNumber: $houseNumber, road: $road, city: $city, state: $state, postcode: $postcode, country: $country)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationIQAddress &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.houseNumber, houseNumber) ||
                other.houseNumber == houseNumber) &&
            (identical(other.road, road) || other.road == road) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.postcode, postcode) ||
                other.postcode == postcode) &&
            (identical(other.country, country) || other.country == country));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, houseNumber, road, city, state, postcode, country);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocationIQAddressCopyWith<_$_LocationIQAddress> get copyWith =>
      __$$_LocationIQAddressCopyWithImpl<_$_LocationIQAddress>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationIQAddressToJson(
      this,
    );
  }
}

abstract class _LocationIQAddress implements LocationIQAddress {
  const factory _LocationIQAddress(
      {final String? name,
      @JsonKey(name: 'house_number') final String? houseNumber,
      final String? road,
      final String? city,
      final String? state,
      final String? postcode,
      final String? country}) = _$_LocationIQAddress;

  factory _LocationIQAddress.fromJson(Map<String, dynamic> json) =
      _$_LocationIQAddress.fromJson;

  @override
  String? get name;
  @override
  @JsonKey(name: 'house_number')
  String? get houseNumber;
  @override
  String? get road;
  @override
  String? get city;
  @override
  String? get state;
  @override
  String? get postcode;
  @override
  String? get country;
  @override
  @JsonKey(ignore: true)
  _$$_LocationIQAddressCopyWith<_$_LocationIQAddress> get copyWith =>
      throw _privateConstructorUsedError;
}
