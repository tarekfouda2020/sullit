// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vip_subscribe_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VipSubscribeModel _$VipSubscribeModelFromJson(Map<String, dynamic> json) {
  return _VipSubscribeModel.fromJson(json);
}

/// @nodoc
mixin _$VipSubscribeModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get duration => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  int get days => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: "starts_at")
  String? get startsAt => throw _privateConstructorUsedError;
  @JsonKey(name: "expires_at")
  String? get expiresAt => throw _privateConstructorUsedError;
  @JsonKey(name: "expired_in_days")
  int? get expiredInDays => throw _privateConstructorUsedError;
  @JsonKey(name: "is_expired")
  bool? get isExpired => throw _privateConstructorUsedError;
  @JsonKey(name: "subscription")
  VipSubscribeModel? get subscription => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VipSubscribeModelCopyWith<VipSubscribeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VipSubscribeModelCopyWith<$Res> {
  factory $VipSubscribeModelCopyWith(
          VipSubscribeModel value, $Res Function(VipSubscribeModel) then) =
      _$VipSubscribeModelCopyWithImpl<$Res, VipSubscribeModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      String duration,
      String price,
      int days,
      String description,
      @JsonKey(name: "starts_at") String? startsAt,
      @JsonKey(name: "expires_at") String? expiresAt,
      @JsonKey(name: "expired_in_days") int? expiredInDays,
      @JsonKey(name: "is_expired") bool? isExpired,
      @JsonKey(name: "subscription") VipSubscribeModel? subscription});

  $VipSubscribeModelCopyWith<$Res>? get subscription;
}

