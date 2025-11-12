// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderModel _$OrderModelFromJson(Map<String, dynamic> json) {
  return _OrderModel.fromJson(json);
}

/// @nodoc
mixin _$OrderModel {
  int get id => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_type')
  String get orderType => throw _privateConstructorUsedError;
  @JsonKey(name: 'available_return_order')
  bool get availableReturnOrder => throw _privateConstructorUsedError;
  @JsonKey(name: 'show_button_pay')
  bool get showButtonPay => throw _privateConstructorUsedError;
  String get subtotal => throw _privateConstructorUsedError;
  String get shipping => throw _privateConstructorUsedError;
  String get tax => throw _privateConstructorUsedError;
  @JsonKey(name: 'coupon_discount')
  String get couponDiscount => throw _privateConstructorUsedError;
  String get total => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_status_const')
  String get deliveryStatusConst => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_status')
  String get deliveryStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_viewed')
  bool get deliveryViewed => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_status_viewed')
  bool get paymentStatusViewed => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_status')
  bool get paymentStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_status_text')
  String get paymentStatusText => throw _privateConstructorUsedError;
  @JsonKey(name: 'available_cancel_order')
  bool get availableCancelOrder => throw _privateConstructorUsedError;
  @JsonKey(name: 'additional_info')
  String get additionalInfo => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_method')
  String get paymentMethod => throw _privateConstructorUsedError;
  @JsonKey(name: 'shipping_method')
  String get shippingMethod => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_status')
  String get orderStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_date')
  String get orderDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'shipping_address')
  String get shippingAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_name')
  String get customerName => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_email')
  String get customerEmail => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_phone')
  String get customerPhone => throw _privateConstructorUsedError;
  @JsonKey(name: 'return_reason')
  String get returnReason => throw _privateConstructorUsedError;
  @JsonKey(name: 'sold_by_type')
  String get soldByType => throw _privateConstructorUsedError;
  @JsonKey(name: 'sold_by_name')
  String get soldBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'loyalty_points_value')
  String get loyaltyPointsValue => throw _privateConstructorUsedError;
  @JsonKey(name: 'loyalty_points_applied')
  bool get loyaltyPointsApplied => throw _privateConstructorUsedError;
  @JsonKey(name: 'loyalty_points')
  int get loyaltyPoints => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_items')
  int get totalItems => throw _privateConstructorUsedError;
  @JsonKey(name: 'expected_loyalty_points')
  int get expectedLoyaltyPoints => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_details')
  List<OrderDetailsModel> get orderDetails =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'service_fees')
  String get serviceFees => throw _privateConstructorUsedError;
  @JsonKey(name: 'technology_fees')
  String get technologyFees => throw _privateConstructorUsedError;
  @JsonKey(name: 'environment_fees')
  String get environmentFees => throw _privateConstructorUsedError;
  @JsonKey(name: 'vat_fee_amount')
  String get vatFeeAmount => throw _privateConstructorUsedError;

  /// total of fees with there *vat => (vatFeeAmount)*
  @JsonKey(name: 'total_fee_amount')
  String get totalFeeAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'driver_notes')
  String get driverNotes => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_instructions')
  List<DeliveryInstruction> get deliveryInstructions =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'driver')
  OrderDriverModel? get driver => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderModelCopyWith<OrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderModelCopyWith<$Res> {
  factory $OrderModelCopyWith(
          OrderModel value, $Res Function(OrderModel) then) =
      _$OrderModelCopyWithImpl<$Res, OrderModel>;
  @useResult
  $Res call(
      {int id,
      String code,
      @JsonKey(name: 'order_type') String orderType,
      @JsonKey(name: 'available_return_order') bool availableReturnOrder,
      @JsonKey(name: 'show_button_pay') bool showButtonPay,
      String subtotal,
      String shipping,
      String tax,
      @JsonKey(name: 'coupon_discount') String couponDiscount,
      String total,
      String date,
      @JsonKey(name: 'delivery_status_const') String deliveryStatusConst,
      @JsonKey(name: 'delivery_status') String deliveryStatus,
      @JsonKey(name: 'delivery_viewed') bool deliveryViewed,
      @JsonKey(name: 'payment_status_viewed') bool paymentStatusViewed,
      @JsonKey(name: 'payment_status') bool paymentStatus,
      @JsonKey(name: 'payment_status_text') String paymentStatusText,
      @JsonKey(name: 'available_cancel_order') bool availableCancelOrder,
      @JsonKey(name: 'additional_info') String additionalInfo,
      @JsonKey(name: 'payment_method') String paymentMethod,
      @JsonKey(name: 'shipping_method') String shippingMethod,
      @JsonKey(name: 'order_status') String orderStatus,
      @JsonKey(name: 'order_date') String orderDate,
      @JsonKey(name: 'shipping_address') String shippingAddress,
      @JsonKey(name: 'customer_name') String customerName,
      @JsonKey(name: 'customer_email') String customerEmail,
      @JsonKey(name: 'customer_phone') String customerPhone,
      @JsonKey(name: 'return_reason') String returnReason,
      @JsonKey(name: 'sold_by_type') String soldByType,
      @JsonKey(name: 'sold_by_name') String soldBy,
      @JsonKey(name: 'loyalty_points_value') String loyaltyPointsValue,
      @JsonKey(name: 'loyalty_points_applied') bool loyaltyPointsApplied,
      @JsonKey(name: 'loyalty_points') int loyaltyPoints,
      @JsonKey(name: 'total_items') int totalItems,
      @JsonKey(name: 'expected_loyalty_points') int expectedLoyaltyPoints,
      @JsonKey(name: 'order_details') List<OrderDetailsModel> orderDetails,
      @JsonKey(name: 'service_fees') String serviceFees,
      @JsonKey(name: 'technology_fees') String technologyFees,
      @JsonKey(name: 'environment_fees') String environmentFees,
      @JsonKey(name: 'vat_fee_amount') String vatFeeAmount,
      @JsonKey(name: 'total_fee_amount') String totalFeeAmount,
      @JsonKey(name: 'driver_notes') String driverNotes,
      @JsonKey(name: 'delivery_instructions')
      List<DeliveryInstruction> deliveryInstructions,
      @JsonKey(name: 'driver') OrderDriverModel? driver});

  $OrderDriverModelCopyWith<$Res>? get driver;
}

