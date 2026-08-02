// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_card_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderCardModel _$OrderCardModelFromJson(Map<String, dynamic> json) {
  return _OrderCardModel.fromJson(json);
}

/// @nodoc
mixin _$OrderCardModel {
  int get id => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'shop_type')
  String get shopType => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_pending_review')
  bool get isPendingReview => throw _privateConstructorUsedError;
  @JsonKey(name: 'awaiting_customer_completion')
  bool get awaitingCustomerCompletion => throw _privateConstructorUsedError;
  @JsonKey(name: 'requires_prescription_review')
  bool get requiresPrescriptionReview => throw _privateConstructorUsedError;
  @JsonKey(name: 'insurance_applied')
  bool get insuranceApplied => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_type')
  String get orderType => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_status_const')
  String get deliveryStatusConst => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_status')
  String get deliveryStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'sold_by_type')
  String get soldByType => throw _privateConstructorUsedError;
  @JsonKey(name: 'sold_by_name')
  String get soldBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_status')
  String get orderStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_date')
  String get orderDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_status')
  bool get paymentStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_status_text')
  String get paymentStatusText => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_status_viewed')
  bool get paymentStatusViewed => throw _privateConstructorUsedError;
  String get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_method')
  String get paymentMethod => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_method_key')
  String get paymentMethodConst => throw _privateConstructorUsedError;
  @JsonKey(name: 'shipping_type')
  String get shippingType => throw _privateConstructorUsedError;
  @JsonKey(name: 'available_cancel_order')
  bool? get availableCancelOrder => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderCardModelCopyWith<OrderCardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCardModelCopyWith<$Res> {
  factory $OrderCardModelCopyWith(
          OrderCardModel value, $Res Function(OrderCardModel) then) =
      _$OrderCardModelCopyWithImpl<$Res, OrderCardModel>;
  @useResult
  $Res call(
      {int id,
      String code,
      @JsonKey(name: 'shop_type') String shopType,
      @JsonKey(name: 'is_pending_review') bool isPendingReview,
      @JsonKey(name: 'awaiting_customer_completion')
      bool awaitingCustomerCompletion,
      @JsonKey(name: 'requires_prescription_review')
      bool requiresPrescriptionReview,
      @JsonKey(name: 'insurance_applied') bool insuranceApplied,
      @JsonKey(name: 'order_type') String orderType,
      @JsonKey(name: 'delivery_status_const') String deliveryStatusConst,
      @JsonKey(name: 'delivery_status') String deliveryStatus,
      @JsonKey(name: 'sold_by_type') String soldByType,
      @JsonKey(name: 'sold_by_name') String soldBy,
      @JsonKey(name: 'order_status') String orderStatus,
      @JsonKey(name: 'order_date') String orderDate,
      @JsonKey(name: 'payment_status') bool paymentStatus,
      @JsonKey(name: 'payment_status_text') String paymentStatusText,
      @JsonKey(name: 'payment_status_viewed') bool paymentStatusViewed,
      String total,
      @JsonKey(name: 'payment_method') String paymentMethod,
      @JsonKey(name: 'payment_method_key') String paymentMethodConst,
      @JsonKey(name: 'shipping_type') String shippingType,
      @JsonKey(name: 'available_cancel_order') bool? availableCancelOrder});
}

