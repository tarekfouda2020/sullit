// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pharmacy_shipping_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PharmacyShippingModel _$PharmacyShippingModelFromJson(
    Map<String, dynamic> json) {
  return _PharmacyShippingModel.fromJson(json);
}

/// @nodoc
mixin _$PharmacyShippingModel {
  @JsonKey(name: 'owner_id')
  int get ownerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'physical')
  bool get physical => throw _privateConstructorUsedError;
  @JsonKey(name: 'active_delivery')
  bool get activeDelivery => throw _privateConstructorUsedError;
  @JsonKey(name: 'active_pickup')
  bool get activePickup => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_message')
  String? get deliveryMessage => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery')
  DeliveryObjectModel? get deliveryObject => throw _privateConstructorUsedError;
  @JsonKey(name: 'pickup')
  PharmacyPickUpModel? get pickupModel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PharmacyShippingModelCopyWith<PharmacyShippingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PharmacyShippingModelCopyWith<$Res> {
  factory $PharmacyShippingModelCopyWith(PharmacyShippingModel value,
          $Res Function(PharmacyShippingModel) then) =
      _$PharmacyShippingModelCopyWithImpl<$Res, PharmacyShippingModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'owner_id') int ownerId,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'physical') bool physical,
      @JsonKey(name: 'active_delivery') bool activeDelivery,
      @JsonKey(name: 'active_pickup') bool activePickup,
      @JsonKey(name: 'delivery_message') String? deliveryMessage,
      @JsonKey(name: 'delivery') DeliveryObjectModel? deliveryObject,
      @JsonKey(name: 'pickup') PharmacyPickUpModel? pickupModel});

  $DeliveryObjectModelCopyWith<$Res>? get deliveryObject;
  $PharmacyPickUpModelCopyWith<$Res>? get pickupModel;
}

