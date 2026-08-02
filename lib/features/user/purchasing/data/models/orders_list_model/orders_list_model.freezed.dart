// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrdersListModel _$OrdersListModelFromJson(Map<String, dynamic> json) {
  return _OrdersListModel.fromJson(json);
}

/// @nodoc
mixin _$OrdersListModel {
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
  String get soldByName => throw _privateConstructorUsedError;
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
  String get paymentMethodKey => throw _privateConstructorUsedError;
  @JsonKey(name: 'shipping_type')
  String get shippingType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrdersListModelCopyWith<OrdersListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersListModelCopyWith<$Res> {
  factory $OrdersListModelCopyWith(
          OrdersListModel value, $Res Function(OrdersListModel) then) =
      _$OrdersListModelCopyWithImpl<$Res, OrdersListModel>;
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
      @JsonKey(name: 'sold_by_name') String soldByName,
      @JsonKey(name: 'order_status') String orderStatus,
      @JsonKey(name: 'order_date') String orderDate,
      @JsonKey(name: 'payment_status') bool paymentStatus,
      @JsonKey(name: 'payment_status_text') String paymentStatusText,
      @JsonKey(name: 'payment_status_viewed') bool paymentStatusViewed,
      String total,
      @JsonKey(name: 'payment_method') String paymentMethod,
      @JsonKey(name: 'payment_method_key') String paymentMethodKey,
      @JsonKey(name: 'shipping_type') String shippingType});
}

/// @nodoc
class _$OrdersListModelCopyWithImpl<$Res, $Val extends OrdersListModel>
    implements $OrdersListModelCopyWith<$Res> {
  _$OrdersListModelCopyWithImpl(this._value, this._then);

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
    Object? soldByName = null,
    Object? orderStatus = null,
    Object? orderDate = null,
    Object? paymentStatus = null,
    Object? paymentStatusText = null,
    Object? paymentStatusViewed = null,
    Object? total = null,
    Object? paymentMethod = null,
    Object? paymentMethodKey = null,
    Object? shippingType = null,
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
      soldByName: null == soldByName
          ? _value.soldByName
          : soldByName // ignore: cast_nullable_to_non_nullable
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
      paymentMethodKey: null == paymentMethodKey
          ? _value.paymentMethodKey
          : paymentMethodKey // ignore: cast_nullable_to_non_nullable
              as String,
      shippingType: null == shippingType
          ? _value.shippingType
          : shippingType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrdersListModelCopyWith<$Res>
    implements $OrdersListModelCopyWith<$Res> {
  factory _$$_OrdersListModelCopyWith(
          _$_OrdersListModel value, $Res Function(_$_OrdersListModel) then) =
      __$$_OrdersListModelCopyWithImpl<$Res>;
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
      @JsonKey(name: 'sold_by_name') String soldByName,
      @JsonKey(name: 'order_status') String orderStatus,
      @JsonKey(name: 'order_date') String orderDate,
      @JsonKey(name: 'payment_status') bool paymentStatus,
      @JsonKey(name: 'payment_status_text') String paymentStatusText,
      @JsonKey(name: 'payment_status_viewed') bool paymentStatusViewed,
      String total,
      @JsonKey(name: 'payment_method') String paymentMethod,
      @JsonKey(name: 'payment_method_key') String paymentMethodKey,
      @JsonKey(name: 'shipping_type') String shippingType});
}