/// @nodoc
class _$OrderCardModelCopyWithImpl<$Res, $Val extends OrderCardModel>
    implements $OrderCardModelCopyWith<$Res> {
  _$OrderCardModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? shopType = null,
    Object? isPendingReview = null,
    Object? awaitingCustomerCompletion = null,
    Object? requiresPrescriptionReview = null,
    Object? insuranceApplied = null,
    Object? orderType = null,
    Object? deliveryStatusConst = null,
    Object? deliveryStatus = null,
    Object? soldByType = null,
    Object? soldBy = null,
    Object? orderStatus = null,
    Object? orderDate = null,
    Object? paymentStatus = null,
    Object? paymentStatusText = null,
    Object? paymentStatusViewed = null,
    Object? total = null,
    Object? paymentMethod = null,
    Object? paymentMethodConst = null,
    Object? shippingType = null,
    Object? availableCancelOrder = freezed,
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
      shopType: null == shopType
          ? _value.shopType
          : shopType // ignore: cast_nullable_to_non_nullable
              as String,
      isPendingReview: null == isPendingReview
          ? _value.isPendingReview
          : isPendingReview // ignore: cast_nullable_to_non_nullable
              as bool,
      awaitingCustomerCompletion: null == awaitingCustomerCompletion
          ? _value.awaitingCustomerCompletion
          : awaitingCustomerCompletion // ignore: cast_nullable_to_non_nullable
              as bool,
      requiresPrescriptionReview: null == requiresPrescriptionReview
          ? _value.requiresPrescriptionReview
          : requiresPrescriptionReview // ignore: cast_nullable_to_non_nullable
              as bool,
      insuranceApplied: null == insuranceApplied
          ? _value.insuranceApplied
          : insuranceApplied // ignore: cast_nullable_to_non_nullable
              as bool,
      orderType: null == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryStatusConst: null == deliveryStatusConst
          ? _value.deliveryStatusConst
          : deliveryStatusConst // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryStatus: null == deliveryStatus
          ? _value.deliveryStatus
          : deliveryStatus // ignore: cast_nullable_to_non_nullable
              as String,
      soldByType: null == soldByType
          ? _value.soldByType
          : soldByType // ignore: cast_nullable_to_non_nullable
              as String,
      soldBy: null == soldBy
          ? _value.soldBy
          : soldBy // ignore: cast_nullable_to_non_nullable
              as String,
      orderStatus: null == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String,
      orderDate: null == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as String,
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      paymentStatusText: null == paymentStatusText
          ? _value.paymentStatusText
          : paymentStatusText // ignore: cast_nullable_to_non_nullable
              as String,
      paymentStatusViewed: null == paymentStatusViewed
          ? _value.paymentStatusViewed
          : paymentStatusViewed // ignore: cast_nullable_to_non_nullable
              as bool,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethodConst: null == paymentMethodConst
          ? _value.paymentMethodConst
          : paymentMethodConst // ignore: cast_nullable_to_non_nullable
              as String,
      shippingType: null == shippingType
          ? _value.shippingType
          : shippingType // ignore: cast_nullable_to_non_nullable
              as String,
      availableCancelOrder: freezed == availableCancelOrder
          ? _value.availableCancelOrder
          : availableCancelOrder // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrderCardModelCopyWith<$Res>
    implements $OrderCardModelCopyWith<$Res> {
  factory _$$_OrderCardModelCopyWith(
          _$_OrderCardModel value, $Res Function(_$_OrderCardModel) then) =
      __$$_OrderCardModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String code,
      @JsonKey(name: 'shop_type') String shopType,
      @JsonKey(name: 'is_pending_review') bool isPendingReview,
      @JsonKey(name: 'awaiting_customer_completion')
      bool awaitingCustomerCompletion,
      @JsonKey(name: 'requires_prescription_review')
      bool requiresPrescriptionReview,
      @JsonKey(name: 'insurance_applied') bool insuranceApplied,
      @JsonKey(name: 'order_type') String orderType,
      @JsonKey(name: 'delivery_status_const') String deliveryStatusConst,
      @JsonKey(name: 'delivery_status') String deliveryStatus,
      @JsonKey(name: 'sold_by_type') String soldByType,
      @JsonKey(name: 'sold_by_name') String soldBy,
      @JsonKey(name: 'order_status') String orderStatus,
      @JsonKey(name: 'order_date') String orderDate,
      @JsonKey(name: 'payment_status') bool paymentStatus,
      @JsonKey(name: 'payment_status_text') String paymentStatusText,
      @JsonKey(name: 'payment_status_viewed') bool paymentStatusViewed,
      String total,
      @JsonKey(name: 'payment_method') String paymentMethod,
      @JsonKey(name: 'payment_method_key') String paymentMethodConst,
      @JsonKey(name: 'shipping_type') String shippingType,
      @JsonKey(name: 'available_cancel_order') bool? availableCancelOrder});
}

