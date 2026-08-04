// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pharmacy_branch_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PharmacyBranchModel _$PharmacyBranchModelFromJson(Map<String, dynamic> json) {
  return _PharmacyBranchModel.fromJson(json);
}

/// @nodoc
mixin _$PharmacyBranchModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get latitude => throw _privateConstructorUsedError;
  String get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'map_desc')
  String get mapDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_default')
  bool get isDefault => throw _privateConstructorUsedError;
  @JsonKey(name: 'distance_km')
  double? get distanceKm => throw _privateConstructorUsedError;
  PharmacyBranchLocationModel get state => throw _privateConstructorUsedError;
  PharmacyBranchLocationModel get city => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PharmacyBranchModelCopyWith<PharmacyBranchModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PharmacyBranchModelCopyWith<$Res> {
  factory $PharmacyBranchModelCopyWith(
          PharmacyBranchModel value, $Res Function(PharmacyBranchModel) then) =
      _$PharmacyBranchModelCopyWithImpl<$Res, PharmacyBranchModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      String phone,
      String address,
      String latitude,
      String longitude,
      @JsonKey(name: 'map_desc') String mapDescription,
      @JsonKey(name: 'is_default') bool isDefault,
      @JsonKey(name: 'distance_km') double? distanceKm,
      PharmacyBranchLocationModel state,
      PharmacyBranchLocationModel city});

  $PharmacyBranchLocationModelCopyWith<$Res> get state;
  $PharmacyBranchLocationModelCopyWith<$Res> get city;
}

