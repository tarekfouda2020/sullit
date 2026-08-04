// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'seller_shipping_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SellerShippingModel _$SellerShippingModelFromJson(Map<String, dynamic> json) {
  return _SellerShippingModel.fromJson(json);
}

/// @nodoc
mixin _$SellerShippingModel {
  String get name => throw _privateConstructorUsedError;
  List<CartItemModel>? get items => throw _privateConstructorUsedError;
  bool get physical => throw _privateConstructorUsedError;
  @JsonKey(name: "active_pickup")
  bool get activePickUp => throw _privateConstructorUsedError;
  PickUpModel? get pickup => throw _privateConstructorUsedError;
  @JsonKey(name: 'active_delivery')
  bool get activeDelivery => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_message')
  String get deliveryMessage => throw _privateConstructorUsedError;
  DeliveryModel? get delivery => throw _privateConstructorUsedError;
  @JsonKey(name: "owner_id")
  int get ownerId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SellerShippingModelCopyWith<SellerShippingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SellerShippingModelCopyWith<$Res> {
  factory $SellerShippingModelCopyWith(
          SellerShippingModel value, $Res Function(SellerShippingModel) then) =
      _$SellerShippingModelCopyWithImpl<$Res, SellerShippingModel>;
  @useResult
  $Res call(
      {String name,
      List<CartItemModel>? items,
      bool physical,
      @JsonKey(name: "active_pickup") bool activePickUp,
      PickUpModel? pickup,
      @JsonKey(name: 'active_delivery') bool activeDelivery,
      @JsonKey(name: 'delivery_message') String deliveryMessage,
      DeliveryModel? delivery,
      @JsonKey(name: "owner_id") int ownerId});

  $PickUpModelCopyWith<$Res>? get pickup;
  $DeliveryModelCopyWith<$Res>? get delivery;
}

/// @nodoc
class _$SellerShippingModelCopyWithImpl<$Res, $Val extends SellerShippingModel>
    implements $SellerShippingModelCopyWith<$Res> {
  _$SellerShippingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? items = freezed,
    Object? physical = null,
    Object? activePickUp = null,
    Object? pickup = freezed,
    Object? activeDelivery = null,
    Object? deliveryMessage = null,
    Object? delivery = freezed,
    Object? ownerId = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CartItemModel>?,
      physical: null == physical
          ? _value.physical
          : physical // ignore: cast_nullable_to_non_nullable
              as bool,
      activePickUp: null == activePickUp
          ? _value.activePickUp
          : activePickUp // ignore: cast_nullable_to_non_nullable
              as bool,
      pickup: freezed == pickup
          ? _value.pickup
          : pickup // ignore: cast_nullable_to_non_nullable
              as PickUpModel?,
      activeDelivery: null == activeDelivery
          ? _value.activeDelivery
          : activeDelivery // ignore: cast_nullable_to_non_nullable
              as bool,
      deliveryMessage: null == deliveryMessage
          ? _value.deliveryMessage
          : deliveryMessage // ignore: cast_nullable_to_non_nullable
              as String,
      delivery: freezed == delivery
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as DeliveryModel?,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PickUpModelCopyWith<$Res>? get pickup {
    if (_value.pickup == null) {
      return null;
    }

    return $PickUpModelCopyWith<$Res>(_value.pickup!, (value) {
      return _then(_value.copyWith(pickup: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DeliveryModelCopyWith<$Res>? get delivery {
    if (_value.delivery == null) {
      return null;
    }

    return $DeliveryModelCopyWith<$Res>(_value.delivery!, (value) {
      return _then(_value.copyWith(delivery: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SellerShippingModelCopyWith<$Res>
    implements $SellerShippingModelCopyWith<$Res> {
  factory _$$_SellerShippingModelCopyWith(_$_SellerShippingModel value,
          $Res Function(_$_SellerShippingModel) then) =
      __$$_SellerShippingModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      List<CartItemModel>? items,
      bool physical,
      @JsonKey(name: "active_pickup") bool activePickUp,
      PickUpModel? pickup,
      @JsonKey(name: 'active_delivery') bool activeDelivery,
      @JsonKey(name: 'delivery_message') String deliveryMessage,
      DeliveryModel? delivery,
      @JsonKey(name: "owner_id") int ownerId});

  @override
  $PickUpModelCopyWith<$Res>? get pickup;
  @override
  $DeliveryModelCopyWith<$Res>? get delivery;
}

/// @nodoc
class __$$_SellerShippingModelCopyWithImpl<$Res>
    extends _$SellerShippingModelCopyWithImpl<$Res, _$_SellerShippingModel>
    implements _$$_SellerShippingModelCopyWith<$Res> {
  __$$_SellerShippingModelCopyWithImpl(_$_SellerShippingModel _value,
      $Res Function(_$_SellerShippingModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? items = freezed,
    Object? physical = null,
    Object? activePickUp = null,
    Object? pickup = freezed,
    Object? activeDelivery = null,
    Object? deliveryMessage = null,
    Object? delivery = freezed,
    Object? ownerId = null,
  }) {
    return _then(_$_SellerShippingModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CartItemModel>?,
      physical: null == physical
          ? _value.physical
          : physical // ignore: cast_nullable_to_non_nullable
              as bool,
      activePickUp: null == activePickUp
          ? _value.activePickUp
          : activePickUp // ignore: cast_nullable_to_non_nullable
              as bool,
      pickup: freezed == pickup
          ? _value.pickup
          : pickup // ignore: cast_nullable_to_non_nullable
              as PickUpModel?,
      activeDelivery: null == activeDelivery
          ? _value.activeDelivery
          : activeDelivery // ignore: cast_nullable_to_non_nullable
              as bool,
      deliveryMessage: null == deliveryMessage
          ? _value.deliveryMessage
          : deliveryMessage // ignore: cast_nullable_to_non_nullable
              as String,
      delivery: freezed == delivery
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as DeliveryModel?,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_SellerShippingModel extends _SellerShippingModel {
  const _$_SellerShippingModel(
      {required this.name,
      final List<CartItemModel>? items,
      required this.physical,
      @JsonKey(name: "active_pickup") required this.activePickUp,
      required this.pickup,
      @JsonKey(name: 'active_delivery') required this.activeDelivery,
      @JsonKey(name: 'delivery_message') required this.deliveryMessage,
      required this.delivery,
      @JsonKey(name: "owner_id") required this.ownerId})
      : _items = items,
        super._();

  factory _$_SellerShippingModel.fromJson(Map<String, dynamic> json) =>
      _$$_SellerShippingModelFromJson(json);

  @override
  final String name;
  final List<CartItemModel>? _items;
  @override
  List<CartItemModel>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool physical;
  @override
  @JsonKey(name: "active_pickup")
  final bool activePickUp;
  @override
  final PickUpModel? pickup;
  @override
  @JsonKey(name: 'active_delivery')
  final bool activeDelivery;
  @override
  @JsonKey(name: 'delivery_message')
  final String deliveryMessage;
  @override
  final DeliveryModel? delivery;
  @override
  @JsonKey(name: "owner_id")
  final int ownerId;

  @override
  String toString() {
    return 'SellerShippingModel(name: $name, items: $items, physical: $physical, activePickUp: $activePickUp, pickup: $pickup, activeDelivery: $activeDelivery, deliveryMessage: $deliveryMessage, delivery: $delivery, ownerId: $ownerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SellerShippingModel &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.physical, physical) ||
                other.physical == physical) &&
            (identical(other.activePickUp, activePickUp) ||
                other.activePickUp == activePickUp) &&
            (identical(other.pickup, pickup) || other.pickup == pickup) &&
            (identical(other.activeDelivery, activeDelivery) ||
                other.activeDelivery == activeDelivery) &&
            (identical(other.deliveryMessage, deliveryMessage) ||
                other.deliveryMessage == deliveryMessage) &&
            (identical(other.delivery, delivery) ||
                other.delivery == delivery) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      const DeepCollectionEquality().hash(_items),
      physical,
      activePickUp,
      pickup,
      activeDelivery,
      deliveryMessage,
      delivery,
      ownerId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SellerShippingModelCopyWith<_$_SellerShippingModel> get copyWith =>
      __$$_SellerShippingModelCopyWithImpl<_$_SellerShippingModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SellerShippingModelToJson(
      this,
    );
  }
}

abstract class _SellerShippingModel extends SellerShippingModel {
  const factory _SellerShippingModel(
      {required final String name,
      final List<CartItemModel>? items,
      required final bool physical,
      @JsonKey(name: "active_pickup") required final bool activePickUp,
      required final PickUpModel? pickup,
      @JsonKey(name: 'active_delivery') required final bool activeDelivery,
      @JsonKey(name: 'delivery_message') required final String deliveryMessage,
      required final DeliveryModel? delivery,
      @JsonKey(name: "owner_id")
      required final int ownerId}) = _$_SellerShippingModel;
  const _SellerShippingModel._() : super._();

  factory _SellerShippingModel.fromJson(Map<String, dynamic> json) =
      _$_SellerShippingModel.fromJson;

  @override
  String get name;
  @override
  List<CartItemModel>? get items;
  @override
  bool get physical;
  @override
  @JsonKey(name: "active_pickup")
  bool get activePickUp;
  @override
  PickUpModel? get pickup;
  @override
  @JsonKey(name: 'active_delivery')
  bool get activeDelivery;
  @override
  @JsonKey(name: 'delivery_message')
  String get deliveryMessage;
  @override
  DeliveryModel? get delivery;
  @override
  @JsonKey(name: "owner_id")
  int get ownerId;
  @override
  @JsonKey(ignore: true)
  _$$_SellerShippingModelCopyWith<_$_SellerShippingModel> get copyWith =>
      throw _privateConstructorUsedError;
}
