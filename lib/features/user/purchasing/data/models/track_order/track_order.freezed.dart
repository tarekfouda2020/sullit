// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'track_order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TrackOrder _$TrackOrderFromJson(Map<String, dynamic> json) {
  return _TrackOrder.fromJson(json);
}

/// @nodoc
mixin _$TrackOrder {
  int get id => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: "is_completed")
  bool get isCompleted => throw _privateConstructorUsedError;
  @JsonKey(name: "order_type")
  String get orderType => throw _privateConstructorUsedError;
  List<OrderStatus> get tracking => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrackOrderCopyWith<TrackOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackOrderCopyWith<$Res> {
  factory $TrackOrderCopyWith(
          TrackOrder value, $Res Function(TrackOrder) then) =
      _$TrackOrderCopyWithImpl<$Res, TrackOrder>;
  @useResult
  $Res call(
      {int id,
      String code,
      @JsonKey(name: "is_completed") bool isCompleted,
      @JsonKey(name: "order_type") String orderType,
      List<OrderStatus> tracking});
}

/// @nodoc
class _$TrackOrderCopyWithImpl<$Res, $Val extends TrackOrder>
    implements $TrackOrderCopyWith<$Res> {
  _$TrackOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? isCompleted = null,
    Object? orderType = null,
    Object? tracking = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      orderType: null == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as String,
      tracking: null == tracking
          ? _value.tracking
          : tracking // ignore: cast_nullable_to_non_nullable
              as List<OrderStatus>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TrackOrderCopyWith<$Res>
    implements $TrackOrderCopyWith<$Res> {
  factory _$$_TrackOrderCopyWith(
          _$_TrackOrder value, $Res Function(_$_TrackOrder) then) =
      __$$_TrackOrderCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String code,
      @JsonKey(name: "is_completed") bool isCompleted,
      @JsonKey(name: "order_type") String orderType,
      List<OrderStatus> tracking});
}

/// @nodoc
class __$$_TrackOrderCopyWithImpl<$Res>
    extends _$TrackOrderCopyWithImpl<$Res, _$_TrackOrder>
    implements _$$_TrackOrderCopyWith<$Res> {
  __$$_TrackOrderCopyWithImpl(
      _$_TrackOrder _value, $Res Function(_$_TrackOrder) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? isCompleted = null,
    Object? orderType = null,
    Object? tracking = null,
  }) {
    return _then(_$_TrackOrder(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      orderType: null == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as String,
      tracking: null == tracking
          ? _value._tracking
          : tracking // ignore: cast_nullable_to_non_nullable
              as List<OrderStatus>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_TrackOrder extends _TrackOrder {
  _$_TrackOrder(
      {required this.id,
      required this.code,
      @JsonKey(name: "is_completed") required this.isCompleted,
      @JsonKey(name: "order_type") required this.orderType,
      required final List<OrderStatus> tracking})
      : _tracking = tracking,
        super._();

  factory _$_TrackOrder.fromJson(Map<String, dynamic> json) =>
      _$$_TrackOrderFromJson(json);

  @override
  final int id;
  @override
  final String code;
  @override
  @JsonKey(name: "is_completed")
  final bool isCompleted;
  @override
  @JsonKey(name: "order_type")
  final String orderType;
  final List<OrderStatus> _tracking;
  @override
  List<OrderStatus> get tracking {
    if (_tracking is EqualUnmodifiableListView) return _tracking;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tracking);
  }

  @override
  String toString() {
    return 'TrackOrder(id: $id, code: $code, isCompleted: $isCompleted, orderType: $orderType, tracking: $tracking)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TrackOrder &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.orderType, orderType) ||
                other.orderType == orderType) &&
            const DeepCollectionEquality().equals(other._tracking, _tracking));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, code, isCompleted, orderType,
      const DeepCollectionEquality().hash(_tracking));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TrackOrderCopyWith<_$_TrackOrder> get copyWith =>
      __$$_TrackOrderCopyWithImpl<_$_TrackOrder>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TrackOrderToJson(
      this,
    );
  }
}

abstract class _TrackOrder extends TrackOrder {
  factory _TrackOrder(
      {required final int id,
      required final String code,
      @JsonKey(name: "is_completed") required final bool isCompleted,
      @JsonKey(name: "order_type") required final String orderType,
      required final List<OrderStatus> tracking}) = _$_TrackOrder;
  _TrackOrder._() : super._();

  factory _TrackOrder.fromJson(Map<String, dynamic> json) =
      _$_TrackOrder.fromJson;

  @override
  int get id;
  @override
  String get code;
  @override
  @JsonKey(name: "is_completed")
  bool get isCompleted;
  @override
  @JsonKey(name: "order_type")
  String get orderType;
  @override
  List<OrderStatus> get tracking;
  @override
  @JsonKey(ignore: true)
  _$$_TrackOrderCopyWith<_$_TrackOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderStatus _$OrderStatusFromJson(Map<String, dynamic> json) {
  return _OrderStatus.fromJson(json);
}

/// @nodoc
mixin _$OrderStatus {
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderStatusCopyWith<OrderStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderStatusCopyWith<$Res> {
  factory $OrderStatusCopyWith(
          OrderStatus value, $Res Function(OrderStatus) then) =
      _$OrderStatusCopyWithImpl<$Res, OrderStatus>;
  @useResult
  $Res call({String status, @JsonKey(name: "created_at") String createdAt});
}

/// @nodoc
class _$OrderStatusCopyWithImpl<$Res, $Val extends OrderStatus>
    implements $OrderStatusCopyWith<$Res> {
  _$OrderStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrderStatusCopyWith<$Res>
    implements $OrderStatusCopyWith<$Res> {
  factory _$$_OrderStatusCopyWith(
          _$_OrderStatus value, $Res Function(_$_OrderStatus) then) =
      __$$_OrderStatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, @JsonKey(name: "created_at") String createdAt});
}

/// @nodoc
class __$$_OrderStatusCopyWithImpl<$Res>
    extends _$OrderStatusCopyWithImpl<$Res, _$_OrderStatus>
    implements _$$_OrderStatusCopyWith<$Res> {
  __$$_OrderStatusCopyWithImpl(
      _$_OrderStatus _value, $Res Function(_$_OrderStatus) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? createdAt = null,
  }) {
    return _then(_$_OrderStatus(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_OrderStatus extends _OrderStatus {
  _$_OrderStatus(
      {required this.status,
      @JsonKey(name: "created_at") required this.createdAt})
      : super._();

  factory _$_OrderStatus.fromJson(Map<String, dynamic> json) =>
      _$$_OrderStatusFromJson(json);

  @override
  final String status;
  @override
  @JsonKey(name: "created_at")
  final String createdAt;

  @override
  String toString() {
    return 'OrderStatus(status: $status, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderStatus &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderStatusCopyWith<_$_OrderStatus> get copyWith =>
      __$$_OrderStatusCopyWithImpl<_$_OrderStatus>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderStatusToJson(
      this,
    );
  }
}

abstract class _OrderStatus extends OrderStatus {
  factory _OrderStatus(
          {required final String status,
          @JsonKey(name: "created_at") required final String createdAt}) =
      _$_OrderStatus;
  _OrderStatus._() : super._();

  factory _OrderStatus.fromJson(Map<String, dynamic> json) =
      _$_OrderStatus.fromJson;

  @override
  String get status;
  @override
  @JsonKey(name: "created_at")
  String get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_OrderStatusCopyWith<_$_OrderStatus> get copyWith =>
      throw _privateConstructorUsedError;
}
