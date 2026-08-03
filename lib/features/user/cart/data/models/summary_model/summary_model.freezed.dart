// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'summary_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SummaryModel _$SummaryModelFromJson(Map<String, dynamic> json) {
  return _SummaryModel.fromJson(json);
}

/// @nodoc
mixin _$SummaryModel {
  @JsonKey(name: 'order_date')
  String get orderDate => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'shipping_address')
  String get shippingAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_status')
  String get orderStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_order_amount')
  String get totalOrderAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'combined_order_id')
  int get combinedOrderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_items')
  int? get totalItems => throw _privateConstructorUsedError;
  @JsonKey(name: "expected_loyalty_points")
  int? get expectedLoyaltyPoints => throw _privateConstructorUsedError;
  String get shipping => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_method")
  String get paymentMethod => throw _privateConstructorUsedError;
  @JsonKey(name: "is_pending_review")
  bool? get isPendingReview => throw _privateConstructorUsedError;
  @JsonKey(name: "requires_prescription_review")
  bool? get requiresPrescriptionReview => throw _privateConstructorUsedError;
  @JsonKey(name: "awaiting_customer_completion")
  bool? get awaitingCustomerCompletion => throw _privateConstructorUsedError;
  @JsonKey(name: "insurance_applied")
  bool? get insuranceApplied => throw _privateConstructorUsedError;
  @JsonKey(name: "shop_type")
  String? get shopType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SummaryModelCopyWith<SummaryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SummaryModelCopyWith<$Res> {
  factory $SummaryModelCopyWith(
          SummaryModel value, $Res Function(SummaryModel) then) =
      _$SummaryModelCopyWithImpl<$Res, SummaryModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'order_date') String orderDate,
      String name,
      String? email,
      String? phone,
      @JsonKey(name: 'shipping_address') String shippingAddress,
      @JsonKey(name: 'order_status') String orderStatus,
      @JsonKey(name: 'total_order_amount') String totalOrderAmount,
      @JsonKey(name: 'combined_order_id') int combinedOrderId,
      @JsonKey(name: 'total_items') int? totalItems,
      @JsonKey(name: "expected_loyalty_points") int? expectedLoyaltyPoints,
      String shipping,
      @JsonKey(name: "payment_method") String paymentMethod,
      @JsonKey(name: "is_pending_review") bool? isPendingReview,
      @JsonKey(name: "requires_prescription_review")
      bool? requiresPrescriptionReview,
      @JsonKey(name: "awaiting_customer_completion")
      bool? awaitingCustomerCompletion,
      @JsonKey(name: "insurance_applied") bool? insuranceApplied,
      @JsonKey(name: "shop_type") String? shopType});
}