/// @nodoc
class _$OrderModelCopyWithImpl<$Res, $Val extends OrderModel>
    implements $OrderModelCopyWith<$Res> {
  _$OrderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? orderType = null,
    Object? availableReturnOrder = null,
    Object? showButtonPay = null,
    Object? subtotal = null,
    Object? shipping = null,
    Object? tax = null,
    Object? couponDiscount = null,
    Object? total = null,
    Object? date = null,
    Object? deliveryStatusConst = null,
    Object? deliveryStatus = null,
    Object? deliveryViewed = null,
    Object? paymentStatusViewed = null,
    Object? paymentStatus = null,
    Object? paymentStatusText = null,
    Object? availableCancelOrder = null,
    Object? additionalInfo = null,
    Object? paymentMethod = null,
    Object? shippingMethod = null,
    Object? orderStatus = null,
    Object? orderDate = null,
    Object? shippingAddress = null,
    Object? customerName = null,
    Object? customerEmail = null,
    Object? customerPhone = null,
    Object? returnReason = null,
    Object? soldByType = null,
    Object? soldBy = null,
    Object? loyaltyPointsValue = null,
    Object? loyaltyPointsApplied = null,
    Object? loyaltyPoints = null,
    Object? totalItems = null,
    Object? expectedLoyaltyPoints = null,
    Object? orderDetails = null,
    Object? serviceFees = null,
    Object? technologyFees = null,
    Object? environmentFees = null,
    Object? vatFeeAmount = null,
    Object? totalFeeAmount = null,
    Object? driverNotes = null,
    Object? deliveryInstructions = null,
    Object? driver = freezed,
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
      orderType: null == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as String,
      availableReturnOrder: null == availableReturnOrder
          ? _value.availableReturnOrder
          : availableReturnOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      showButtonPay: null == showButtonPay
          ? _value.showButtonPay
          : showButtonPay // ignore: cast_nullable_to_non_nullable
              as bool,
      subtotal: null == subtotal
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as String,
      shipping: null == shipping
          ? _value.shipping
          : shipping // ignore: cast_nullable_to_non_nullable
              as String,
      tax: null == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as String,
      couponDiscount: null == couponDiscount
          ? _value.couponDiscount
          : couponDiscount // ignore: cast_nullable_to_non_nullable
              as String,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryStatusConst: null == deliveryStatusConst
          ? _value.deliveryStatusConst
          : deliveryStatusConst // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryStatus: null == deliveryStatus
          ? _value.deliveryStatus
          : deliveryStatus // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryViewed: null == deliveryViewed
          ? _value.deliveryViewed
          : deliveryViewed // ignore: cast_nullable_to_non_nullable
              as bool,
      paymentStatusViewed: null == paymentStatusViewed
          ? _value.paymentStatusViewed
          : paymentStatusViewed // ignore: cast_nullable_to_non_nullable
              as bool,
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      paymentStatusText: null == paymentStatusText
          ? _value.paymentStatusText
          : paymentStatusText // ignore: cast_nullable_to_non_nullable
              as String,
      availableCancelOrder: null == availableCancelOrder
          ? _value.availableCancelOrder
          : availableCancelOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      additionalInfo: null == additionalInfo
          ? _value.additionalInfo
          : additionalInfo // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      shippingMethod: null == shippingMethod
          ? _value.shippingMethod
          : shippingMethod // ignore: cast_nullable_to_non_nullable
              as String,
      orderStatus: null == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String,
      orderDate: null == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as String,
      shippingAddress: null == shippingAddress
          ? _value.shippingAddress
          : shippingAddress // ignore: cast_nullable_to_non_nullable
              as String,
      customerName: null == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      customerEmail: null == customerEmail
          ? _value.customerEmail
          : customerEmail // ignore: cast_nullable_to_non_nullable
              as String,
      customerPhone: null == customerPhone
          ? _value.customerPhone
          : customerPhone // ignore: cast_nullable_to_non_nullable
              as String,
      returnReason: null == returnReason
          ? _value.returnReason
          : returnReason // ignore: cast_nullable_to_non_nullable
              as String,
      soldByType: null == soldByType
          ? _value.soldByType
          : soldByType // ignore: cast_nullable_to_non_nullable
              as String,
      soldBy: null == soldBy
          ? _value.soldBy
          : soldBy // ignore: cast_nullable_to_non_nullable
              as String,
      loyaltyPointsValue: null == loyaltyPointsValue
          ? _value.loyaltyPointsValue
          : loyaltyPointsValue // ignore: cast_nullable_to_non_nullable
              as String,
      loyaltyPointsApplied: null == loyaltyPointsApplied
          ? _value.loyaltyPointsApplied
          : loyaltyPointsApplied // ignore: cast_nullable_to_non_nullable
              as bool,
      loyaltyPoints: null == loyaltyPoints
          ? _value.loyaltyPoints
          : loyaltyPoints // ignore: cast_nullable_to_non_nullable
              as int,
      totalItems: null == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int,
      expectedLoyaltyPoints: null == expectedLoyaltyPoints
          ? _value.expectedLoyaltyPoints
          : expectedLoyaltyPoints // ignore: cast_nullable_to_non_nullable
              as int,
      orderDetails: null == orderDetails
          ? _value.orderDetails
          : orderDetails // ignore: cast_nullable_to_non_nullable
              as List<OrderDetailsModel>,
      serviceFees: null == serviceFees
          ? _value.serviceFees
          : serviceFees // ignore: cast_nullable_to_non_nullable
              as String,
      technologyFees: null == technologyFees
          ? _value.technologyFees
          : technologyFees // ignore: cast_nullable_to_non_nullable
              as String,
      environmentFees: null == environmentFees
          ? _value.environmentFees
          : environmentFees // ignore: cast_nullable_to_non_nullable
              as String,
      vatFeeAmount: null == vatFeeAmount
          ? _value.vatFeeAmount
          : vatFeeAmount // ignore: cast_nullable_to_non_nullable
              as String,
      totalFeeAmount: null == totalFeeAmount
          ? _value.totalFeeAmount
          : totalFeeAmount // ignore: cast_nullable_to_non_nullable
              as String,
      driverNotes: null == driverNotes
          ? _value.driverNotes
          : driverNotes // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryInstructions: null == deliveryInstructions
          ? _value.deliveryInstructions
          : deliveryInstructions // ignore: cast_nullable_to_non_nullable
              as List<DeliveryInstruction>,
      driver: freezed == driver
          ? _value.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as OrderDriverModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderDriverModelCopyWith<$Res>? get driver {
    if (_value.driver == null) {
      return null;
    }

    return $OrderDriverModelCopyWith<$Res>(_value.driver!, (value) {
      return _then(_value.copyWith(driver: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OrderModelCopyWith<$Res>
    implements $OrderModelCopyWith<$Res> {
  factory _$$_OrderModelCopyWith(
          _$_OrderModel value, $Res Function(_$_OrderModel) then) =
      __$$_OrderModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String code,
      @JsonKey(name: 'order_type') String orderType,
      @JsonKey(name: 'available_return_order') bool availableReturnOrder,
      @JsonKey(name: 'show_button_pay') bool showButtonPay,
      String subtotal,
      String shipping,
      String tax,
      @JsonKey(name: 'coupon_discount') String couponDiscount,
      String total,
      String date,
      @JsonKey(name: 'delivery_status_const') String deliveryStatusConst,
      @JsonKey(name: 'delivery_status') String deliveryStatus,
      @JsonKey(name: 'delivery_viewed') bool deliveryViewed,
      @JsonKey(name: 'payment_status_viewed') bool paymentStatusViewed,
      @JsonKey(name: 'payment_status') bool paymentStatus,
      @JsonKey(name: 'payment_status_text') String paymentStatusText,
      @JsonKey(name: 'available_cancel_order') bool availableCancelOrder,
      @JsonKey(name: 'additional_info') String additionalInfo,
      @JsonKey(name: 'payment_method') String paymentMethod,
      @JsonKey(name: 'shipping_method') String shippingMethod,
      @JsonKey(name: 'order_status') String orderStatus,
      @JsonKey(name: 'order_date') String orderDate,
      @JsonKey(name: 'shipping_address') String shippingAddress,
      @JsonKey(name: 'customer_name') String customerName,
      @JsonKey(name: 'customer_email') String customerEmail,
      @JsonKey(name: 'customer_phone') String customerPhone,
      @JsonKey(name: 'return_reason') String returnReason,
      @JsonKey(name: 'sold_by_type') String soldByType,
      @JsonKey(name: 'sold_by_name') String soldBy,
      @JsonKey(name: 'loyalty_points_value') String loyaltyPointsValue,
      @JsonKey(name: 'loyalty_points_applied') bool loyaltyPointsApplied,
      @JsonKey(name: 'loyalty_points') int loyaltyPoints,
      @JsonKey(name: 'total_items') int totalItems,
      @JsonKey(name: 'expected_loyalty_points') int expectedLoyaltyPoints,
      @JsonKey(name: 'order_details') List<OrderDetailsModel> orderDetails,
      @JsonKey(name: 'service_fees') String serviceFees,
      @JsonKey(name: 'technology_fees') String technologyFees,
      @JsonKey(name: 'environment_fees') String environmentFees,
      @JsonKey(name: 'vat_fee_amount') String vatFeeAmount,
      @JsonKey(name: 'total_fee_amount') String totalFeeAmount,
      @JsonKey(name: 'driver_notes') String driverNotes,
      @JsonKey(name: 'delivery_instructions')
      List<DeliveryInstruction> deliveryInstructions,
      @JsonKey(name: 'driver') OrderDriverModel? driver});

  @override
  $OrderDriverModelCopyWith<$Res>? get driver;
}

/// @nodoc
class __$$_OrderModelCopyWithImpl<$Res>
    extends _$OrderModelCopyWithImpl<$Res, _$_OrderModel>
    implements _$$_OrderModelCopyWith<$Res> {
  __$$_OrderModelCopyWithImpl(
      _$_OrderModel _value, $Res Function(_$_OrderModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? orderType = null,
    Object? availableReturnOrder = null,
    Object? showButtonPay = null,
    Object? subtotal = null,
    Object? shipping = null,
    Object? tax = null,
    Object? couponDiscount = null,
    Object? total = null,
    Object? date = null,
    Object? deliveryStatusConst = null,
    Object? deliveryStatus = null,
    Object? deliveryViewed = null,
    Object? paymentStatusViewed = null,
    Object? paymentStatus = null,
    Object? paymentStatusText = null,
    Object? availableCancelOrder = null,
    Object? additionalInfo = null,
    Object? paymentMethod = null,
    Object? shippingMethod = null,
    Object? orderStatus = null,
    Object? orderDate = null,
    Object? shippingAddress = null,
    Object? customerName = null,
    Object? customerEmail = null,
    Object? customerPhone = null,
    Object? returnReason = null,
    Object? soldByType = null,
    Object? soldBy = null,
    Object? loyaltyPointsValue = null,
    Object? loyaltyPointsApplied = null,
    Object? loyaltyPoints = null,
    Object? totalItems = null,
    Object? expectedLoyaltyPoints = null,
    Object? orderDetails = null,
    Object? serviceFees = null,
    Object? technologyFees = null,
    Object? environmentFees = null,
    Object? vatFeeAmount = null,
    Object? totalFeeAmount = null,
    Object? driverNotes = null,
    Object? deliveryInstructions = null,
    Object? driver = freezed,
  }) {
    return _then(_$_OrderModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      orderType: null == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as String,
      availableReturnOrder: null == availableReturnOrder
          ? _value.availableReturnOrder
          : availableReturnOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      showButtonPay: null == showButtonPay
          ? _value.showButtonPay
          : showButtonPay // ignore: cast_nullable_to_non_nullable
              as bool,
      subtotal: null == subtotal
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as String,
      shipping: null == shipping
          ? _value.shipping
          : shipping // ignore: cast_nullable_to_non_nullable
              as String,
      tax: null == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as String,
      couponDiscount: null == couponDiscount
          ? _value.couponDiscount
          : couponDiscount // ignore: cast_nullable_to_non_nullable
              as String,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryStatusConst: null == deliveryStatusConst
          ? _value.deliveryStatusConst
          : deliveryStatusConst // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryStatus: null == deliveryStatus
          ? _value.deliveryStatus
          : deliveryStatus // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryViewed: null == deliveryViewed
          ? _value.deliveryViewed
          : deliveryViewed // ignore: cast_nullable_to_non_nullable
              as bool,
      paymentStatusViewed: null == paymentStatusViewed
          ? _value.paymentStatusViewed
          : paymentStatusViewed // ignore: cast_nullable_to_non_nullable
              as bool,
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      paymentStatusText: null == paymentStatusText
          ? _value.paymentStatusText
          : paymentStatusText // ignore: cast_nullable_to_non_nullable
              as String,
      availableCancelOrder: null == availableCancelOrder
          ? _value.availableCancelOrder
          : availableCancelOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      additionalInfo: null == additionalInfo
          ? _value.additionalInfo
          : additionalInfo // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      shippingMethod: null == shippingMethod
          ? _value.shippingMethod
          : shippingMethod // ignore: cast_nullable_to_non_nullable
              as String,
      orderStatus: null == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String,
      orderDate: null == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as String,
      shippingAddress: null == shippingAddress
          ? _value.shippingAddress
          : shippingAddress // ignore: cast_nullable_to_non_nullable
              as String,
      customerName: null == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      customerEmail: null == customerEmail
          ? _value.customerEmail
          : customerEmail // ignore: cast_nullable_to_non_nullable
              as String,
      customerPhone: null == customerPhone
          ? _value.customerPhone
          : customerPhone // ignore: cast_nullable_to_non_nullable
              as String,
      returnReason: null == returnReason
          ? _value.returnReason
          : returnReason // ignore: cast_nullable_to_non_nullable
              as String,
      soldByType: null == soldByType
          ? _value.soldByType
          : soldByType // ignore: cast_nullable_to_non_nullable
              as String,
      soldBy: null == soldBy
          ? _value.soldBy
          : soldBy // ignore: cast_nullable_to_non_nullable
              as String,
      loyaltyPointsValue: null == loyaltyPointsValue
          ? _value.loyaltyPointsValue
          : loyaltyPointsValue // ignore: cast_nullable_to_non_nullable
              as String,
      loyaltyPointsApplied: null == loyaltyPointsApplied
          ? _value.loyaltyPointsApplied
          : loyaltyPointsApplied // ignore: cast_nullable_to_non_nullable
              as bool,
      loyaltyPoints: null == loyaltyPoints
          ? _value.loyaltyPoints
          : loyaltyPoints // ignore: cast_nullable_to_non_nullable
              as int,
      totalItems: null == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int,
      expectedLoyaltyPoints: null == expectedLoyaltyPoints
          ? _value.expectedLoyaltyPoints
          : expectedLoyaltyPoints // ignore: cast_nullable_to_non_nullable
              as int,
      orderDetails: null == orderDetails
          ? _value._orderDetails
          : orderDetails // ignore: cast_nullable_to_non_nullable
              as List<OrderDetailsModel>,
      serviceFees: null == serviceFees
          ? _value.serviceFees
          : serviceFees // ignore: cast_nullable_to_non_nullable
              as String,
      technologyFees: null == technologyFees
          ? _value.technologyFees
          : technologyFees // ignore: cast_nullable_to_non_nullable
              as String,
      environmentFees: null == environmentFees
          ? _value.environmentFees
          : environmentFees // ignore: cast_nullable_to_non_nullable
              as String,
      vatFeeAmount: null == vatFeeAmount
          ? _value.vatFeeAmount
          : vatFeeAmount // ignore: cast_nullable_to_non_nullable
              as String,
      totalFeeAmount: null == totalFeeAmount
          ? _value.totalFeeAmount
          : totalFeeAmount // ignore: cast_nullable_to_non_nullable
              as String,
      driverNotes: null == driverNotes
          ? _value.driverNotes
          : driverNotes // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryInstructions: null == deliveryInstructions
          ? _value._deliveryInstructions
          : deliveryInstructions // ignore: cast_nullable_to_non_nullable
              as List<DeliveryInstruction>,
      driver: freezed == driver
          ? _value.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as OrderDriverModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_OrderModel extends _OrderModel {
  const _$_OrderModel(
      {required this.id,
      required this.code,
      @JsonKey(name: 'order_type') required this.orderType,
      @JsonKey(name: 'available_return_order')
      required this.availableReturnOrder,
      @JsonKey(name: 'show_button_pay') required this.showButtonPay,
      required this.subtotal,
      required this.shipping,
      required this.tax,
      @JsonKey(name: 'coupon_discount') required this.couponDiscount,
      required this.total,
      required this.date,
      @JsonKey(name: 'delivery_status_const') required this.deliveryStatusConst,
      @JsonKey(name: 'delivery_status') required this.deliveryStatus,
      @JsonKey(name: 'delivery_viewed') required this.deliveryViewed,
      @JsonKey(name: 'payment_status_viewed') required this.paymentStatusViewed,
      @JsonKey(name: 'payment_status') required this.paymentStatus,
      @JsonKey(name: 'payment_status_text') required this.paymentStatusText,
      @JsonKey(name: 'available_cancel_order')
      required this.availableCancelOrder,
      @JsonKey(name: 'additional_info') required this.additionalInfo,
      @JsonKey(name: 'payment_method') required this.paymentMethod,
      @JsonKey(name: 'shipping_method') required this.shippingMethod,
      @JsonKey(name: 'order_status') required this.orderStatus,
      @JsonKey(name: 'order_date') required this.orderDate,
      @JsonKey(name: 'shipping_address') required this.shippingAddress,
      @JsonKey(name: 'customer_name') required this.customerName,
      @JsonKey(name: 'customer_email') required this.customerEmail,
      @JsonKey(name: 'customer_phone') required this.customerPhone,
      @JsonKey(name: 'return_reason') required this.returnReason,
      @JsonKey(name: 'sold_by_type') required this.soldByType,
      @JsonKey(name: 'sold_by_name') required this.soldBy,
      @JsonKey(name: 'loyalty_points_value') required this.loyaltyPointsValue,
      @JsonKey(name: 'loyalty_points_applied')
      required this.loyaltyPointsApplied,
      @JsonKey(name: 'loyalty_points') required this.loyaltyPoints,
      @JsonKey(name: 'total_items') required this.totalItems,
      @JsonKey(name: 'expected_loyalty_points')
      required this.expectedLoyaltyPoints,
      @JsonKey(name: 'order_details')
      required final List<OrderDetailsModel> orderDetails,
      @JsonKey(name: 'service_fees') required this.serviceFees,
      @JsonKey(name: 'technology_fees') required this.technologyFees,
      @JsonKey(name: 'environment_fees') required this.environmentFees,
      @JsonKey(name: 'vat_fee_amount') required this.vatFeeAmount,
      @JsonKey(name: 'total_fee_amount') required this.totalFeeAmount,
      @JsonKey(name: 'driver_notes') required this.driverNotes,
      @JsonKey(name: 'delivery_instructions')
      required final List<DeliveryInstruction> deliveryInstructions,
      @JsonKey(name: 'driver') this.driver})
      : _orderDetails = orderDetails,
        _deliveryInstructions = deliveryInstructions,
        super._();

  factory _$_OrderModel.fromJson(Map<String, dynamic> json) =>
      _$$_OrderModelFromJson(json);

  @override
  final int id;
  @override
  final String code;
  @override
  @JsonKey(name: 'order_type')
  final String orderType;
  @override
  @JsonKey(name: 'available_return_order')
  final bool availableReturnOrder;
  @override
  @JsonKey(name: 'show_button_pay')
  final bool showButtonPay;
  @override
  final String subtotal;
  @override
  final String shipping;
  @override
  final String tax;
  @override
  @JsonKey(name: 'coupon_discount')
  final String couponDiscount;
  @override
  final String total;
  @override
  final String date;
  @override
  @JsonKey(name: 'delivery_status_const')
  final String deliveryStatusConst;
  @override
  @JsonKey(name: 'delivery_status')
  final String deliveryStatus;
  @override
  @JsonKey(name: 'delivery_viewed')
  final bool deliveryViewed;
  @override
  @JsonKey(name: 'payment_status_viewed')
  final bool paymentStatusViewed;
  @override
  @JsonKey(name: 'payment_status')
  final bool paymentStatus;
  @override
  @JsonKey(name: 'payment_status_text')
  final String paymentStatusText;
  @override
  @JsonKey(name: 'available_cancel_order')
  final bool availableCancelOrder;
  @override
  @JsonKey(name: 'additional_info')
  final String additionalInfo;
  @override
  @JsonKey(name: 'payment_method')
  final String paymentMethod;
  @override
  @JsonKey(name: 'shipping_method')
  final String shippingMethod;
  @override
  @JsonKey(name: 'order_status')
  final String orderStatus;
  @override
  @JsonKey(name: 'order_date')
  final String orderDate;
  @override
  @JsonKey(name: 'shipping_address')
  final String shippingAddress;
  @override
  @JsonKey(name: 'customer_name')
  final String customerName;
  @override
  @JsonKey(name: 'customer_email')
  final String customerEmail;
  @override
  @JsonKey(name: 'customer_phone')
  final String customerPhone;
  @override
  @JsonKey(name: 'return_reason')
  final String returnReason;
  @override
  @JsonKey(name: 'sold_by_type')
  final String soldByType;
  @override
  @JsonKey(name: 'sold_by_name')
  final String soldBy;
  @override
  @JsonKey(name: 'loyalty_points_value')
  final String loyaltyPointsValue;
  @override
  @JsonKey(name: 'loyalty_points_applied')
  final bool loyaltyPointsApplied;
  @override
  @JsonKey(name: 'loyalty_points')
  final int loyaltyPoints;
  @override
  @JsonKey(name: 'total_items')
  final int totalItems;
  @override
  @JsonKey(name: 'expected_loyalty_points')
  final int expectedLoyaltyPoints;
  final List<OrderDetailsModel> _orderDetails;
  @override
  @JsonKey(name: 'order_details')
  List<OrderDetailsModel> get orderDetails {
    if (_orderDetails is EqualUnmodifiableListView) return _orderDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderDetails);
  }

  @override
  @JsonKey(name: 'service_fees')
  final String serviceFees;
  @override
  @JsonKey(name: 'technology_fees')
  final String technologyFees;
  @override
  @JsonKey(name: 'environment_fees')
  final String environmentFees;
  @override
  @JsonKey(name: 'vat_fee_amount')
  final String vatFeeAmount;

  /// total of fees with there *vat => (vatFeeAmount)*
  @override
  @JsonKey(name: 'total_fee_amount')
  final String totalFeeAmount;
  @override
  @JsonKey(name: 'driver_notes')
  final String driverNotes;
  final List<DeliveryInstruction> _deliveryInstructions;
  @override
  @JsonKey(name: 'delivery_instructions')
  List<DeliveryInstruction> get deliveryInstructions {
    if (_deliveryInstructions is EqualUnmodifiableListView)
      return _deliveryInstructions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_deliveryInstructions);
  }

  @override
  @JsonKey(name: 'driver')
  final OrderDriverModel? driver;

  @override
  String toString() {
    return 'OrderModel(id: $id, code: $code, orderType: $orderType, availableReturnOrder: $availableReturnOrder, showButtonPay: $showButtonPay, subtotal: $subtotal, shipping: $shipping, tax: $tax, couponDiscount: $couponDiscount, total: $total, date: $date, deliveryStatusConst: $deliveryStatusConst, deliveryStatus: $deliveryStatus, deliveryViewed: $deliveryViewed, paymentStatusViewed: $paymentStatusViewed, paymentStatus: $paymentStatus, paymentStatusText: $paymentStatusText, availableCancelOrder: $availableCancelOrder, additionalInfo: $additionalInfo, paymentMethod: $paymentMethod, shippingMethod: $shippingMethod, orderStatus: $orderStatus, orderDate: $orderDate, shippingAddress: $shippingAddress, customerName: $customerName, customerEmail: $customerEmail, customerPhone: $customerPhone, returnReason: $returnReason, soldByType: $soldByType, soldBy: $soldBy, loyaltyPointsValue: $loyaltyPointsValue, loyaltyPointsApplied: $loyaltyPointsApplied, loyaltyPoints: $loyaltyPoints, totalItems: $totalItems, expectedLoyaltyPoints: $expectedLoyaltyPoints, orderDetails: $orderDetails, serviceFees: $serviceFees, technologyFees: $technologyFees, environmentFees: $environmentFees, vatFeeAmount: $vatFeeAmount, totalFeeAmount: $totalFeeAmount, driverNotes: $driverNotes, deliveryInstructions: $deliveryInstructions, driver: $driver)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.orderType, orderType) ||
                other.orderType == orderType) &&
            (identical(other.availableReturnOrder, availableReturnOrder) ||
                other.availableReturnOrder == availableReturnOrder) &&
            (identical(other.showButtonPay, showButtonPay) ||
                other.showButtonPay == showButtonPay) &&
            (identical(other.subtotal, subtotal) ||
                other.subtotal == subtotal) &&
            (identical(other.shipping, shipping) ||
                other.shipping == shipping) &&
            (identical(other.tax, tax) || other.tax == tax) &&
            (identical(other.couponDiscount, couponDiscount) ||
                other.couponDiscount == couponDiscount) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.deliveryStatusConst, deliveryStatusConst) ||
                other.deliveryStatusConst == deliveryStatusConst) &&
            (identical(other.deliveryStatus, deliveryStatus) ||
                other.deliveryStatus == deliveryStatus) &&
            (identical(other.deliveryViewed, deliveryViewed) ||
                other.deliveryViewed == deliveryViewed) &&
            (identical(other.paymentStatusViewed, paymentStatusViewed) ||
                other.paymentStatusViewed == paymentStatusViewed) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.paymentStatusText, paymentStatusText) ||
                other.paymentStatusText == paymentStatusText) &&
            (identical(other.availableCancelOrder, availableCancelOrder) ||
                other.availableCancelOrder == availableCancelOrder) &&
            (identical(other.additionalInfo, additionalInfo) ||
                other.additionalInfo == additionalInfo) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.shippingMethod, shippingMethod) ||
                other.shippingMethod == shippingMethod) &&
            (identical(other.orderStatus, orderStatus) ||
                other.orderStatus == orderStatus) &&
            (identical(other.orderDate, orderDate) ||
                other.orderDate == orderDate) &&
            (identical(other.shippingAddress, shippingAddress) ||
                other.shippingAddress == shippingAddress) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.customerEmail, customerEmail) ||
                other.customerEmail == customerEmail) &&
            (identical(other.customerPhone, customerPhone) ||
                other.customerPhone == customerPhone) &&
            (identical(other.returnReason, returnReason) ||
                other.returnReason == returnReason) &&
            (identical(other.soldByType, soldByType) ||
                other.soldByType == soldByType) &&
            (identical(other.soldBy, soldBy) || other.soldBy == soldBy) &&
            (identical(other.loyaltyPointsValue, loyaltyPointsValue) ||
                other.loyaltyPointsValue == loyaltyPointsValue) &&
            (identical(other.loyaltyPointsApplied, loyaltyPointsApplied) ||
                other.loyaltyPointsApplied == loyaltyPointsApplied) &&
            (identical(other.loyaltyPoints, loyaltyPoints) ||
                other.loyaltyPoints == loyaltyPoints) &&
            (identical(other.totalItems, totalItems) ||
                other.totalItems == totalItems) &&
            (identical(other.expectedLoyaltyPoints, expectedLoyaltyPoints) ||
                other.expectedLoyaltyPoints == expectedLoyaltyPoints) &&
            const DeepCollectionEquality()
                .equals(other._orderDetails, _orderDetails) &&
            (identical(other.serviceFees, serviceFees) ||
                other.serviceFees == serviceFees) &&
            (identical(other.technologyFees, technologyFees) ||
                other.technologyFees == technologyFees) &&
            (identical(other.environmentFees, environmentFees) ||
                other.environmentFees == environmentFees) &&
            (identical(other.vatFeeAmount, vatFeeAmount) ||
                other.vatFeeAmount == vatFeeAmount) &&
            (identical(other.totalFeeAmount, totalFeeAmount) ||
                other.totalFeeAmount == totalFeeAmount) &&
            (identical(other.driverNotes, driverNotes) ||
                other.driverNotes == driverNotes) &&
            const DeepCollectionEquality()
                .equals(other._deliveryInstructions, _deliveryInstructions) &&
            (identical(other.driver, driver) || other.driver == driver));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        code,
        orderType,
        availableReturnOrder,
        showButtonPay,
        subtotal,
        shipping,
        tax,
        couponDiscount,
        total,
        date,
        deliveryStatusConst,
        deliveryStatus,
        deliveryViewed,
        paymentStatusViewed,
        paymentStatus,
        paymentStatusText,
        availableCancelOrder,
        additionalInfo,
        paymentMethod,
        shippingMethod,
        orderStatus,
        orderDate,
        shippingAddress,
        customerName,
        customerEmail,
        customerPhone,
        returnReason,
        soldByType,
        soldBy,
        loyaltyPointsValue,
        loyaltyPointsApplied,
        loyaltyPoints,
        totalItems,
        expectedLoyaltyPoints,
        const DeepCollectionEquality().hash(_orderDetails),
        serviceFees,
        technologyFees,
        environmentFees,
        vatFeeAmount,
        totalFeeAmount,
        driverNotes,
        const DeepCollectionEquality().hash(_deliveryInstructions),
        driver
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderModelCopyWith<_$_OrderModel> get copyWith =>
      __$$_OrderModelCopyWithImpl<_$_OrderModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderModelToJson(
      this,
    );
  }
}