/// @nodoc
class __$$_OrdersListModelCopyWithImpl<$Res>
    extends _$OrdersListModelCopyWithImpl<$Res, _$_OrdersListModel>
    implements _$$_OrdersListModelCopyWith<$Res> {
  __$$_OrdersListModelCopyWithImpl(
      _$_OrdersListModel _value, $Res Function(_$_OrdersListModel) _then)
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
    Object? soldByName = null,
    Object? orderStatus = null,
    Object? orderDate = null,
    Object? paymentStatus = null,
    Object? paymentStatusText = null,
    Object? paymentStatusViewed = null,
    Object? total = null,
    Object? paymentMethod = null,
    Object? paymentMethodKey = null,
    Object? shippingType = null,
  }) {
    return _then(_$_OrdersListModel(
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
      soldByName: null == soldByName
          ? _value.soldByName
          : soldByName // ignore: cast_nullable_to_non_nullable
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
      paymentMethodKey: null == paymentMethodKey
          ? _value.paymentMethodKey
          : paymentMethodKey // ignore: cast_nullable_to_non_nullable
              as String,
      shippingType: null == shippingType
          ? _value.shippingType
          : shippingType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_OrdersListModel extends _OrdersListModel {
  const _$_OrdersListModel(
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
      @JsonKey(name: 'sold_by_name') required this.soldByName,
      @JsonKey(name: 'order_status') required this.orderStatus,
      @JsonKey(name: 'order_date') required this.orderDate,
      @JsonKey(name: 'payment_status') required this.paymentStatus,
      @JsonKey(name: 'payment_status_text') required this.paymentStatusText,
      @JsonKey(name: 'payment_status_viewed') required this.paymentStatusViewed,
      required this.total,
      @JsonKey(name: 'payment_method') required this.paymentMethod,
      @JsonKey(name: 'payment_method_key') required this.paymentMethodKey,
      @JsonKey(name: 'shipping_type') required this.shippingType})
      : super._();

  factory _$_OrdersListModel.fromJson(Map<String, dynamic> json) =>
      _$$_OrdersListModelFromJson(json);

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
  final String soldByName;
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
  final String paymentMethodKey;
  @override
  @JsonKey(name: 'shipping_type')
  final String shippingType;

  @override
  String toString() {
    return 'OrdersListModel(id: $id, code: $code, shopType: $shopType, isPendingReview: $isPendingReview, awaitingCustomerCompletion: $awaitingCustomerCompletion, requiresPrescriptionReview: $requiresPrescriptionReview, insuranceApplied: $insuranceApplied, orderType: $orderType, deliveryStatusConst: $deliveryStatusConst, deliveryStatus: $deliveryStatus, soldByType: $soldByType, soldByName: $soldByName, orderStatus: $orderStatus, orderDate: $orderDate, paymentStatus: $paymentStatus, paymentStatusText: $paymentStatusText, paymentStatusViewed: $paymentStatusViewed, total: $total, paymentMethod: $paymentMethod, paymentMethodKey: $paymentMethodKey, shippingType: $shippingType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrdersListModel &&
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
            (identical(other.soldByName, soldByName) ||
                other.soldByName == soldByName) &&
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
            (identical(other.paymentMethodKey, paymentMethodKey) ||
                other.paymentMethodKey == paymentMethodKey) &&
            (identical(other.shippingType, shippingType) ||
                other.shippingType == shippingType));
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
        soldByName,
        orderStatus,
        orderDate,
        paymentStatus,
        paymentStatusText,
        paymentStatusViewed,
        total,
        paymentMethod,
        paymentMethodKey,
        shippingType
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrdersListModelCopyWith<_$_OrdersListModel> get copyWith =>
      __$$_OrdersListModelCopyWithImpl<_$_OrdersListModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrdersListModelToJson(
      this,
    );
  }
}

abstract class _OrdersListModel extends OrdersListModel {
  const factory _OrdersListModel(
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
      @JsonKey(name: 'sold_by_name') required final String soldByName,
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
      required final String paymentMethodKey,
      @JsonKey(name: 'shipping_type')
      required final String shippingType}) = _$_OrdersListModel;
  const _OrdersListModel._() : super._();

  factory _OrdersListModel.fromJson(Map<String, dynamic> json) =
      _$_OrdersListModel.fromJson;

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
  String get soldByName;
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
  String get paymentMethodKey;
  @override
  @JsonKey(name: 'shipping_type')
  String get shippingType;
  @override
  @JsonKey(ignore: true)
  _$$_OrdersListModelCopyWith<_$_OrdersListModel> get copyWith =>
      throw _privateConstructorUsedError;
}