/// @nodoc
class _$SummaryModelCopyWithImpl<$Res, $Val extends SummaryModel>
    implements $SummaryModelCopyWith<$Res> {
  _$SummaryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderDate = null,
    Object? name = null,
    Object? email = freezed,
    Object? phone = freezed,
    Object? shippingAddress = null,
    Object? orderStatus = null,
    Object? totalOrderAmount = null,
    Object? combinedOrderId = null,
    Object? totalItems = freezed,
    Object? expectedLoyaltyPoints = freezed,
    Object? shipping = null,
    Object? paymentMethod = null,
    Object? isPendingReview = freezed,
    Object? requiresPrescriptionReview = freezed,
    Object? awaitingCustomerCompletion = freezed,
    Object? insuranceApplied = freezed,
    Object? shopType = freezed,
  }) {
    return _then(_value.copyWith(
      orderDate: null == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingAddress: null == shippingAddress
          ? _value.shippingAddress
          : shippingAddress // ignore: cast_nullable_to_non_nullable
              as String,
      orderStatus: null == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String,
      totalOrderAmount: null == totalOrderAmount
          ? _value.totalOrderAmount
          : totalOrderAmount // ignore: cast_nullable_to_non_nullable
              as String,
      combinedOrderId: null == combinedOrderId
          ? _value.combinedOrderId
          : combinedOrderId // ignore: cast_nullable_to_non_nullable
              as int,
      totalItems: freezed == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int?,
      expectedLoyaltyPoints: freezed == expectedLoyaltyPoints
          ? _value.expectedLoyaltyPoints
          : expectedLoyaltyPoints // ignore: cast_nullable_to_non_nullable
              as int?,
      shipping: null == shipping
          ? _value.shipping
          : shipping // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      isPendingReview: freezed == isPendingReview
          ? _value.isPendingReview
          : isPendingReview // ignore: cast_nullable_to_non_nullable
              as bool?,
      requiresPrescriptionReview: freezed == requiresPrescriptionReview
          ? _value.requiresPrescriptionReview
          : requiresPrescriptionReview // ignore: cast_nullable_to_non_nullable
              as bool?,
      awaitingCustomerCompletion: freezed == awaitingCustomerCompletion
          ? _value.awaitingCustomerCompletion
          : awaitingCustomerCompletion // ignore: cast_nullable_to_non_nullable
              as bool?,
      insuranceApplied: freezed == insuranceApplied
          ? _value.insuranceApplied
          : insuranceApplied // ignore: cast_nullable_to_non_nullable
              as bool?,
      shopType: freezed == shopType
          ? _value.shopType
          : shopType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SummaryModelCopyWith<$Res>
    implements $SummaryModelCopyWith<$Res> {
  factory _$$_SummaryModelCopyWith(
          _$_SummaryModel value, $Res Function(_$_SummaryModel) then) =
      __$$_SummaryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'order_date') String orderDate,
      String name,
      String? email,
      String? phone,
      @JsonKey(name: 'shipping_address') String shippingAddress,
      @JsonKey(name: 'order_status') String orderStatus,
      @JsonKey(name: 'total_order_amount') String totalOrderAmount,
      @JsonKey(name: 'combined_order_id') int combinedOrderId,
      @JsonKey(name: 'total_items') int? totalItems,
      @JsonKey(name: "expected_loyalty_points") int? expectedLoyaltyPoints,
      String shipping,
      @JsonKey(name: "payment_method") String paymentMethod,
      @JsonKey(name: "is_pending_review") bool? isPendingReview,
      @JsonKey(name: "requires_prescription_review")
      bool? requiresPrescriptionReview,
      @JsonKey(name: "awaiting_customer_completion")
      bool? awaitingCustomerCompletion,
      @JsonKey(name: "insurance_applied") bool? insuranceApplied,
      @JsonKey(name: "shop_type") String? shopType});
}

