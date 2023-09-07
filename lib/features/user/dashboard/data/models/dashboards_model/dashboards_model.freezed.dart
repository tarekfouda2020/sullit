// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboards_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DashboardsModel _$DashboardsModelFromJson(Map<String, dynamic> json) {
  return _DashboardsModel.fromJson(json);
}

/// @nodoc
mixin _$DashboardsModel {
  @JsonKey(name: 'cart_products_count')
  int get cartCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'wishlist_products_count')
  int get wishlistCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'orders_products_count')
  int get ordersCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'default shipping_address')
  ShippingAddressModel? get defaultAddress =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DashboardsModelCopyWith<DashboardsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardsModelCopyWith<$Res> {
  factory $DashboardsModelCopyWith(
          DashboardsModel value, $Res Function(DashboardsModel) then) =
      _$DashboardsModelCopyWithImpl<$Res, DashboardsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'cart_products_count') int cartCount,
      @JsonKey(name: 'wishlist_products_count') int wishlistCount,
      @JsonKey(name: 'orders_products_count') int ordersCount,
      @JsonKey(name: 'default shipping_address')
      ShippingAddressModel? defaultAddress});

  $ShippingAddressModelCopyWith<$Res>? get defaultAddress;
}

/// @nodoc
class _$DashboardsModelCopyWithImpl<$Res, $Val extends DashboardsModel>
    implements $DashboardsModelCopyWith<$Res> {
  _$DashboardsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartCount = null,
    Object? wishlistCount = null,
    Object? ordersCount = null,
    Object? defaultAddress = freezed,
  }) {
    return _then(_value.copyWith(
      cartCount: null == cartCount
          ? _value.cartCount
          : cartCount // ignore: cast_nullable_to_non_nullable
              as int,
      wishlistCount: null == wishlistCount
          ? _value.wishlistCount
          : wishlistCount // ignore: cast_nullable_to_non_nullable
              as int,
      ordersCount: null == ordersCount
          ? _value.ordersCount
          : ordersCount // ignore: cast_nullable_to_non_nullable
              as int,
      defaultAddress: freezed == defaultAddress
          ? _value.defaultAddress
          : defaultAddress // ignore: cast_nullable_to_non_nullable
              as ShippingAddressModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ShippingAddressModelCopyWith<$Res>? get defaultAddress {
    if (_value.defaultAddress == null) {
      return null;
    }

    return $ShippingAddressModelCopyWith<$Res>(_value.defaultAddress!, (value) {
      return _then(_value.copyWith(defaultAddress: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DashboardsModelCopyWith<$Res>
    implements $DashboardsModelCopyWith<$Res> {
  factory _$$_DashboardsModelCopyWith(
          _$_DashboardsModel value, $Res Function(_$_DashboardsModel) then) =
      __$$_DashboardsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'cart_products_count') int cartCount,
      @JsonKey(name: 'wishlist_products_count') int wishlistCount,
      @JsonKey(name: 'orders_products_count') int ordersCount,
      @JsonKey(name: 'default shipping_address')
      ShippingAddressModel? defaultAddress});

  @override
  $ShippingAddressModelCopyWith<$Res>? get defaultAddress;
}

/// @nodoc
class __$$_DashboardsModelCopyWithImpl<$Res>
    extends _$DashboardsModelCopyWithImpl<$Res, _$_DashboardsModel>
    implements _$$_DashboardsModelCopyWith<$Res> {
  __$$_DashboardsModelCopyWithImpl(
      _$_DashboardsModel _value, $Res Function(_$_DashboardsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartCount = null,
    Object? wishlistCount = null,
    Object? ordersCount = null,
    Object? defaultAddress = freezed,
  }) {
    return _then(_$_DashboardsModel(
      cartCount: null == cartCount
          ? _value.cartCount
          : cartCount // ignore: cast_nullable_to_non_nullable
              as int,
      wishlistCount: null == wishlistCount
          ? _value.wishlistCount
          : wishlistCount // ignore: cast_nullable_to_non_nullable
              as int,
      ordersCount: null == ordersCount
          ? _value.ordersCount
          : ordersCount // ignore: cast_nullable_to_non_nullable
              as int,
      defaultAddress: freezed == defaultAddress
          ? _value.defaultAddress
          : defaultAddress // ignore: cast_nullable_to_non_nullable
              as ShippingAddressModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_DashboardsModel extends _DashboardsModel {
  const _$_DashboardsModel(
      {@JsonKey(name: 'cart_products_count') required this.cartCount,
      @JsonKey(name: 'wishlist_products_count') required this.wishlistCount,
      @JsonKey(name: 'orders_products_count') required this.ordersCount,
      @JsonKey(name: 'default shipping_address') this.defaultAddress})
      : super._();

  factory _$_DashboardsModel.fromJson(Map<String, dynamic> json) =>
      _$$_DashboardsModelFromJson(json);

  @override
  @JsonKey(name: 'cart_products_count')
  final int cartCount;
  @override
  @JsonKey(name: 'wishlist_products_count')
  final int wishlistCount;
  @override
  @JsonKey(name: 'orders_products_count')
  final int ordersCount;
  @override
  @JsonKey(name: 'default shipping_address')
  final ShippingAddressModel? defaultAddress;

  @override
  String toString() {
    return 'DashboardsModel(cartCount: $cartCount, wishlistCount: $wishlistCount, ordersCount: $ordersCount, defaultAddress: $defaultAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DashboardsModel &&
            (identical(other.cartCount, cartCount) ||
                other.cartCount == cartCount) &&
            (identical(other.wishlistCount, wishlistCount) ||
                other.wishlistCount == wishlistCount) &&
            (identical(other.ordersCount, ordersCount) ||
                other.ordersCount == ordersCount) &&
            (identical(other.defaultAddress, defaultAddress) ||
                other.defaultAddress == defaultAddress));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, cartCount, wishlistCount, ordersCount, defaultAddress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DashboardsModelCopyWith<_$_DashboardsModel> get copyWith =>
      __$$_DashboardsModelCopyWithImpl<_$_DashboardsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DashboardsModelToJson(
      this,
    );
  }
}

abstract class _DashboardsModel extends DashboardsModel {
  const factory _DashboardsModel(
      {@JsonKey(name: 'cart_products_count') required final int cartCount,
      @JsonKey(name: 'wishlist_products_count')
      required final int wishlistCount,
      @JsonKey(name: 'orders_products_count') required final int ordersCount,
      @JsonKey(name: 'default shipping_address')
      final ShippingAddressModel? defaultAddress}) = _$_DashboardsModel;
  const _DashboardsModel._() : super._();

  factory _DashboardsModel.fromJson(Map<String, dynamic> json) =
      _$_DashboardsModel.fromJson;

  @override
  @JsonKey(name: 'cart_products_count')
  int get cartCount;
  @override
  @JsonKey(name: 'wishlist_products_count')
  int get wishlistCount;
  @override
  @JsonKey(name: 'orders_products_count')
  int get ordersCount;
  @override
  @JsonKey(name: 'default shipping_address')
  ShippingAddressModel? get defaultAddress;
  @override
  @JsonKey(ignore: true)
  _$$_DashboardsModelCopyWith<_$_DashboardsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