/// @nodoc
class __$$_OrderCardModelCopyWithImpl<$Res>
    extends _$OrderCardModelCopyWithImpl<$Res, _$_OrderCardModel>
    implements _$$_OrderCardModelCopyWith<$Res> {
  __$$_OrderCardModelCopyWithImpl(
      _$_OrderCardModel _value, $Res Function(_$_OrderCardModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? shopType = null,
    Object? isPendingReview = null,
    Object? awaitingCustomerCompletion = null,
    Object? requiresPrescriptionReview = null,
    Object? insuranceApplied = null,
    Object? orderType = null,
    Object? deliveryStatusConst = null,
    Object? deliveryStatus = null,
    Object? soldByType = null,
    Object? soldBy = null,
    Object? orderStatus = null,
    Object? orderDate = null,
    Object? paymentStatus = null,
    Object? paymentStatusText = null,
    Object? paymentStatusViewed = null,
    Object? total = null,
    Object? paymentMethod = null,
    Object? paymentMethodConst = null,
    Object? shippingType = null,
    Object? availableCancelOrder = freezed,
  }) {
    return _then(_$_OrderCardModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      shopType: null == shopType
          ? _value.shopType
          : shopType // ignore: cast_nullable_to_non_nullable
              as String,
      isPendingReview: null == isPendingReview
          ? _value.isPendingReview
          : isPendingReview // ignore: cast_nullable_to_non_nullable
              as bool,
      awaitingCustomerCompletion: null == awaitingCustomerCompletion
          ? _value.awaitingCustomerCompletion
          : awaitingCustomerCompletion // ignore: cast_nullable_to_non_nullable
              as bool,
      requiresPrescriptionReview: null == requiresPrescriptionReview
          ? _value.requiresPrescriptionReview
          : requiresPrescriptionReview // ignore: cast_nullable_to_non_nullable
              as bool,
      insuranceApplied: null == insuranceApplied
          ? _value.insuranceApplied
          : insuranceApplied // ignore: cast_nullable_to_non_nullable
              as bool,
      orderType: null == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryStatusConst: null == deliveryStatusConst
          ? _value.deliveryStatusConst
          : deliveryStatusConst // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryStatus: null == deliveryStatus
          ? _value.deliveryStatus
          : deliveryStatus // ignore: cast_nullable_to_non_nullable
              as String,
      soldByType: null == soldByType
          ? _value.soldByType
          : soldByType // ignore: cast_nullable_to_non_nullable
              as String,
      soldBy: null == soldBy
          ? _value.soldBy
          : soldBy // ignore: cast_nullable_to_non_nullable
              as String,
      orderStatus: null == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String,
      orderDate: null == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as String,
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      paymentStatusText: null == paymentStatusText
          ? _value.paymentStatusText
          : paymentStatusText // ignore: cast_nullable_to_non_nullable
              as String,
      paymentStatusViewed: null == paymentStatusViewed
          ? _value.paymentStatusViewed
          : paymentStatusViewed // ignore: cast_nullable_to_non_nullable
              as bool,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethodConst: null == paymentMethodConst
          ? _value.paymentMethodConst
          : paymentMethodConst // ignore: cast_nullable_to_non_nullable
              as String,
      shippingType: null == shippingType
          ? _value.shippingType
          : shippingType // ignore: cast_nullable_to_non_nullable
              as String,
      availableCancelOrder: freezed == availableCancelOrder
          ? _value.availableCancelOrder
          : availableCancelOrder // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_OrderCardModel extends _OrderCardModel {
  const _$_OrderCardModel(
      {required this.id,
      required this.code,
      @JsonKey(name: 'shop_type') required this.shopType,
      @JsonKey(name: 'is_pending_review') required this.isPendingReview,
      @JsonKey(name: 'awaiting_customer_completion')
      required this.awaitingCustomerCompletion,
      @JsonKey(name: 'requires_prescription_review')
      required this.requiresPrescriptionReview,
      @JsonKey(name: 'insurance_applied') required this.insuranceApplied,
      @JsonKey(name: 'order_type') required this.orderType,
      @JsonKey(name: 'delivery_status_const') required this.deliveryStatusConst,
      @JsonKey(name: 'delivery_status') required this.deliveryStatus,
      @JsonKey(name: 'sold_by_type') required this.soldByType,
      @JsonKey(name: 'sold_by_name') required this.soldBy,
      @JsonKey(name: 'order_status') required this.orderStatus,
      @JsonKey(name: 'order_date') required this.orderDate,
      @JsonKey(name: 'payment_status') required this.paymentStatus,
      @JsonKey(name: 'payment_status_text') required this.paymentStatusText,
      @JsonKey(name: 'payment_status_viewed') required this.paymentStatusViewed,
      required this.total,
      @JsonKey(name: 'payment_method') required this.paymentMethod,
      @JsonKey(name: 'payment_method_key') required this.paymentMethodConst,
      @JsonKey(name: 'shipping_type') required this.shippingType,
      @JsonKey(name: 'available_cancel_order') this.availableCancelOrder})
      : super._();

  factory _$_OrderCardModel.fromJson(Map<String, dynamic> json) =>
      _$$_OrderCardModelFromJson(json);

  @override
  final int id;
  @override
  final String code;
  @override
  @JsonKey(name: 'shop_type')
  final String shopType;
  @override
  @JsonKey(name: 'is_pending_review')
  final bool isPendingReview;
  @override
  @JsonKey(name: 'awaiting_customer_completion')
  final bool awaitingCustomerCompletion;
  @override
  @JsonKey(name: 'requires_prescription_review')
  final bool requiresPrescriptionReview;
  @override
  @JsonKey(name: 'insurance_applied')
  final bool insuranceApplied;
  @override
  @JsonKey(name: 'order_type')
  final String orderType;
  @override
  @JsonKey(name: 'delivery_status_const')
  final String deliveryStatusConst;
  @override
  @JsonKey(name: 'delivery_status')
  final String deliveryStatus;
  @override
  @JsonKey(name: 'sold_by_type')
  final String soldByType;
  @override
  @JsonKey(name: 'sold_by_name')
  final String soldBy;
  @override
  @JsonKey(name: 'order_status')
  final String orderStatus;
  @override
  @JsonKey(name: 'order_date')
  final String orderDate;
  @override
  @JsonKey(name: 'payment_status')
  final bool paymentStatus;
  @override
  @JsonKey(name: 'payment_status_text')
  final String paymentStatusText;
  @override
  @JsonKey(name: 'payment_status_viewed')
  final bool paymentStatusViewed;
  @override
  final String total;
  @override
  @JsonKey(name: 'payment_method')
  final String paymentMethod;
  @override
  @JsonKey(name: 'payment_method_key')
  final String paymentMethodConst;
  @override
  @JsonKey(name: 'shipping_type')
  final String shippingType;
  @override
  @JsonKey(name: 'available_cancel_order')
  final bool? availableCancelOrder;

  @override
  String toString() {
    return 'OrderCardModel(id: $id, code: $code, shopType: $shopType, isPendingReview: $isPendingReview, awaitingCustomerCompletion: $awaitingCustomerCompletion, requiresPrescriptionReview: $requiresPrescriptionReview, insuranceApplied: $insuranceApplied, orderType: $orderType, deliveryStatusConst: $deliveryStatusConst, deliveryStatus: $deliveryStatus, soldByType: $soldByType, soldBy: $soldBy, orderStatus: $orderStatus, orderDate: $orderDate, paymentStatus: $paymentStatus, paymentStatusText: $paymentStatusText, paymentStatusViewed: $paymentStatusViewed, total: $total, paymentMethod: $paymentMethod, paymentMethodConst: $paymentMethodConst, shippingType: $shippingType, availableCancelOrder: $availableCancelOrder)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderCardModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.shopType, shopType) ||
                other.shopType == shopType) &&
            (identical(other.isPendingReview, isPendingReview) ||
                other.isPendingReview == isPendingReview) &&
            (identical(other.awaitingCustomerCompletion,
                    awaitingCustomerCompletion) ||
                other.awaitingCustomerCompletion ==
                    awaitingCustomerCompletion) &&
            (identical(other.requiresPrescriptionReview,
                    requiresPrescriptionReview) ||
                other.requiresPrescriptionReview ==
                    requiresPrescriptionReview) &&
            (identical(other.insuranceApplied, insuranceApplied) ||
                other.insuranceApplied == insuranceApplied) &&
            (identical(other.orderType, orderType) ||
                other.orderType == orderType) &&
            (identical(other.deliveryStatusConst, deliveryStatusConst) ||
                other.deliveryStatusConst == deliveryStatusConst) &&
            (identical(other.deliveryStatus, deliveryStatus) ||
                other.deliveryStatus == deliveryStatus) &&
            (identical(other.soldByType, soldByType) ||
                other.soldByType == soldByType) &&
            (identical(other.soldBy, soldBy) || other.soldBy == soldBy) &&
            (identical(other.orderStatus, orderStatus) ||
                other.orderStatus == orderStatus) &&
            (identical(other.orderDate, orderDate) ||
                other.orderDate == orderDate) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.paymentStatusText, paymentStatusText) ||
                other.paymentStatusText == paymentStatusText) &&
            (identical(other.paymentStatusViewed, paymentStatusViewed) ||
                other.paymentStatusViewed == paymentStatusViewed) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.paymentMethodConst, paymentMethodConst) ||
                other.paymentMethodConst == paymentMethodConst) &&
            (identical(other.shippingType, shippingType) ||
                other.shippingType == shippingType) &&
            (identical(other.availableCancelOrder, availableCancelOrder) ||
                other.availableCancelOrder == availableCancelOrder));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        code,
        shopType,
        isPendingReview,
        awaitingCustomerCompletion,
        requiresPrescriptionReview,
        insuranceApplied,
        orderType,
        deliveryStatusConst,
        deliveryStatus,
        soldByType,
        soldBy,
        orderStatus,
        orderDate,
        paymentStatus,
        paymentStatusText,
        paymentStatusViewed,
        total,
        paymentMethod,
        paymentMethodConst,
        shippingType,
        availableCancelOrder
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderCardModelCopyWith<_$_OrderCardModel> get copyWith =>
      __$$_OrderCardModelCopyWithImpl<_$_OrderCardModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderCardModelToJson(
      this,
    );
  }
}