abstract class _OrderModel extends OrderModel {
  const factory _OrderModel(
      {required final int id,
      required final String code,
      @JsonKey(name: 'order_type') required final String orderType,
      @JsonKey(name: 'available_return_order')
      required final bool availableReturnOrder,
      @JsonKey(name: 'show_button_pay') required final bool showButtonPay,
      required final String subtotal,
      required final String shipping,
      required final String tax,
      @JsonKey(name: 'coupon_discount') required final String couponDiscount,
      required final String total,
      required final String date,
      @JsonKey(name: 'delivery_status_const')
      required final String deliveryStatusConst,
      @JsonKey(name: 'delivery_status') required final String deliveryStatus,
      @JsonKey(name: 'delivery_viewed') required final bool deliveryViewed,
      @JsonKey(name: 'payment_status_viewed')
      required final bool paymentStatusViewed,
      @JsonKey(name: 'payment_status') required final bool paymentStatus,
      @JsonKey(name: 'payment_status_text')
      required final String paymentStatusText,
      @JsonKey(name: 'available_cancel_order')
      required final bool availableCancelOrder,
      @JsonKey(name: 'additional_info') required final String additionalInfo,
      @JsonKey(name: 'payment_method') required final String paymentMethod,
      @JsonKey(name: 'shipping_method') required final String shippingMethod,
      @JsonKey(name: 'order_status') required final String orderStatus,
      @JsonKey(name: 'order_date') required final String orderDate,
      @JsonKey(name: 'shipping_address') required final String shippingAddress,
      @JsonKey(name: 'customer_name') required final String customerName,
      @JsonKey(name: 'customer_email') required final String customerEmail,
      @JsonKey(name: 'customer_phone') required final String customerPhone,
      @JsonKey(name: 'return_reason') required final String returnReason,
      @JsonKey(name: 'sold_by_type') required final String soldByType,
      @JsonKey(name: 'sold_by_name') required final String soldBy,
      @JsonKey(name: 'loyalty_points_value')
      required final String loyaltyPointsValue,
      @JsonKey(name: 'loyalty_points_applied')
      required final bool loyaltyPointsApplied,
      @JsonKey(name: 'loyalty_points') required final int loyaltyPoints,
      @JsonKey(name: 'total_items') required final int totalItems,
      @JsonKey(name: 'expected_loyalty_points')
      required final int expectedLoyaltyPoints,
      @JsonKey(name: 'order_details')
      required final List<OrderDetailsModel> orderDetails,
      @JsonKey(name: 'service_fees') required final String serviceFees,
      @JsonKey(name: 'technology_fees') required final String technologyFees,
      @JsonKey(name: 'environment_fees') required final String environmentFees,
      @JsonKey(name: 'vat_fee_amount') required final String vatFeeAmount,
      @JsonKey(name: 'total_fee_amount') required final String totalFeeAmount,
      @JsonKey(name: 'driver_notes') required final String driverNotes,
      @JsonKey(name: 'delivery_instructions')
      required final List<DeliveryInstruction> deliveryInstructions,
      @JsonKey(name: 'driver') final OrderDriverModel? driver}) = _$_OrderModel;
  const _OrderModel._() : super._();