/// @nodoc
class _$VipSubscribeModelCopyWithImpl<$Res, $Val extends VipSubscribeModel>
    implements $VipSubscribeModelCopyWith<$Res> {
  _$VipSubscribeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? duration = null,
    Object? price = null,
    Object? days = null,
    Object? description = null,
    Object? startsAt = freezed,
    Object? expiresAt = freezed,
    Object? expiredInDays = freezed,
    Object? isExpired = freezed,
    Object? subscription = freezed,
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
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      days: null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      startsAt: freezed == startsAt
          ? _value.startsAt
          : startsAt // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as String?,
      expiredInDays: freezed == expiredInDays
          ? _value.expiredInDays
          : expiredInDays // ignore: cast_nullable_to_non_nullable
              as int?,
      isExpired: freezed == isExpired
          ? _value.isExpired
          : isExpired // ignore: cast_nullable_to_non_nullable
              as bool?,
      subscription: freezed == subscription
          ? _value.subscription
          : subscription // ignore: cast_nullable_to_non_nullable
              as VipSubscribeModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VipSubscribeModelCopyWith<$Res>? get subscription {
    if (_value.subscription == null) {
      return null;
    }

    return $VipSubscribeModelCopyWith<$Res>(_value.subscription!, (value) {
      return _then(_value.copyWith(subscription: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_VipSubscribeModelCopyWith<$Res>
    implements $VipSubscribeModelCopyWith<$Res> {
  factory _$$_VipSubscribeModelCopyWith(_$_VipSubscribeModel value,
          $Res Function(_$_VipSubscribeModel) then) =
      __$$_VipSubscribeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String duration,
      String price,
      int days,
      String description,
      @JsonKey(name: "starts_at") String? startsAt,
      @JsonKey(name: "expires_at") String? expiresAt,
      @JsonKey(name: "expired_in_days") int? expiredInDays,
      @JsonKey(name: "is_expired") bool? isExpired,
      @JsonKey(name: "subscription") VipSubscribeModel? subscription});

  @override
  $VipSubscribeModelCopyWith<$Res>? get subscription;
}

/// @nodoc
class __$$_VipSubscribeModelCopyWithImpl<$Res>
    extends _$VipSubscribeModelCopyWithImpl<$Res, _$_VipSubscribeModel>
    implements _$$_VipSubscribeModelCopyWith<$Res> {
  __$$_VipSubscribeModelCopyWithImpl(
      _$_VipSubscribeModel _value, $Res Function(_$_VipSubscribeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? duration = null,
    Object? price = null,
    Object? days = null,
    Object? description = null,
    Object? startsAt = freezed,
    Object? expiresAt = freezed,
    Object? expiredInDays = freezed,
    Object? isExpired = freezed,
    Object? subscription = freezed,
  }) {
    return _then(_$_VipSubscribeModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      days: null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      startsAt: freezed == startsAt
          ? _value.startsAt
          : startsAt // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as String?,
      expiredInDays: freezed == expiredInDays
          ? _value.expiredInDays
          : expiredInDays // ignore: cast_nullable_to_non_nullable
              as int?,
      isExpired: freezed == isExpired
          ? _value.isExpired
          : isExpired // ignore: cast_nullable_to_non_nullable
              as bool?,
      subscription: freezed == subscription
          ? _value.subscription
          : subscription // ignore: cast_nullable_to_non_nullable
              as VipSubscribeModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_VipSubscribeModel extends _VipSubscribeModel {
  _$_VipSubscribeModel(
      {required this.id,
      required this.name,
      required this.duration,
      required this.price,
      required this.days,
      required this.description,
      @JsonKey(name: "starts_at") this.startsAt,
      @JsonKey(name: "expires_at") this.expiresAt,
      @JsonKey(name: "expired_in_days") this.expiredInDays,
      @JsonKey(name: "is_expired") this.isExpired,
      @JsonKey(name: "subscription") this.subscription})
      : super._();

  factory _$_VipSubscribeModel.fromJson(Map<String, dynamic> json) =>
      _$$_VipSubscribeModelFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String duration;
  @override
  final String price;
  @override
  final int days;
  @override
  final String description;
  @override
  @JsonKey(name: "starts_at")
  final String? startsAt;
  @override
  @JsonKey(name: "expires_at")
  final String? expiresAt;
  @override
  @JsonKey(name: "expired_in_days")
  final int? expiredInDays;
  @override
  @JsonKey(name: "is_expired")
  final bool? isExpired;
  @override
  @JsonKey(name: "subscription")
  final VipSubscribeModel? subscription;

  @override
  String toString() {
    return 'VipSubscribeModel(id: $id, name: $name, duration: $duration, price: $price, days: $days, description: $description, startsAt: $startsAt, expiresAt: $expiresAt, expiredInDays: $expiredInDays, isExpired: $isExpired, subscription: $subscription)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VipSubscribeModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.days, days) || other.days == days) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.startsAt, startsAt) ||
                other.startsAt == startsAt) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.expiredInDays, expiredInDays) ||
                other.expiredInDays == expiredInDays) &&
            (identical(other.isExpired, isExpired) ||
                other.isExpired == isExpired) &&
            (identical(other.subscription, subscription) ||
                other.subscription == subscription));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, duration, price, days,
      description, startsAt, expiresAt, expiredInDays, isExpired, subscription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VipSubscribeModelCopyWith<_$_VipSubscribeModel> get copyWith =>
      __$$_VipSubscribeModelCopyWithImpl<_$_VipSubscribeModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VipSubscribeModelToJson(
      this,
    );
  }
}

abstract class _VipSubscribeModel extends VipSubscribeModel {
  factory _VipSubscribeModel(
      {required final int id,
      required final String name,
      required final String duration,
      required final String price,
      required final int days,
      required final String description,
      @JsonKey(name: "starts_at") final String? startsAt,
      @JsonKey(name: "expires_at") final String? expiresAt,
      @JsonKey(name: "expired_in_days") final int? expiredInDays,
      @JsonKey(name: "is_expired") final bool? isExpired,
      @JsonKey(name: "subscription")
      final VipSubscribeModel? subscription}) = _$_VipSubscribeModel;
  _VipSubscribeModel._() : super._();

  factory _VipSubscribeModel.fromJson(Map<String, dynamic> json) =
      _$_VipSubscribeModel.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get duration;
  @override
  String get price;
  @override
  int get days;
  @override
  String get description;
  @override
  @JsonKey(name: "starts_at")
  String? get startsAt;
  @override
  @JsonKey(name: "expires_at")
  String? get expiresAt;
  @override
  @JsonKey(name: "expired_in_days")
  int? get expiredInDays;
  @override
  @JsonKey(name: "is_expired")
  bool? get isExpired;
  @override
  @JsonKey(name: "subscription")
  VipSubscribeModel? get subscription;
  @override
  @JsonKey(ignore: true)
  _$$_VipSubscribeModelCopyWith<_$_VipSubscribeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