abstract class _OrderCardModel extends OrderCardModel {
  const factory _OrderCardModel(
      {required final int id,
      required final String code,
      @JsonKey(name: 'shop_type') required final String shopType,
      @JsonKey(name: 'is_pending_review') required final bool isPendingReview,
      @JsonKey(name: 'awaiting_customer_completion')
      required final bool awaitingCustomerCompletion,
      @JsonKey(name: 'requires_prescription_review')
      required final bool requiresPrescriptionReview,
      @JsonKey(name: 'insurance_applied') required final bool insuranceApplied,
      @JsonKey(name: 'order_type') required final String orderType,
      @JsonKey(name: 'delivery_status_const')
      required final String deliveryStatusConst,
      @JsonKey(name: 'delivery_status') required final String deliveryStatus,
      @JsonKey(name: 'sold_by_type') required final String soldByType,
      @JsonKey(name: 'sold_by_name') required final String soldBy,
      @JsonKey(name: 'order_status') required final String orderStatus,
      @JsonKey(name: 'order_date') required final String orderDate,
      @JsonKey(name: 'payment_status') required final bool paymentStatus,
      @JsonKey(name: 'payment_status_text')
      required final String paymentStatusText,
      @JsonKey(name: 'payment_status_viewed')
      required final bool paymentStatusViewed,
      required final String total,
      @JsonKey(name: 'payment_method') required final String paymentMethod,
      @JsonKey(name: 'payment_method_key')
      required final String paymentMethodConst,
      @JsonKey(name: 'shipping_type') required final String shippingType,
      @JsonKey(name: 'available_cancel_order')
      final bool? availableCancelOrder}) = _$_OrderCardModel;
  const _OrderCardModel._() : super._();