/// @nodoc
class __$$_SummaryModelCopyWithImpl<$Res>
    extends _$SummaryModelCopyWithImpl<$Res, _$_SummaryModel>
    implements _$$_SummaryModelCopyWith<$Res> {
  __$$_SummaryModelCopyWithImpl(
      _$_SummaryModel _value, $Res Function(_$_SummaryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderDate = null,
    Object? name = null,
    Object? email = freezed,
    Object? phone = freezed,
    Object? shippingAddress = null,
    Object? orderStatus = null,
    Object? totalOrderAmount = null,
    Object? combinedOrderId = null,
    Object? totalItems = freezed,
    Object? expectedLoyaltyPoints = freezed,
    Object? shipping = null,
    Object? paymentMethod = null,
    Object? isPendingReview = freezed,
    Object? requiresPrescriptionReview = freezed,
    Object? awaitingCustomerCompletion = freezed,
    Object? insuranceApplied = freezed,
    Object? shopType = freezed,
  }) {
    return _then(_$_SummaryModel(
      orderDate: null == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingAddress: null == shippingAddress
          ? _value.shippingAddress
          : shippingAddress // ignore: cast_nullable_to_non_nullable
              as String,
      orderStatus: null == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String,
      totalOrderAmount: null == totalOrderAmount
          ? _value.totalOrderAmount
          : totalOrderAmount // ignore: cast_nullable_to_non_nullable
              as String,
      combinedOrderId: null == combinedOrderId
          ? _value.combinedOrderId
          : combinedOrderId // ignore: cast_nullable_to_non_nullable
              as int,
      totalItems: freezed == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int?,
      expectedLoyaltyPoints: freezed == expectedLoyaltyPoints
          ? _value.expectedLoyaltyPoints
          : expectedLoyaltyPoints // ignore: cast_nullable_to_non_nullable
              as int?,
      shipping: null == shipping
          ? _value.shipping
          : shipping // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      isPendingReview: freezed == isPendingReview
          ? _value.isPendingReview
          : isPendingReview // ignore: cast_nullable_to_non_nullable
              as bool?,
      requiresPrescriptionReview: freezed == requiresPrescriptionReview
          ? _value.requiresPrescriptionReview
          : requiresPrescriptionReview // ignore: cast_nullable_to_non_nullable
              as bool?,
      awaitingCustomerCompletion: freezed == awaitingCustomerCompletion
          ? _value.awaitingCustomerCompletion
          : awaitingCustomerCompletion // ignore: cast_nullable_to_non_nullable
              as bool?,
      insuranceApplied: freezed == insuranceApplied
          ? _value.insuranceApplied
          : insuranceApplied // ignore: cast_nullable_to_non_nullable
              as bool?,
      shopType: freezed == shopType
          ? _value.shopType
          : shopType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_SummaryModel extends _SummaryModel {
  const _$_SummaryModel(
      {@JsonKey(name: 'order_date') required this.orderDate,
      required this.name,
      required this.email,
      this.phone,
      @JsonKey(name: 'shipping_address') required this.shippingAddress,
      @JsonKey(name: 'order_status') required this.orderStatus,
      @JsonKey(name: 'total_order_amount') required this.totalOrderAmount,
      @JsonKey(name: 'combined_order_id') required this.combinedOrderId,
      @JsonKey(name: 'total_items') this.totalItems,
      @JsonKey(name: "expected_loyalty_points") this.expectedLoyaltyPoints,
      required this.shipping,
      @JsonKey(name: "payment_method") required this.paymentMethod,
      @JsonKey(name: "is_pending_review") this.isPendingReview,
      @JsonKey(name: "requires_prescription_review")
      this.requiresPrescriptionReview,
      @JsonKey(name: "awaiting_customer_completion")
      this.awaitingCustomerCompletion,
      @JsonKey(name: "insurance_applied") this.insuranceApplied,
      @JsonKey(name: "shop_type") this.shopType})
      : super._();

  factory _$_SummaryModel.fromJson(Map<String, dynamic> json) =>
      _$$_SummaryModelFromJson(json);

  @override
  @JsonKey(name: 'order_date')
  final String orderDate;
  @override
  final String name;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  @JsonKey(name: 'shipping_address')
  final String shippingAddress;
  @override
  @JsonKey(name: 'order_status')
  final String orderStatus;
  @override
  @JsonKey(name: 'total_order_amount')
  final String totalOrderAmount;
  @override
  @JsonKey(name: 'combined_order_id')
  final int combinedOrderId;
  @override
  @JsonKey(name: 'total_items')
  final int? totalItems;
  @override
  @JsonKey(name: "expected_loyalty_points")
  final int? expectedLoyaltyPoints;
  @override
  final String shipping;
  @override
  @JsonKey(name: "payment_method")
  final String paymentMethod;
  @override
  @JsonKey(name: "is_pending_review")
  final bool? isPendingReview;
  @override
  @JsonKey(name: "requires_prescription_review")
  final bool? requiresPrescriptionReview;
  @override
  @JsonKey(name: "awaiting_customer_completion")
  final bool? awaitingCustomerCompletion;
  @override
  @JsonKey(name: "insurance_applied")
  final bool? insuranceApplied;
  @override
  @JsonKey(name: "shop_type")
  final String? shopType;

  @override
  String toString() {
    return 'SummaryModel(orderDate: $orderDate, name: $name, email: $email, phone: $phone, shippingAddress: $shippingAddress, orderStatus: $orderStatus, totalOrderAmount: $totalOrderAmount, combinedOrderId: $combinedOrderId, totalItems: $totalItems, expectedLoyaltyPoints: $expectedLoyaltyPoints, shipping: $shipping, paymentMethod: $paymentMethod, isPendingReview: $isPendingReview, requiresPrescriptionReview: $requiresPrescriptionReview, awaitingCustomerCompletion: $awaitingCustomerCompletion, insuranceApplied: $insuranceApplied, shopType: $shopType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SummaryModel &&
            (identical(other.orderDate, orderDate) ||
                other.orderDate == orderDate) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.shippingAddress, shippingAddress) ||
                other.shippingAddress == shippingAddress) &&
            (identical(other.orderStatus, orderStatus) ||
                other.orderStatus == orderStatus) &&
            (identical(other.totalOrderAmount, totalOrderAmount) ||
                other.totalOrderAmount == totalOrderAmount) &&
            (identical(other.combinedOrderId, combinedOrderId) ||
                other.combinedOrderId == combinedOrderId) &&
            (identical(other.totalItems, totalItems) ||
                other.totalItems == totalItems) &&
            (identical(other.expectedLoyaltyPoints, expectedLoyaltyPoints) ||
                other.expectedLoyaltyPoints == expectedLoyaltyPoints) &&
            (identical(other.shipping, shipping) ||
                other.shipping == shipping) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.isPendingReview, isPendingReview) ||
                other.isPendingReview == isPendingReview) &&
            (identical(other.requiresPrescriptionReview,
                    requiresPrescriptionReview) ||
                other.requiresPrescriptionReview ==
                    requiresPrescriptionReview) &&
            (identical(other.awaitingCustomerCompletion,
                    awaitingCustomerCompletion) ||
                other.awaitingCustomerCompletion ==
                    awaitingCustomerCompletion) &&
            (identical(other.insuranceApplied, insuranceApplied) ||
                other.insuranceApplied == insuranceApplied) &&
            (identical(other.shopType, shopType) ||
                other.shopType == shopType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      orderDate,
      name,
      email,
      phone,
      shippingAddress,
      orderStatus,
      totalOrderAmount,
      combinedOrderId,
      totalItems,
      expectedLoyaltyPoints,
      shipping,
      paymentMethod,
      isPendingReview,
      requiresPrescriptionReview,
      awaitingCustomerCompletion,
      insuranceApplied,
      shopType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SummaryModelCopyWith<_$_SummaryModel> get copyWith =>
      __$$_SummaryModelCopyWithImpl<_$_SummaryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SummaryModelToJson(
      this,
    );
  }
}

abstract class _SummaryModel extends SummaryModel {
  const factory _SummaryModel(
      {@JsonKey(name: 'order_date') required final String orderDate,
      required final String name,
      required final String? email,
      final String? phone,
      @JsonKey(name: 'shipping_address') required final String shippingAddress,
      @JsonKey(name: 'order_status') required final String orderStatus,
      @JsonKey(name: 'total_order_amount')
      required final String totalOrderAmount,
      @JsonKey(name: 'combined_order_id') required final int combinedOrderId,
      @JsonKey(name: 'total_items') final int? totalItems,
      @JsonKey(name: "expected_loyalty_points")
      final int? expectedLoyaltyPoints,
      required final String shipping,
      @JsonKey(name: "payment_method") required final String paymentMethod,
      @JsonKey(name: "is_pending_review") final bool? isPendingReview,
      @JsonKey(name: "requires_prescription_review")
      final bool? requiresPrescriptionReview,
      @JsonKey(name: "awaiting_customer_completion")
      final bool? awaitingCustomerCompletion,
      @JsonKey(name: "insurance_applied") final bool? insuranceApplied,
      @JsonKey(name: "shop_type") final String? shopType}) = _$_SummaryModel;
  const _SummaryModel._() : super._();

  factory _SummaryModel.fromJson(Map<String, dynamic> json) =
      _$_SummaryModel.fromJson;

  @override
  @JsonKey(name: 'order_date')
  String get orderDate;
  @override
  String get name;
  @override
  String? get email;
  @override
  String? get phone;
  @override
  @JsonKey(name: 'shipping_address')
  String get shippingAddress;
  @override
  @JsonKey(name: 'order_status')
  String get orderStatus;
  @override
  @JsonKey(name: 'total_order_amount')
  String get totalOrderAmount;
  @override
  @JsonKey(name: 'combined_order_id')
  int get combinedOrderId;
  @override
  @JsonKey(name: 'total_items')
  int? get totalItems;
  @override
  @JsonKey(name: "expected_loyalty_points")
  int? get expectedLoyaltyPoints;
  @override
  String get shipping;
  @override
  @JsonKey(name: "payment_method")
  String get paymentMethod;
  @override
  @JsonKey(name: "is_pending_review")
  bool? get isPendingReview;
  @override
  @JsonKey(name: "requires_prescription_review")
  bool? get requiresPrescriptionReview;
  @override
  @JsonKey(name: "awaiting_customer_completion")
  bool? get awaitingCustomerCompletion;
  @override
  @JsonKey(name: "insurance_applied")
  bool? get insuranceApplied;
  @override
  @JsonKey(name: "shop_type")
  String? get shopType;
  @override
  @JsonKey(ignore: true)
  _$$_SummaryModelCopyWith<_$_SummaryModel> get copyWith =>
      throw _privateConstructorUsedError;
}