  factory _OrderModel.fromJson(Map<String, dynamic> json) =
      _$_OrderModel.fromJson;

  @override
  int get id;
  @override
  String get code;
  @override
  @JsonKey(name: 'order_type')
  String get orderType;
  @override
  @JsonKey(name: 'available_return_order')
  bool get availableReturnOrder;
  @override
  @JsonKey(name: 'show_button_pay')
  bool get showButtonPay;
  @override
  String get subtotal;
  @override
  String get shipping;
  @override
  String get tax;
  @override
  @JsonKey(name: 'coupon_discount')
  String get couponDiscount;
  @override
  String get total;
  @override
  String get date;
  @override
  @JsonKey(name: 'delivery_status_const')
  String get deliveryStatusConst;
  @override
  @JsonKey(name: 'delivery_status')
  String get deliveryStatus;
  @override
  @JsonKey(name: 'delivery_viewed')
  bool get deliveryViewed;
  @override
  @JsonKey(name: 'payment_status_viewed')
  bool get paymentStatusViewed;
  @override
  @JsonKey(name: 'payment_status')
  bool get paymentStatus;
  @override
  @JsonKey(name: 'payment_status_text')
  String get paymentStatusText;
  @override
  @JsonKey(name: 'available_cancel_order')
  bool get availableCancelOrder;
  @override
  @JsonKey(name: 'additional_info')
  String get additionalInfo;
  @override
  @JsonKey(name: 'payment_method')
  String get paymentMethod;
  @override
  @JsonKey(name: 'shipping_method')
  String get shippingMethod;
  @override
  @JsonKey(name: 'order_status')
  String get orderStatus;
  @override
  @JsonKey(name: 'order_date')
  String get orderDate;
  @override
  @JsonKey(name: 'shipping_address')
  String get shippingAddress;
  @override
  @JsonKey(name: 'customer_name')
  String get customerName;
  @override
  @JsonKey(name: 'customer_email')
  String get customerEmail;
  @override
  @JsonKey(name: 'customer_phone')
  String get customerPhone;
  @override
  @JsonKey(name: 'return_reason')
  String get returnReason;
  @override
  @JsonKey(name: 'sold_by_type')
  String get soldByType;
  @override
  @JsonKey(name: 'sold_by_name')
  String get soldBy;
  @override
  @JsonKey(name: 'loyalty_points_value')
  String get loyaltyPointsValue;
  @override
  @JsonKey(name: 'loyalty_points_applied')
  bool get loyaltyPointsApplied;
  @override
  @JsonKey(name: 'loyalty_points')
  int get loyaltyPoints;
  @override
  @JsonKey(name: 'total_items')
  int get totalItems;
  @override
  @JsonKey(name: 'expected_loyalty_points')
  int get expectedLoyaltyPoints;
  @override
  @JsonKey(name: 'order_details')
  List<OrderDetailsModel> get orderDetails;
  @override
  @JsonKey(name: 'service_fees')
  String get serviceFees;
  @override
  @JsonKey(name: 'technology_fees')
  String get technologyFees;
  @override
  @JsonKey(name: 'environment_fees')
  String get environmentFees;
  @override
  @JsonKey(name: 'vat_fee_amount')
  String get vatFeeAmount;
  @override

  /// total of fees with there *vat => (vatFeeAmount)*
  @JsonKey(name: 'total_fee_amount')
  String get totalFeeAmount;
  @override
  @JsonKey(name: 'driver_notes')
  String get driverNotes;
  @override
  @JsonKey(name: 'delivery_instructions')
  List<DeliveryInstruction> get deliveryInstructions;
  @override
  @JsonKey(name: 'driver')
  OrderDriverModel? get driver;
  @override
  @JsonKey(ignore: true)
  _$$_OrderModelCopyWith<_$_OrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}