/// @nodoc
class _$PharmacyShippingModelCopyWithImpl<$Res,
        $Val extends PharmacyShippingModel>
    implements $PharmacyShippingModelCopyWith<$Res> {
  _$PharmacyShippingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ownerId = null,
    Object? name = null,
    Object? physical = null,
    Object? activeDelivery = null,
    Object? activePickup = null,
    Object? deliveryMessage = freezed,
    Object? deliveryObject = freezed,
    Object? pickupModel = freezed,
  }) {
    return _then(_value.copyWith(
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      physical: null == physical
          ? _value.physical
          : physical // ignore: cast_nullable_to_non_nullable
              as bool,
      activeDelivery: null == activeDelivery
          ? _value.activeDelivery
          : activeDelivery // ignore: cast_nullable_to_non_nullable
              as bool,
      activePickup: null == activePickup
          ? _value.activePickup
          : activePickup // ignore: cast_nullable_to_non_nullable
              as bool,
      deliveryMessage: freezed == deliveryMessage
          ? _value.deliveryMessage
          : deliveryMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryObject: freezed == deliveryObject
          ? _value.deliveryObject
          : deliveryObject // ignore: cast_nullable_to_non_nullable
              as DeliveryObjectModel?,
      pickupModel: freezed == pickupModel
          ? _value.pickupModel
          : pickupModel // ignore: cast_nullable_to_non_nullable
              as PharmacyPickUpModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DeliveryObjectModelCopyWith<$Res>? get deliveryObject {
    if (_value.deliveryObject == null) {
      return null;
    }

    return $DeliveryObjectModelCopyWith<$Res>(_value.deliveryObject!, (value) {
      return _then(_value.copyWith(deliveryObject: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PharmacyPickUpModelCopyWith<$Res>? get pickupModel {
    if (_value.pickupModel == null) {
      return null;
    }

    return $PharmacyPickUpModelCopyWith<$Res>(_value.pickupModel!, (value) {
      return _then(_value.copyWith(pickupModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PharmacyShippingModelCopyWith<$Res>
    implements $PharmacyShippingModelCopyWith<$Res> {
  factory _$$_PharmacyShippingModelCopyWith(_$_PharmacyShippingModel value,
          $Res Function(_$_PharmacyShippingModel) then) =
      __$$_PharmacyShippingModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'owner_id') int ownerId,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'physical') bool physical,
      @JsonKey(name: 'active_delivery') bool activeDelivery,
      @JsonKey(name: 'active_pickup') bool activePickup,
      @JsonKey(name: 'delivery_message') String? deliveryMessage,
      @JsonKey(name: 'delivery') DeliveryObjectModel? deliveryObject,
      @JsonKey(name: 'pickup') PharmacyPickUpModel? pickupModel});

  @override
  $DeliveryObjectModelCopyWith<$Res>? get deliveryObject;
  @override
  $PharmacyPickUpModelCopyWith<$Res>? get pickupModel;
}

/// @nodoc
class __$$_PharmacyShippingModelCopyWithImpl<$Res>
    extends _$PharmacyShippingModelCopyWithImpl<$Res, _$_PharmacyShippingModel>
    implements _$$_PharmacyShippingModelCopyWith<$Res> {
  __$$_PharmacyShippingModelCopyWithImpl(_$_PharmacyShippingModel _value,
      $Res Function(_$_PharmacyShippingModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ownerId = null,
    Object? name = null,
    Object? physical = null,
    Object? activeDelivery = null,
    Object? activePickup = null,
    Object? deliveryMessage = freezed,
    Object? deliveryObject = freezed,
    Object? pickupModel = freezed,
  }) {
    return _then(_$_PharmacyShippingModel(
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      physical: null == physical
          ? _value.physical
          : physical // ignore: cast_nullable_to_non_nullable
              as bool,
      activeDelivery: null == activeDelivery
          ? _value.activeDelivery
          : activeDelivery // ignore: cast_nullable_to_non_nullable
              as bool,
      activePickup: null == activePickup
          ? _value.activePickup
          : activePickup // ignore: cast_nullable_to_non_nullable
              as bool,
      deliveryMessage: freezed == deliveryMessage
          ? _value.deliveryMessage
          : deliveryMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryObject: freezed == deliveryObject
          ? _value.deliveryObject
          : deliveryObject // ignore: cast_nullable_to_non_nullable
              as DeliveryObjectModel?,
      pickupModel: freezed == pickupModel
          ? _value.pickupModel
          : pickupModel // ignore: cast_nullable_to_non_nullable
              as PharmacyPickUpModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_PharmacyShippingModel extends _PharmacyShippingModel {
  const _$_PharmacyShippingModel(
      {@JsonKey(name: 'owner_id') required this.ownerId,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'physical') required this.physical,
      @JsonKey(name: 'active_delivery') required this.activeDelivery,
      @JsonKey(name: 'active_pickup') required this.activePickup,
      @JsonKey(name: 'delivery_message') this.deliveryMessage,
      @JsonKey(name: 'delivery') required this.deliveryObject,
      @JsonKey(name: 'pickup') required this.pickupModel})
      : super._();

  factory _$_PharmacyShippingModel.fromJson(Map<String, dynamic> json) =>
      _$$_PharmacyShippingModelFromJson(json);

  @override
  @JsonKey(name: 'owner_id')
  final int ownerId;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'physical')
  final bool physical;
  @override
  @JsonKey(name: 'active_delivery')
  final bool activeDelivery;
  @override
  @JsonKey(name: 'active_pickup')
  final bool activePickup;
  @override
  @JsonKey(name: 'delivery_message')
  final String? deliveryMessage;
  @override
  @JsonKey(name: 'delivery')
  final DeliveryObjectModel? deliveryObject;
  @override
  @JsonKey(name: 'pickup')
  final PharmacyPickUpModel? pickupModel;

  @override
  String toString() {
    return 'PharmacyShippingModel(ownerId: $ownerId, name: $name, physical: $physical, activeDelivery: $activeDelivery, activePickup: $activePickup, deliveryMessage: $deliveryMessage, deliveryObject: $deliveryObject, pickupModel: $pickupModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PharmacyShippingModel &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.physical, physical) ||
                other.physical == physical) &&
            (identical(other.activeDelivery, activeDelivery) ||
                other.activeDelivery == activeDelivery) &&
            (identical(other.activePickup, activePickup) ||
                other.activePickup == activePickup) &&
            (identical(other.deliveryMessage, deliveryMessage) ||
                other.deliveryMessage == deliveryMessage) &&
            (identical(other.deliveryObject, deliveryObject) ||
                other.deliveryObject == deliveryObject) &&
            (identical(other.pickupModel, pickupModel) ||
                other.pickupModel == pickupModel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      ownerId,
      name,
      physical,
      activeDelivery,
      activePickup,
      deliveryMessage,
      deliveryObject,
      pickupModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PharmacyShippingModelCopyWith<_$_PharmacyShippingModel> get copyWith =>
      __$$_PharmacyShippingModelCopyWithImpl<_$_PharmacyShippingModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PharmacyShippingModelToJson(
      this,
    );
  }
}

abstract class _PharmacyShippingModel extends PharmacyShippingModel {
  const factory _PharmacyShippingModel(
          {@JsonKey(name: 'owner_id') required final int ownerId,
          @JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'physical') required final bool physical,
          @JsonKey(name: 'active_delivery') required final bool activeDelivery,
          @JsonKey(name: 'active_pickup') required final bool activePickup,
          @JsonKey(name: 'delivery_message') final String? deliveryMessage,
          @JsonKey(name: 'delivery')
          required final DeliveryObjectModel? deliveryObject,
          @JsonKey(name: 'pickup')
          required final PharmacyPickUpModel? pickupModel}) =
      _$_PharmacyShippingModel;
  const _PharmacyShippingModel._() : super._();

  factory _PharmacyShippingModel.fromJson(Map<String, dynamic> json) =
      _$_PharmacyShippingModel.fromJson;

  @override
  @JsonKey(name: 'owner_id')
  int get ownerId;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'physical')
  bool get physical;
  @override
  @JsonKey(name: 'active_delivery')
  bool get activeDelivery;
  @override
  @JsonKey(name: 'active_pickup')
  bool get activePickup;
  @override
  @JsonKey(name: 'delivery_message')
  String? get deliveryMessage;
  @override
  @JsonKey(name: 'delivery')
  DeliveryObjectModel? get deliveryObject;
  @override
  @JsonKey(name: 'pickup')
  PharmacyPickUpModel? get pickupModel;
  @override
  @JsonKey(ignore: true)
  _$$_PharmacyShippingModelCopyWith<_$_PharmacyShippingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

DeliveryObjectModel _$DeliveryObjectModelFromJson(Map<String, dynamic> json) {
  return _DeliveryObjectModel.fromJson(json);
}

/// @nodoc
mixin _$DeliveryObjectModel {
  @JsonKey(name: 'transit_in')
  String get transitIn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryObjectModelCopyWith<DeliveryObjectModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryObjectModelCopyWith<$Res> {
  factory $DeliveryObjectModelCopyWith(
          DeliveryObjectModel value, $Res Function(DeliveryObjectModel) then) =
      _$DeliveryObjectModelCopyWithImpl<$Res, DeliveryObjectModel>;
  @useResult
  $Res call({@JsonKey(name: 'transit_in') String transitIn});
}

/// @nodoc
class _$DeliveryObjectModelCopyWithImpl<$Res, $Val extends DeliveryObjectModel>
    implements $DeliveryObjectModelCopyWith<$Res> {
  _$DeliveryObjectModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transitIn = null,
  }) {
    return _then(_value.copyWith(
      transitIn: null == transitIn
          ? _value.transitIn
          : transitIn // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeliveryObjectModelCopyWith<$Res>
    implements $DeliveryObjectModelCopyWith<$Res> {
  factory _$$_DeliveryObjectModelCopyWith(_$_DeliveryObjectModel value,
          $Res Function(_$_DeliveryObjectModel) then) =
      __$$_DeliveryObjectModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'transit_in') String transitIn});
}

/// @nodoc
class __$$_DeliveryObjectModelCopyWithImpl<$Res>
    extends _$DeliveryObjectModelCopyWithImpl<$Res, _$_DeliveryObjectModel>
    implements _$$_DeliveryObjectModelCopyWith<$Res> {
  __$$_DeliveryObjectModelCopyWithImpl(_$_DeliveryObjectModel _value,
      $Res Function(_$_DeliveryObjectModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transitIn = null,
  }) {
    return _then(_$_DeliveryObjectModel(
      transitIn: null == transitIn
          ? _value.transitIn
          : transitIn // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeliveryObjectModel extends _DeliveryObjectModel {
  const _$_DeliveryObjectModel(
      {@JsonKey(name: 'transit_in') required this.transitIn})
      : super._();

  factory _$_DeliveryObjectModel.fromJson(Map<String, dynamic> json) =>
      _$$_DeliveryObjectModelFromJson(json);

  @override
  @JsonKey(name: 'transit_in')
  final String transitIn;

  @override
  String toString() {
    return 'DeliveryObjectModel(transitIn: $transitIn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeliveryObjectModel &&
            (identical(other.transitIn, transitIn) ||
                other.transitIn == transitIn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, transitIn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeliveryObjectModelCopyWith<_$_DeliveryObjectModel> get copyWith =>
      __$$_DeliveryObjectModelCopyWithImpl<_$_DeliveryObjectModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeliveryObjectModelToJson(
      this,
    );
  }
}

abstract class _DeliveryObjectModel extends DeliveryObjectModel {
  const factory _DeliveryObjectModel(
          {@JsonKey(name: 'transit_in') required final String transitIn}) =
      _$_DeliveryObjectModel;
  const _DeliveryObjectModel._() : super._();

  factory _DeliveryObjectModel.fromJson(Map<String, dynamic> json) =
      _$_DeliveryObjectModel.fromJson;

  @override
  @JsonKey(name: 'transit_in')
  String get transitIn;
  @override
  @JsonKey(ignore: true)
  _$$_DeliveryObjectModelCopyWith<_$_DeliveryObjectModel> get copyWith =>
      throw _privateConstructorUsedError;
}

PharmacyPickUpModel _$PharmacyPickUpModelFromJson(Map<String, dynamic> json) {
  return _PharmacyPickUpModel.fromJson(json);
}

/// @nodoc
mixin _$PharmacyPickUpModel {
  int get id => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'postal_code')
  String get postalCode => throw _privateConstructorUsedError;
  String? get lat => throw _privateConstructorUsedError;
  String? get lang => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PharmacyPickUpModelCopyWith<PharmacyPickUpModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PharmacyPickUpModelCopyWith<$Res> {
  factory $PharmacyPickUpModelCopyWith(
          PharmacyPickUpModel value, $Res Function(PharmacyPickUpModel) then) =
      _$PharmacyPickUpModelCopyWithImpl<$Res, PharmacyPickUpModel>;
  @useResult
  $Res call(
      {int id,
      String address,
      @JsonKey(name: 'postal_code') String postalCode,
      String? lat,
      String? lang});
}

/// @nodoc
class _$PharmacyPickUpModelCopyWithImpl<$Res, $Val extends PharmacyPickUpModel>
    implements $PharmacyPickUpModelCopyWith<$Res> {
  _$PharmacyPickUpModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? address = null,
    Object? postalCode = null,
    Object? lat = freezed,
    Object? lang = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      postalCode: null == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
      lang: freezed == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PharmacyPickUpModelCopyWith<$Res>
    implements $PharmacyPickUpModelCopyWith<$Res> {
  factory _$$_PharmacyPickUpModelCopyWith(_$_PharmacyPickUpModel value,
          $Res Function(_$_PharmacyPickUpModel) then) =
      __$$_PharmacyPickUpModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String address,
      @JsonKey(name: 'postal_code') String postalCode,
      String? lat,
      String? lang});
}

/// @nodoc
class __$$_PharmacyPickUpModelCopyWithImpl<$Res>
    extends _$PharmacyPickUpModelCopyWithImpl<$Res, _$_PharmacyPickUpModel>
    implements _$$_PharmacyPickUpModelCopyWith<$Res> {
  __$$_PharmacyPickUpModelCopyWithImpl(_$_PharmacyPickUpModel _value,
      $Res Function(_$_PharmacyPickUpModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? address = null,
    Object? postalCode = null,
    Object? lat = freezed,
    Object? lang = freezed,
  }) {
    return _then(_$_PharmacyPickUpModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      postalCode: null == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
      lang: freezed == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_PharmacyPickUpModel extends _PharmacyPickUpModel {
  const _$_PharmacyPickUpModel(
      {required this.id,
      required this.address,
      @JsonKey(name: 'postal_code') required this.postalCode,
      this.lat,
      this.lang})
      : super._();

  factory _$_PharmacyPickUpModel.fromJson(Map<String, dynamic> json) =>
      _$$_PharmacyPickUpModelFromJson(json);

  @override
  final int id;
  @override
  final String address;
  @override
  @JsonKey(name: 'postal_code')
  final String postalCode;
  @override
  final String? lat;
  @override
  final String? lang;

  @override
  String toString() {
    return 'PharmacyPickUpModel(id: $id, address: $address, postalCode: $postalCode, lat: $lat, lang: $lang)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PharmacyPickUpModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.postalCode, postalCode) ||
                other.postalCode == postalCode) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lang, lang) || other.lang == lang));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, address, postalCode, lat, lang);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PharmacyPickUpModelCopyWith<_$_PharmacyPickUpModel> get copyWith =>
      __$$_PharmacyPickUpModelCopyWithImpl<_$_PharmacyPickUpModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PharmacyPickUpModelToJson(
      this,
    );
  }
}

abstract class _PharmacyPickUpModel extends PharmacyPickUpModel {
  const factory _PharmacyPickUpModel(
      {required final int id,
      required final String address,
      @JsonKey(name: 'postal_code') required final String postalCode,
      final String? lat,
      final String? lang}) = _$_PharmacyPickUpModel;
  const _PharmacyPickUpModel._() : super._();

  factory _PharmacyPickUpModel.fromJson(Map<String, dynamic> json) =
      _$_PharmacyPickUpModel.fromJson;

  @override
  int get id;
  @override
  String get address;
  @override
  @JsonKey(name: 'postal_code')
  String get postalCode;
  @override
  String? get lat;
  @override
  String? get lang;
  @override
  @JsonKey(ignore: true)
  _$$_PharmacyPickUpModelCopyWith<_$_PharmacyPickUpModel> get copyWith =>
      throw _privateConstructorUsedError;
}