/// @nodoc
class _$PharmacyBranchModelCopyWithImpl<$Res, $Val extends PharmacyBranchModel>
    implements $PharmacyBranchModelCopyWith<$Res> {
  _$PharmacyBranchModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? phone = null,
    Object? address = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? mapDescription = null,
    Object? isDefault = null,
    Object? distanceKm = freezed,
    Object? state = null,
    Object? city = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
      mapDescription: null == mapDescription
          ? _value.mapDescription
          : mapDescription // ignore: cast_nullable_to_non_nullable
              as String,
      isDefault: null == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      distanceKm: freezed == distanceKm
          ? _value.distanceKm
          : distanceKm // ignore: cast_nullable_to_non_nullable
              as double?,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as PharmacyBranchLocationModel,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as PharmacyBranchLocationModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PharmacyBranchLocationModelCopyWith<$Res> get state {
    return $PharmacyBranchLocationModelCopyWith<$Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PharmacyBranchLocationModelCopyWith<$Res> get city {
    return $PharmacyBranchLocationModelCopyWith<$Res>(_value.city, (value) {
      return _then(_value.copyWith(city: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PharmacyBranchModelCopyWith<$Res>
    implements $PharmacyBranchModelCopyWith<$Res> {
  factory _$$_PharmacyBranchModelCopyWith(_$_PharmacyBranchModel value,
          $Res Function(_$_PharmacyBranchModel) then) =
      __$$_PharmacyBranchModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String phone,
      String address,
      String latitude,
      String longitude,
      @JsonKey(name: 'map_desc') String mapDescription,
      @JsonKey(name: 'is_default') bool isDefault,
      @JsonKey(name: 'distance_km') double? distanceKm,
      PharmacyBranchLocationModel state,
      PharmacyBranchLocationModel city});

  @override
  $PharmacyBranchLocationModelCopyWith<$Res> get state;
  @override
  $PharmacyBranchLocationModelCopyWith<$Res> get city;
}

/// @nodoc
class __$$_PharmacyBranchModelCopyWithImpl<$Res>
    extends _$PharmacyBranchModelCopyWithImpl<$Res, _$_PharmacyBranchModel>
    implements _$$_PharmacyBranchModelCopyWith<$Res> {
  __$$_PharmacyBranchModelCopyWithImpl(_$_PharmacyBranchModel _value,
      $Res Function(_$_PharmacyBranchModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? phone = null,
    Object? address = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? mapDescription = null,
    Object? isDefault = null,
    Object? distanceKm = freezed,
    Object? state = null,
    Object? city = null,
  }) {
    return _then(_$_PharmacyBranchModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
      mapDescription: null == mapDescription
          ? _value.mapDescription
          : mapDescription // ignore: cast_nullable_to_non_nullable
              as String,
      isDefault: null == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      distanceKm: freezed == distanceKm
          ? _value.distanceKm
          : distanceKm // ignore: cast_nullable_to_non_nullable
              as double?,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as PharmacyBranchLocationModel,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as PharmacyBranchLocationModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PharmacyBranchModel extends _PharmacyBranchModel {
  const _$_PharmacyBranchModel(
      {required this.id,
      required this.name,
      required this.phone,
      required this.address,
      required this.latitude,
      required this.longitude,
      @JsonKey(name: 'map_desc') required this.mapDescription,
      @JsonKey(name: 'is_default') required this.isDefault,
      @JsonKey(name: 'distance_km') this.distanceKm,
      required this.state,
      required this.city})
      : super._();

  factory _$_PharmacyBranchModel.fromJson(Map<String, dynamic> json) =>
      _$$_PharmacyBranchModelFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String phone;
  @override
  final String address;
  @override
  final String latitude;
  @override
  final String longitude;
  @override
  @JsonKey(name: 'map_desc')
  final String mapDescription;
  @override
  @JsonKey(name: 'is_default')
  final bool isDefault;
  @override
  @JsonKey(name: 'distance_km')
  final double? distanceKm;
  @override
  final PharmacyBranchLocationModel state;
  @override
  final PharmacyBranchLocationModel city;

  @override
  String toString() {
    return 'PharmacyBranchModel(id: $id, name: $name, phone: $phone, address: $address, latitude: $latitude, longitude: $longitude, mapDescription: $mapDescription, isDefault: $isDefault, distanceKm: $distanceKm, state: $state, city: $city)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PharmacyBranchModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.mapDescription, mapDescription) ||
                other.mapDescription == mapDescription) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault) &&
            (identical(other.distanceKm, distanceKm) ||
                other.distanceKm == distanceKm) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.city, city) || other.city == city));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, phone, address,
      latitude, longitude, mapDescription, isDefault, distanceKm, state, city);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PharmacyBranchModelCopyWith<_$_PharmacyBranchModel> get copyWith =>
      __$$_PharmacyBranchModelCopyWithImpl<_$_PharmacyBranchModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PharmacyBranchModelToJson(
      this,
    );
  }
}

abstract class _PharmacyBranchModel extends PharmacyBranchModel {
  const factory _PharmacyBranchModel(
          {required final int id,
          required final String name,
          required final String phone,
          required final String address,
          required final String latitude,
          required final String longitude,
          @JsonKey(name: 'map_desc') required final String mapDescription,
          @JsonKey(name: 'is_default') required final bool isDefault,
          @JsonKey(name: 'distance_km') final double? distanceKm,
          required final PharmacyBranchLocationModel state,
          required final PharmacyBranchLocationModel city}) =
      _$_PharmacyBranchModel;
  const _PharmacyBranchModel._() : super._();

  factory _PharmacyBranchModel.fromJson(Map<String, dynamic> json) =
      _$_PharmacyBranchModel.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get phone;
  @override
  String get address;
  @override
  String get latitude;
  @override
  String get longitude;
  @override
  @JsonKey(name: 'map_desc')
  String get mapDescription;
  @override
  @JsonKey(name: 'is_default')
  bool get isDefault;
  @override
  @JsonKey(name: 'distance_km')
  double? get distanceKm;
  @override
  PharmacyBranchLocationModel get state;
  @override
  PharmacyBranchLocationModel get city;
  @override
  @JsonKey(ignore: true)
  _$$_PharmacyBranchModelCopyWith<_$_PharmacyBranchModel> get copyWith =>
      throw _privateConstructorUsedError;
}

PharmacyBranchLocationModel _$PharmacyBranchLocationModelFromJson(
    Map<String, dynamic> json) {
  return _PharmacyBranchLocationModel.fromJson(json);
}

/// @nodoc
mixin _$PharmacyBranchLocationModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PharmacyBranchLocationModelCopyWith<PharmacyBranchLocationModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PharmacyBranchLocationModelCopyWith<$Res> {
  factory $PharmacyBranchLocationModelCopyWith(
          PharmacyBranchLocationModel value,
          $Res Function(PharmacyBranchLocationModel) then) =
      _$PharmacyBranchLocationModelCopyWithImpl<$Res,
          PharmacyBranchLocationModel>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$PharmacyBranchLocationModelCopyWithImpl<$Res,
        $Val extends PharmacyBranchLocationModel>
    implements $PharmacyBranchLocationModelCopyWith<$Res> {
  _$PharmacyBranchLocationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PharmacyBranchLocationModelCopyWith<$Res>
    implements $PharmacyBranchLocationModelCopyWith<$Res> {
  factory _$$_PharmacyBranchLocationModelCopyWith(
          _$_PharmacyBranchLocationModel value,
          $Res Function(_$_PharmacyBranchLocationModel) then) =
      __$$_PharmacyBranchLocationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$_PharmacyBranchLocationModelCopyWithImpl<$Res>
    extends _$PharmacyBranchLocationModelCopyWithImpl<$Res,
        _$_PharmacyBranchLocationModel>
    implements _$$_PharmacyBranchLocationModelCopyWith<$Res> {
  __$$_PharmacyBranchLocationModelCopyWithImpl(
      _$_PharmacyBranchLocationModel _value,
      $Res Function(_$_PharmacyBranchLocationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$_PharmacyBranchLocationModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PharmacyBranchLocationModel extends _PharmacyBranchLocationModel {
  const _$_PharmacyBranchLocationModel({required this.id, required this.name})
      : super._();

  factory _$_PharmacyBranchLocationModel.fromJson(Map<String, dynamic> json) =>
      _$$_PharmacyBranchLocationModelFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'PharmacyBranchLocationModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PharmacyBranchLocationModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PharmacyBranchLocationModelCopyWith<_$_PharmacyBranchLocationModel>
      get copyWith => __$$_PharmacyBranchLocationModelCopyWithImpl<
          _$_PharmacyBranchLocationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PharmacyBranchLocationModelToJson(
      this,
    );
  }
}

abstract class _PharmacyBranchLocationModel
    extends PharmacyBranchLocationModel {
  const factory _PharmacyBranchLocationModel(
      {required final int id,
      required final String name}) = _$_PharmacyBranchLocationModel;
  const _PharmacyBranchLocationModel._() : super._();

  factory _PharmacyBranchLocationModel.fromJson(Map<String, dynamic> json) =
      _$_PharmacyBranchLocationModel.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_PharmacyBranchLocationModelCopyWith<_$_PharmacyBranchLocationModel>
      get copyWith => throw _privateConstructorUsedError;
}