  factory _OrderCardModel.fromJson(Map<String, dynamic> json) =
      _$_OrderCardModel.fromJson;

  @override
  int get id;
  @override
  String get code;
  @override
  @JsonKey(name: 'shop_type')
  String get shopType;
  @override
  @JsonKey(name: 'is_pending_review')
  bool get isPendingReview;
  @override
  @JsonKey(name: 'awaiting_customer_completion')
  bool get awaitingCustomerCompletion;
  @override
  @JsonKey(name: 'requires_prescription_review')
  bool get requiresPrescriptionReview;
  @override
  @JsonKey(name: 'insurance_applied')
  bool get insuranceApplied;
  @override
  @JsonKey(name: 'order_type')
  String get orderType;
  @override
  @JsonKey(name: 'delivery_status_const')
  String get deliveryStatusConst;
  @override
  @JsonKey(name: 'delivery_status')
  String get deliveryStatus;
  @override
  @JsonKey(name: 'sold_by_type')
  String get soldByType;
  @override
  @JsonKey(name: 'sold_by_name')
  String get soldBy;
  @override
  @JsonKey(name: 'order_status')
  String get orderStatus;
  @override
  @JsonKey(name: 'order_date')
  String get orderDate;
  @override
  @JsonKey(name: 'payment_status')
  bool get paymentStatus;
  @override
  @JsonKey(name: 'payment_status_text')
  String get paymentStatusText;
  @override
  @JsonKey(name: 'payment_status_viewed')
  bool get paymentStatusViewed;
  @override
  String get total;
  @override
  @JsonKey(name: 'payment_method')
  String get paymentMethod;
  @override
  @JsonKey(name: 'payment_method_key')
  String get paymentMethodConst;
  @override
  @JsonKey(name: 'shipping_type')
  String get shippingType;
  @override
  @JsonKey(name: 'available_cancel_order')
  bool? get availableCancelOrder;
  @override
  @JsonKey(ignore: true)
  _$$_OrderCardModelCopyWith<_$_OrderCardModel> get copyWith =>
      throw _privateConstructorUsedError;
}
