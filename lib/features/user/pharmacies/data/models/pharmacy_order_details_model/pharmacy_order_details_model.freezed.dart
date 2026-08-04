// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pharmacy_order_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PharmacyOrderDetailsModel _$PharmacyOrderDetailsModelFromJson(
    Map<String, dynamic> json) {
  return _PharmacyOrderDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$PharmacyOrderDetailsModel {
  int? get id => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'shop_type')
  String? get shopType => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_pending_review')
  bool? get isPendingReview => throw _privateConstructorUsedError;
  @JsonKey(name: 'awaiting_customer_completion')
  bool? get awaitingCustomerCompletion => throw _privateConstructorUsedError;
  @JsonKey(name: 'requires_prescription_review')
  bool? get requiresPrescriptionReview => throw _privateConstructorUsedError;
  @JsonKey(name: 'insurance_applied')
  bool? get insuranceApplied => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_type')
  String? get orderType => throw _privateConstructorUsedError;
  @JsonKey(name: 'available_return_order')
  bool? get availableReturnOrder => throw _privateConstructorUsedError;
  @JsonKey(name: 'show_button_pay')
  bool? get showButtonPay => throw _privateConstructorUsedError;
  @JsonKey(name: 'loyalty_points_applied')
  bool? get loyaltyPointsApplied => throw _privateConstructorUsedError;
  @JsonKey(name: 'loyalty_points')
  int? get loyaltyPoints => throw _privateConstructorUsedError;
  @JsonKey(name: 'expected_loyalty_points')
  int? get expectedLoyaltyPoints => throw _privateConstructorUsedError;
  @JsonKey(name: 'bag_count')
  int? get bagCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_items')
  int? get totalItems => throw _privateConstructorUsedError;
  @JsonKey(name: 'sold_by_type')
  String? get soldByType => throw _privateConstructorUsedError;
  @JsonKey(name: 'sold_by_name')
  String? get soldByName => throw _privateConstructorUsedError;
  String? get subtotal => throw _privateConstructorUsedError;
  String? get shipping => throw _privateConstructorUsedError;
  String? get tax => throw _privateConstructorUsedError;
  @JsonKey(name: 'coupon_discount')
  String? get couponDiscount => throw _privateConstructorUsedError;
  @JsonKey(name: 'service_fees')
  String? get serviceFees => throw _privateConstructorUsedError;
  @JsonKey(name: 'environment_fees')
  String? get environmentFees => throw _privateConstructorUsedError;
  @JsonKey(name: 'technology_fees')
  String? get technologyFees => throw _privateConstructorUsedError;
  @JsonKey(name: 'vat_fee_amount')
  String? get vatFeeAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_fee_amount')
  String? get totalFeeAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'loyalty_points_value')
  String? get loyaltyPointsValue => throw _privateConstructorUsedError;
  String? get total => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'cancel_reason')
  String? get cancelReason => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_status_const')
  String? get deliveryStatusConst => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_status')
  String? get deliveryStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_viewed')
  bool? get deliveryViewed => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_status_viewed')
  bool? get paymentStatusViewed => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_status')
  bool? get paymentStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_status_text')
  String? get paymentStatusText => throw _privateConstructorUsedError;
  @JsonKey(name: 'available_cancel_order')
  bool? get availableCancelOrder => throw _privateConstructorUsedError;
  @JsonKey(name: 'additional_info')
  String? get additionalInfo => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_method')
  String? get paymentMethod => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_method_key')
  String? get paymentMethodKey => throw _privateConstructorUsedError;
  @JsonKey(name: 'shipping_method')
  String? get shippingMethod => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_status')
  String? get orderStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_date')
  String? get orderDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'shipping_address')
  String? get shippingAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_name')
  String? get customerName => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_email')
  String? get customerEmail => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_phone')
  String? get customerPhone => throw _privateConstructorUsedError;
  @JsonKey(name: 'return_reason')
  String? get returnReason => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_details')
  List<PharmacyOrderItemModel> get orderDetails =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'shipping_type')
  String? get shippingType => throw _privateConstructorUsedError;
  @JsonKey(name: 'driver_notes')
  String? get driverNotes => throw _privateConstructorUsedError;
  @JsonKey(name: 'picker_notes')
  String? get pickerNotes => throw _privateConstructorUsedError;
  @JsonKey(name: 'insurance_attachments')
  List<PharmacyAttachmentModel> get insuranceAttachments =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'prescription_attachments')
  List<PharmacyAttachmentModel> get prescriptionAttachments =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PharmacyOrderDetailsModelCopyWith<PharmacyOrderDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PharmacyOrderDetailsModelCopyWith<$Res> {
  factory $PharmacyOrderDetailsModelCopyWith(PharmacyOrderDetailsModel value,
          $Res Function(PharmacyOrderDetailsModel) then) =
      _$PharmacyOrderDetailsModelCopyWithImpl<$Res, PharmacyOrderDetailsModel>;
  @useResult
  $Res call(
      {int? id,
      String? code,
      @JsonKey(name: 'shop_type') String? shopType,
      @JsonKey(name: 'is_pending_review') bool? isPendingReview,
      @JsonKey(name: 'awaiting_customer_completion')
      bool? awaitingCustomerCompletion,
      @JsonKey(name: 'requires_prescription_review')
      bool? requiresPrescriptionReview,
      @JsonKey(name: 'insurance_applied') bool? insuranceApplied,
      @JsonKey(name: 'order_type') String? orderType,
      @JsonKey(name: 'available_return_order') bool? availableReturnOrder,
      @JsonKey(name: 'show_button_pay') bool? showButtonPay,
      @JsonKey(name: 'loyalty_points_applied') bool? loyaltyPointsApplied,
      @JsonKey(name: 'loyalty_points') int? loyaltyPoints,
      @JsonKey(name: 'expected_loyalty_points') int? expectedLoyaltyPoints,
      @JsonKey(name: 'bag_count') int? bagCount,
      @JsonKey(name: 'total_items') int? totalItems,
      @JsonKey(name: 'sold_by_type') String? soldByType,
      @JsonKey(name: 'sold_by_name') String? soldByName,
      String? subtotal,
      String? shipping,
      String? tax,
      @JsonKey(name: 'coupon_discount') String? couponDiscount,
      @JsonKey(name: 'service_fees') String? serviceFees,
      @JsonKey(name: 'environment_fees') String? environmentFees,
      @JsonKey(name: 'technology_fees') String? technologyFees,
      @JsonKey(name: 'vat_fee_amount') String? vatFeeAmount,
      @JsonKey(name: 'total_fee_amount') String? totalFeeAmount,
      @JsonKey(name: 'loyalty_points_value') String? loyaltyPointsValue,
      String? total,
      String? date,
      @JsonKey(name: 'cancel_reason') String? cancelReason,
      @JsonKey(name: 'delivery_status_const') String? deliveryStatusConst,
      @JsonKey(name: 'delivery_status') String? deliveryStatus,
      @JsonKey(name: 'delivery_viewed') bool? deliveryViewed,
      @JsonKey(name: 'payment_status_viewed') bool? paymentStatusViewed,
      @JsonKey(name: 'payment_status') bool? paymentStatus,
      @JsonKey(name: 'payment_status_text') String? paymentStatusText,
      @JsonKey(name: 'available_cancel_order') bool? availableCancelOrder,
      @JsonKey(name: 'additional_info') String? additionalInfo,
      @JsonKey(name: 'payment_method') String? paymentMethod,
      @JsonKey(name: 'payment_method_key') String? paymentMethodKey,
      @JsonKey(name: 'shipping_method') String? shippingMethod,
      @JsonKey(name: 'order_status') String? orderStatus,
      @JsonKey(name: 'order_date') String? orderDate,
      @JsonKey(name: 'shipping_address') String? shippingAddress,
      @JsonKey(name: 'customer_name') String? customerName,
      @JsonKey(name: 'customer_email') String? customerEmail,
      @JsonKey(name: 'customer_phone') String? customerPhone,
      @JsonKey(name: 'return_reason') String? returnReason,
      @JsonKey(name: 'order_details') List<PharmacyOrderItemModel> orderDetails,
      @JsonKey(name: 'shipping_type') String? shippingType,
      @JsonKey(name: 'driver_notes') String? driverNotes,
      @JsonKey(name: 'picker_notes') String? pickerNotes,
      @JsonKey(name: 'insurance_attachments')
      List<PharmacyAttachmentModel> insuranceAttachments,
      @JsonKey(name: 'prescription_attachments')
      List<PharmacyAttachmentModel> prescriptionAttachments});
}

/// @nodoc
class _$PharmacyOrderDetailsModelCopyWithImpl<$Res,
        $Val extends PharmacyOrderDetailsModel>
    implements $PharmacyOrderDetailsModelCopyWith<$Res> {
  _$PharmacyOrderDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? shopType = freezed,
    Object? isPendingReview = freezed,
    Object? awaitingCustomerCompletion = freezed,
    Object? requiresPrescriptionReview = freezed,
    Object? insuranceApplied = freezed,
    Object? orderType = freezed,
    Object? availableReturnOrder = freezed,
    Object? showButtonPay = freezed,
    Object? loyaltyPointsApplied = freezed,
    Object? loyaltyPoints = freezed,
    Object? expectedLoyaltyPoints = freezed,
    Object? bagCount = freezed,
    Object? totalItems = freezed,
    Object? soldByType = freezed,
    Object? soldByName = freezed,
    Object? subtotal = freezed,
    Object? shipping = freezed,
    Object? tax = freezed,
    Object? couponDiscount = freezed,
    Object? serviceFees = freezed,
    Object? environmentFees = freezed,
    Object? technologyFees = freezed,
    Object? vatFeeAmount = freezed,
    Object? totalFeeAmount = freezed,
    Object? loyaltyPointsValue = freezed,
    Object? total = freezed,
    Object? date = freezed,
    Object? cancelReason = freezed,
    Object? deliveryStatusConst = freezed,
    Object? deliveryStatus = freezed,
    Object? deliveryViewed = freezed,
    Object? paymentStatusViewed = freezed,
    Object? paymentStatus = freezed,
    Object? paymentStatusText = freezed,
    Object? availableCancelOrder = freezed,
    Object? additionalInfo = freezed,
    Object? paymentMethod = freezed,
    Object? paymentMethodKey = freezed,
    Object? shippingMethod = freezed,
    Object? orderStatus = freezed,
    Object? orderDate = freezed,
    Object? shippingAddress = freezed,
    Object? customerName = freezed,
    Object? customerEmail = freezed,
    Object? customerPhone = freezed,
    Object? returnReason = freezed,
    Object? orderDetails = null,
    Object? shippingType = freezed,
    Object? driverNotes = freezed,
    Object? pickerNotes = freezed,
    Object? insuranceAttachments = null,
    Object? prescriptionAttachments = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      shopType: freezed == shopType
          ? _value.shopType
          : shopType // ignore: cast_nullable_to_non_nullable
              as String?,
      isPendingReview: freezed == isPendingReview
          ? _value.isPendingReview
          : isPendingReview // ignore: cast_nullable_to_non_nullable
              as bool?,
      awaitingCustomerCompletion: freezed == awaitingCustomerCompletion
          ? _value.awaitingCustomerCompletion
          : awaitingCustomerCompletion // ignore: cast_nullable_to_non_nullable
              as bool?,
      requiresPrescriptionReview: freezed == requiresPrescriptionReview
          ? _value.requiresPrescriptionReview
          : requiresPrescriptionReview // ignore: cast_nullable_to_non_nullable
              as bool?,
      insuranceApplied: freezed == insuranceApplied
          ? _value.insuranceApplied
          : insuranceApplied // ignore: cast_nullable_to_non_nullable
              as bool?,
      orderType: freezed == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as String?,
      availableReturnOrder: freezed == availableReturnOrder
          ? _value.availableReturnOrder
          : availableReturnOrder // ignore: cast_nullable_to_non_nullable
              as bool?,
      showButtonPay: freezed == showButtonPay
          ? _value.showButtonPay
          : showButtonPay // ignore: cast_nullable_to_non_nullable
              as bool?,
      loyaltyPointsApplied: freezed == loyaltyPointsApplied
          ? _value.loyaltyPointsApplied
          : loyaltyPointsApplied // ignore: cast_nullable_to_non_nullable
              as bool?,
      loyaltyPoints: freezed == loyaltyPoints
          ? _value.loyaltyPoints
          : loyaltyPoints // ignore: cast_nullable_to_non_nullable
              as int?,
      expectedLoyaltyPoints: freezed == expectedLoyaltyPoints
          ? _value.expectedLoyaltyPoints
          : expectedLoyaltyPoints // ignore: cast_nullable_to_non_nullable
              as int?,
      bagCount: freezed == bagCount
          ? _value.bagCount
          : bagCount // ignore: cast_nullable_to_non_nullable
              as int?,
      totalItems: freezed == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int?,
      soldByType: freezed == soldByType
          ? _value.soldByType
          : soldByType // ignore: cast_nullable_to_non_nullable
              as String?,
      soldByName: freezed == soldByName
          ? _value.soldByName
          : soldByName // ignore: cast_nullable_to_non_nullable
              as String?,
      subtotal: freezed == subtotal
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as String?,
      shipping: freezed == shipping
          ? _value.shipping
          : shipping // ignore: cast_nullable_to_non_nullable
              as String?,
      tax: freezed == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as String?,
      couponDiscount: freezed == couponDiscount
          ? _value.couponDiscount
          : couponDiscount // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceFees: freezed == serviceFees
          ? _value.serviceFees
          : serviceFees // ignore: cast_nullable_to_non_nullable
              as String?,
      environmentFees: freezed == environmentFees
          ? _value.environmentFees
          : environmentFees // ignore: cast_nullable_to_non_nullable
              as String?,
      technologyFees: freezed == technologyFees
          ? _value.technologyFees
          : technologyFees // ignore: cast_nullable_to_non_nullable
              as String?,
      vatFeeAmount: freezed == vatFeeAmount
          ? _value.vatFeeAmount
          : vatFeeAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      totalFeeAmount: freezed == totalFeeAmount
          ? _value.totalFeeAmount
          : totalFeeAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      loyaltyPointsValue: freezed == loyaltyPointsValue
          ? _value.loyaltyPointsValue
          : loyaltyPointsValue // ignore: cast_nullable_to_non_nullable
              as String?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      cancelReason: freezed == cancelReason
          ? _value.cancelReason
          : cancelReason // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryStatusConst: freezed == deliveryStatusConst
          ? _value.deliveryStatusConst
          : deliveryStatusConst // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryStatus: freezed == deliveryStatus
          ? _value.deliveryStatus
          : deliveryStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryViewed: freezed == deliveryViewed
          ? _value.deliveryViewed
          : deliveryViewed // ignore: cast_nullable_to_non_nullable
              as bool?,
      paymentStatusViewed: freezed == paymentStatusViewed
          ? _value.paymentStatusViewed
          : paymentStatusViewed // ignore: cast_nullable_to_non_nullable
              as bool?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
      paymentStatusText: freezed == paymentStatusText
          ? _value.paymentStatusText
          : paymentStatusText // ignore: cast_nullable_to_non_nullable
              as String?,
      availableCancelOrder: freezed == availableCancelOrder
          ? _value.availableCancelOrder
          : availableCancelOrder // ignore: cast_nullable_to_non_nullable
              as bool?,
      additionalInfo: freezed == additionalInfo
          ? _value.additionalInfo
          : additionalInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethodKey: freezed == paymentMethodKey
          ? _value.paymentMethodKey
          : paymentMethodKey // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingMethod: freezed == shippingMethod
          ? _value.shippingMethod
          : shippingMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      orderStatus: freezed == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      orderDate: freezed == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingAddress: freezed == shippingAddress
          ? _value.shippingAddress
          : shippingAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      customerEmail: freezed == customerEmail
          ? _value.customerEmail
          : customerEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      customerPhone: freezed == customerPhone
          ? _value.customerPhone
          : customerPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      returnReason: freezed == returnReason
          ? _value.returnReason
          : returnReason // ignore: cast_nullable_to_non_nullable
              as String?,
      orderDetails: null == orderDetails
          ? _value.orderDetails
          : orderDetails // ignore: cast_nullable_to_non_nullable
              as List<PharmacyOrderItemModel>,
      shippingType: freezed == shippingType
          ? _value.shippingType
          : shippingType // ignore: cast_nullable_to_non_nullable
              as String?,
      driverNotes: freezed == driverNotes
          ? _value.driverNotes
          : driverNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      pickerNotes: freezed == pickerNotes
          ? _value.pickerNotes
          : pickerNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      insuranceAttachments: null == insuranceAttachments
          ? _value.insuranceAttachments
          : insuranceAttachments // ignore: cast_nullable_to_non_nullable
              as List<PharmacyAttachmentModel>,
      prescriptionAttachments: null == prescriptionAttachments
          ? _value.prescriptionAttachments
          : prescriptionAttachments // ignore: cast_nullable_to_non_nullable
              as List<PharmacyAttachmentModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PharmacyOrderDetailsModelCopyWith<$Res>
    implements $PharmacyOrderDetailsModelCopyWith<$Res> {
  factory _$$_PharmacyOrderDetailsModelCopyWith(
          _$_PharmacyOrderDetailsModel value,
          $Res Function(_$_PharmacyOrderDetailsModel) then) =
      __$$_PharmacyOrderDetailsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? code,
      @JsonKey(name: 'shop_type') String? shopType,
      @JsonKey(name: 'is_pending_review') bool? isPendingReview,
      @JsonKey(name: 'awaiting_customer_completion')
      bool? awaitingCustomerCompletion,
      @JsonKey(name: 'requires_prescription_review')
      bool? requiresPrescriptionReview,
      @JsonKey(name: 'insurance_applied') bool? insuranceApplied,
      @JsonKey(name: 'order_type') String? orderType,
      @JsonKey(name: 'available_return_order') bool? availableReturnOrder,
      @JsonKey(name: 'show_button_pay') bool? showButtonPay,
      @JsonKey(name: 'loyalty_points_applied') bool? loyaltyPointsApplied,
      @JsonKey(name: 'loyalty_points') int? loyaltyPoints,
      @JsonKey(name: 'expected_loyalty_points') int? expectedLoyaltyPoints,
      @JsonKey(name: 'bag_count') int? bagCount,
      @JsonKey(name: 'total_items') int? totalItems,
      @JsonKey(name: 'sold_by_type') String? soldByType,
      @JsonKey(name: 'sold_by_name') String? soldByName,
      String? subtotal,
      String? shipping,
      String? tax,
      @JsonKey(name: 'coupon_discount') String? couponDiscount,
      @JsonKey(name: 'service_fees') String? serviceFees,
      @JsonKey(name: 'environment_fees') String? environmentFees,
      @JsonKey(name: 'technology_fees') String? technologyFees,
      @JsonKey(name: 'vat_fee_amount') String? vatFeeAmount,
      @JsonKey(name: 'total_fee_amount') String? totalFeeAmount,
      @JsonKey(name: 'loyalty_points_value') String? loyaltyPointsValue,
      String? total,
      String? date,
      @JsonKey(name: 'cancel_reason') String? cancelReason,
      @JsonKey(name: 'delivery_status_const') String? deliveryStatusConst,
      @JsonKey(name: 'delivery_status') String? deliveryStatus,
      @JsonKey(name: 'delivery_viewed') bool? deliveryViewed,
      @JsonKey(name: 'payment_status_viewed') bool? paymentStatusViewed,
      @JsonKey(name: 'payment_status') bool? paymentStatus,
      @JsonKey(name: 'payment_status_text') String? paymentStatusText,
      @JsonKey(name: 'available_cancel_order') bool? availableCancelOrder,
      @JsonKey(name: 'additional_info') String? additionalInfo,
      @JsonKey(name: 'payment_method') String? paymentMethod,
      @JsonKey(name: 'payment_method_key') String? paymentMethodKey,
      @JsonKey(name: 'shipping_method') String? shippingMethod,
      @JsonKey(name: 'order_status') String? orderStatus,
      @JsonKey(name: 'order_date') String? orderDate,
      @JsonKey(name: 'shipping_address') String? shippingAddress,
      @JsonKey(name: 'customer_name') String? customerName,
      @JsonKey(name: 'customer_email') String? customerEmail,
      @JsonKey(name: 'customer_phone') String? customerPhone,
      @JsonKey(name: 'return_reason') String? returnReason,
      @JsonKey(name: 'order_details') List<PharmacyOrderItemModel> orderDetails,
      @JsonKey(name: 'shipping_type') String? shippingType,
      @JsonKey(name: 'driver_notes') String? driverNotes,
      @JsonKey(name: 'picker_notes') String? pickerNotes,
      @JsonKey(name: 'insurance_attachments')
      List<PharmacyAttachmentModel> insuranceAttachments,
      @JsonKey(name: 'prescription_attachments')
      List<PharmacyAttachmentModel> prescriptionAttachments});
}

/// @nodoc
class __$$_PharmacyOrderDetailsModelCopyWithImpl<$Res>
    extends _$PharmacyOrderDetailsModelCopyWithImpl<$Res,
        _$_PharmacyOrderDetailsModel>
    implements _$$_PharmacyOrderDetailsModelCopyWith<$Res> {
  __$$_PharmacyOrderDetailsModelCopyWithImpl(
      _$_PharmacyOrderDetailsModel _value,
      $Res Function(_$_PharmacyOrderDetailsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? shopType = freezed,
    Object? isPendingReview = freezed,
    Object? awaitingCustomerCompletion = freezed,
    Object? requiresPrescriptionReview = freezed,
    Object? insuranceApplied = freezed,
    Object? orderType = freezed,
    Object? availableReturnOrder = freezed,
    Object? showButtonPay = freezed,
    Object? loyaltyPointsApplied = freezed,
    Object? loyaltyPoints = freezed,
    Object? expectedLoyaltyPoints = freezed,
    Object? bagCount = freezed,
    Object? totalItems = freezed,
    Object? soldByType = freezed,
    Object? soldByName = freezed,
    Object? subtotal = freezed,
    Object? shipping = freezed,
    Object? tax = freezed,
    Object? couponDiscount = freezed,
    Object? serviceFees = freezed,
    Object? environmentFees = freezed,
    Object? technologyFees = freezed,
    Object? vatFeeAmount = freezed,
    Object? totalFeeAmount = freezed,
    Object? loyaltyPointsValue = freezed,
    Object? total = freezed,
    Object? date = freezed,
    Object? cancelReason = freezed,
    Object? deliveryStatusConst = freezed,
    Object? deliveryStatus = freezed,
    Object? deliveryViewed = freezed,
    Object? paymentStatusViewed = freezed,
    Object? paymentStatus = freezed,
    Object? paymentStatusText = freezed,
    Object? availableCancelOrder = freezed,
    Object? additionalInfo = freezed,
    Object? paymentMethod = freezed,
    Object? paymentMethodKey = freezed,
    Object? shippingMethod = freezed,
    Object? orderStatus = freezed,
    Object? orderDate = freezed,
    Object? shippingAddress = freezed,
    Object? customerName = freezed,
    Object? customerEmail = freezed,
    Object? customerPhone = freezed,
    Object? returnReason = freezed,
    Object? orderDetails = null,
    Object? shippingType = freezed,
    Object? driverNotes = freezed,
    Object? pickerNotes = freezed,
    Object? insuranceAttachments = null,
    Object? prescriptionAttachments = null,
  }) {
    return _then(_$_PharmacyOrderDetailsModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      shopType: freezed == shopType
          ? _value.shopType
          : shopType // ignore: cast_nullable_to_non_nullable
              as String?,
      isPendingReview: freezed == isPendingReview
          ? _value.isPendingReview
          : isPendingReview // ignore: cast_nullable_to_non_nullable
              as bool?,
      awaitingCustomerCompletion: freezed == awaitingCustomerCompletion
          ? _value.awaitingCustomerCompletion
          : awaitingCustomerCompletion // ignore: cast_nullable_to_non_nullable
              as bool?,
      requiresPrescriptionReview: freezed == requiresPrescriptionReview
          ? _value.requiresPrescriptionReview
          : requiresPrescriptionReview // ignore: cast_nullable_to_non_nullable
              as bool?,
      insuranceApplied: freezed == insuranceApplied
          ? _value.insuranceApplied
          : insuranceApplied // ignore: cast_nullable_to_non_nullable
              as bool?,
      orderType: freezed == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as String?,
      availableReturnOrder: freezed == availableReturnOrder
          ? _value.availableReturnOrder
          : availableReturnOrder // ignore: cast_nullable_to_non_nullable
              as bool?,
      showButtonPay: freezed == showButtonPay
          ? _value.showButtonPay
          : showButtonPay // ignore: cast_nullable_to_non_nullable
              as bool?,
      loyaltyPointsApplied: freezed == loyaltyPointsApplied
          ? _value.loyaltyPointsApplied
          : loyaltyPointsApplied // ignore: cast_nullable_to_non_nullable
              as bool?,
      loyaltyPoints: freezed == loyaltyPoints
          ? _value.loyaltyPoints
          : loyaltyPoints // ignore: cast_nullable_to_non_nullable
              as int?,
      expectedLoyaltyPoints: freezed == expectedLoyaltyPoints
          ? _value.expectedLoyaltyPoints
          : expectedLoyaltyPoints // ignore: cast_nullable_to_non_nullable
              as int?,
      bagCount: freezed == bagCount
          ? _value.bagCount
          : bagCount // ignore: cast_nullable_to_non_nullable
              as int?,
      totalItems: freezed == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int?,
      soldByType: freezed == soldByType
          ? _value.soldByType
          : soldByType // ignore: cast_nullable_to_non_nullable
              as String?,
      soldByName: freezed == soldByName
          ? _value.soldByName
          : soldByName // ignore: cast_nullable_to_non_nullable
              as String?,
      subtotal: freezed == subtotal
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as String?,
      shipping: freezed == shipping
          ? _value.shipping
          : shipping // ignore: cast_nullable_to_non_nullable
              as String?,
      tax: freezed == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as String?,
      couponDiscount: freezed == couponDiscount
          ? _value.couponDiscount
          : couponDiscount // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceFees: freezed == serviceFees
          ? _value.serviceFees
          : serviceFees // ignore: cast_nullable_to_non_nullable
              as String?,
      environmentFees: freezed == environmentFees
          ? _value.environmentFees
          : environmentFees // ignore: cast_nullable_to_non_nullable
              as String?,
      technologyFees: freezed == technologyFees
          ? _value.technologyFees
          : technologyFees // ignore: cast_nullable_to_non_nullable
              as String?,
      vatFeeAmount: freezed == vatFeeAmount
          ? _value.vatFeeAmount
          : vatFeeAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      totalFeeAmount: freezed == totalFeeAmount
          ? _value.totalFeeAmount
          : totalFeeAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      loyaltyPointsValue: freezed == loyaltyPointsValue
          ? _value.loyaltyPointsValue
          : loyaltyPointsValue // ignore: cast_nullable_to_non_nullable
              as String?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      cancelReason: freezed == cancelReason
          ? _value.cancelReason
          : cancelReason // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryStatusConst: freezed == deliveryStatusConst
          ? _value.deliveryStatusConst
          : deliveryStatusConst // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryStatus: freezed == deliveryStatus
          ? _value.deliveryStatus
          : deliveryStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryViewed: freezed == deliveryViewed
          ? _value.deliveryViewed
          : deliveryViewed // ignore: cast_nullable_to_non_nullable
              as bool?,
      paymentStatusViewed: freezed == paymentStatusViewed
          ? _value.paymentStatusViewed
          : paymentStatusViewed // ignore: cast_nullable_to_non_nullable
              as bool?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
      paymentStatusText: freezed == paymentStatusText
          ? _value.paymentStatusText
          : paymentStatusText // ignore: cast_nullable_to_non_nullable
              as String?,
      availableCancelOrder: freezed == availableCancelOrder
          ? _value.availableCancelOrder
          : availableCancelOrder // ignore: cast_nullable_to_non_nullable
              as bool?,
      additionalInfo: freezed == additionalInfo
          ? _value.additionalInfo
          : additionalInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethodKey: freezed == paymentMethodKey
          ? _value.paymentMethodKey
          : paymentMethodKey // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingMethod: freezed == shippingMethod
          ? _value.shippingMethod
          : shippingMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      orderStatus: freezed == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      orderDate: freezed == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingAddress: freezed == shippingAddress
          ? _value.shippingAddress
          : shippingAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      customerEmail: freezed == customerEmail
          ? _value.customerEmail
          : customerEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      customerPhone: freezed == customerPhone
          ? _value.customerPhone
          : customerPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      returnReason: freezed == returnReason
          ? _value.returnReason
          : returnReason // ignore: cast_nullable_to_non_nullable
              as String?,
      orderDetails: null == orderDetails
          ? _value._orderDetails
          : orderDetails // ignore: cast_nullable_to_non_nullable
              as List<PharmacyOrderItemModel>,
      shippingType: freezed == shippingType
          ? _value.shippingType
          : shippingType // ignore: cast_nullable_to_non_nullable
              as String?,
      driverNotes: freezed == driverNotes
          ? _value.driverNotes
          : driverNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      pickerNotes: freezed == pickerNotes
          ? _value.pickerNotes
          : pickerNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      insuranceAttachments: null == insuranceAttachments
          ? _value._insuranceAttachments
          : insuranceAttachments // ignore: cast_nullable_to_non_nullable
              as List<PharmacyAttachmentModel>,
      prescriptionAttachments: null == prescriptionAttachments
          ? _value._prescriptionAttachments
          : prescriptionAttachments // ignore: cast_nullable_to_non_nullable
              as List<PharmacyAttachmentModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_PharmacyOrderDetailsModel extends _PharmacyOrderDetailsModel {
  const _$_PharmacyOrderDetailsModel(
      {this.id,
      this.code,
      @JsonKey(name: 'shop_type') this.shopType,
      @JsonKey(name: 'is_pending_review') this.isPendingReview,
      @JsonKey(name: 'awaiting_customer_completion')
      this.awaitingCustomerCompletion,
      @JsonKey(name: 'requires_prescription_review')
      this.requiresPrescriptionReview,
      @JsonKey(name: 'insurance_applied') this.insuranceApplied,
      @JsonKey(name: 'order_type') this.orderType,
      @JsonKey(name: 'available_return_order') this.availableReturnOrder,
      @JsonKey(name: 'show_button_pay') this.showButtonPay,
      @JsonKey(name: 'loyalty_points_applied') this.loyaltyPointsApplied,
      @JsonKey(name: 'loyalty_points') this.loyaltyPoints,
      @JsonKey(name: 'expected_loyalty_points') this.expectedLoyaltyPoints,
      @JsonKey(name: 'bag_count') this.bagCount,
      @JsonKey(name: 'total_items') this.totalItems,
      @JsonKey(name: 'sold_by_type') this.soldByType,
      @JsonKey(name: 'sold_by_name') this.soldByName,
      this.subtotal,
      this.shipping,
      this.tax,
      @JsonKey(name: 'coupon_discount') this.couponDiscount,
      @JsonKey(name: 'service_fees') this.serviceFees,
      @JsonKey(name: 'environment_fees') this.environmentFees,
      @JsonKey(name: 'technology_fees') this.technologyFees,
      @JsonKey(name: 'vat_fee_amount') this.vatFeeAmount,
      @JsonKey(name: 'total_fee_amount') this.totalFeeAmount,
      @JsonKey(name: 'loyalty_points_value') this.loyaltyPointsValue,
      this.total,
      this.date,
      @JsonKey(name: 'cancel_reason') this.cancelReason,
      @JsonKey(name: 'delivery_status_const') this.deliveryStatusConst,
      @JsonKey(name: 'delivery_status') this.deliveryStatus,
      @JsonKey(name: 'delivery_viewed') this.deliveryViewed,
      @JsonKey(name: 'payment_status_viewed') this.paymentStatusViewed,
      @JsonKey(name: 'payment_status') this.paymentStatus,
      @JsonKey(name: 'payment_status_text') this.paymentStatusText,
      @JsonKey(name: 'available_cancel_order') this.availableCancelOrder,
      @JsonKey(name: 'additional_info') this.additionalInfo,
      @JsonKey(name: 'payment_method') this.paymentMethod,
      @JsonKey(name: 'payment_method_key') this.paymentMethodKey,
      @JsonKey(name: 'shipping_method') this.shippingMethod,
      @JsonKey(name: 'order_status') this.orderStatus,
      @JsonKey(name: 'order_date') this.orderDate,
      @JsonKey(name: 'shipping_address') this.shippingAddress,
      @JsonKey(name: 'customer_name') this.customerName,
      @JsonKey(name: 'customer_email') this.customerEmail,
      @JsonKey(name: 'customer_phone') this.customerPhone,
      @JsonKey(name: 'return_reason') this.returnReason,
      @JsonKey(name: 'order_details')
      final List<PharmacyOrderItemModel> orderDetails = const [],
      @JsonKey(name: 'shipping_type') this.shippingType,
      @JsonKey(name: 'driver_notes') this.driverNotes,
      @JsonKey(name: 'picker_notes') this.pickerNotes,
      @JsonKey(name: 'insurance_attachments')
      final List<PharmacyAttachmentModel> insuranceAttachments = const [],
      @JsonKey(name: 'prescription_attachments')
      final List<PharmacyAttachmentModel> prescriptionAttachments = const []})
      : _orderDetails = orderDetails,
        _insuranceAttachments = insuranceAttachments,
        _prescriptionAttachments = prescriptionAttachments,
        super._();

  factory _$_PharmacyOrderDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$$_PharmacyOrderDetailsModelFromJson(json);

  @override
  final int? id;
  @override
  final String? code;
  @override
  @JsonKey(name: 'shop_type')
  final String? shopType;
  @override
  @JsonKey(name: 'is_pending_review')
  final bool? isPendingReview;
  @override
  @JsonKey(name: 'awaiting_customer_completion')
  final bool? awaitingCustomerCompletion;
  @override
  @JsonKey(name: 'requires_prescription_review')
  final bool? requiresPrescriptionReview;
  @override
  @JsonKey(name: 'insurance_applied')
  final bool? insuranceApplied;
  @override
  @JsonKey(name: 'order_type')
  final String? orderType;
  @override
  @JsonKey(name: 'available_return_order')
  final bool? availableReturnOrder;
  @override
  @JsonKey(name: 'show_button_pay')
  final bool? showButtonPay;
  @override
  @JsonKey(name: 'loyalty_points_applied')
  final bool? loyaltyPointsApplied;
  @override
  @JsonKey(name: 'loyalty_points')
  final int? loyaltyPoints;
  @override
  @JsonKey(name: 'expected_loyalty_points')
  final int? expectedLoyaltyPoints;
  @override
  @JsonKey(name: 'bag_count')
  final int? bagCount;
  @override
  @JsonKey(name: 'total_items')
  final int? totalItems;
  @override
  @JsonKey(name: 'sold_by_type')
  final String? soldByType;
  @override
  @JsonKey(name: 'sold_by_name')
  final String? soldByName;
  @override
  final String? subtotal;
  @override
  final String? shipping;
  @override
  final String? tax;
  @override
  @JsonKey(name: 'coupon_discount')
  final String? couponDiscount;
  @override
  @JsonKey(name: 'service_fees')
  final String? serviceFees;
  @override
  @JsonKey(name: 'environment_fees')
  final String? environmentFees;
  @override
  @JsonKey(name: 'technology_fees')
  final String? technologyFees;
  @override
  @JsonKey(name: 'vat_fee_amount')
  final String? vatFeeAmount;
  @override
  @JsonKey(name: 'total_fee_amount')
  final String? totalFeeAmount;
  @override
  @JsonKey(name: 'loyalty_points_value')
  final String? loyaltyPointsValue;
  @override
  final String? total;
  @override
  final String? date;
  @override
  @JsonKey(name: 'cancel_reason')
  final String? cancelReason;
  @override
  @JsonKey(name: 'delivery_status_const')
  final String? deliveryStatusConst;
  @override
  @JsonKey(name: 'delivery_status')
  final String? deliveryStatus;
  @override
  @JsonKey(name: 'delivery_viewed')
  final bool? deliveryViewed;
  @override
  @JsonKey(name: 'payment_status_viewed')
  final bool? paymentStatusViewed;
  @override
  @JsonKey(name: 'payment_status')
  final bool? paymentStatus;
  @override
  @JsonKey(name: 'payment_status_text')
  final String? paymentStatusText;
  @override
  @JsonKey(name: 'available_cancel_order')
  final bool? availableCancelOrder;
  @override
  @JsonKey(name: 'additional_info')
  final String? additionalInfo;
  @override
  @JsonKey(name: 'payment_method')
  final String? paymentMethod;
  @override
  @JsonKey(name: 'payment_method_key')
  final String? paymentMethodKey;
  @override
  @JsonKey(name: 'shipping_method')
  final String? shippingMethod;
  @override
  @JsonKey(name: 'order_status')
  final String? orderStatus;
  @override
  @JsonKey(name: 'order_date')
  final String? orderDate;
  @override
  @JsonKey(name: 'shipping_address')
  final String? shippingAddress;
  @override
  @JsonKey(name: 'customer_name')
  final String? customerName;
  @override
  @JsonKey(name: 'customer_email')
  final String? customerEmail;
  @override
  @JsonKey(name: 'customer_phone')
  final String? customerPhone;
  @override
  @JsonKey(name: 'return_reason')
  final String? returnReason;
  final List<PharmacyOrderItemModel> _orderDetails;
  @override
  @JsonKey(name: 'order_details')
  List<PharmacyOrderItemModel> get orderDetails {
    if (_orderDetails is EqualUnmodifiableListView) return _orderDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderDetails);
  }

  @override
  @JsonKey(name: 'shipping_type')
  final String? shippingType;
  @override
  @JsonKey(name: 'driver_notes')
  final String? driverNotes;
  @override
  @JsonKey(name: 'picker_notes')
  final String? pickerNotes;
  final List<PharmacyAttachmentModel> _insuranceAttachments;
  @override
  @JsonKey(name: 'insurance_attachments')
  List<PharmacyAttachmentModel> get insuranceAttachments {
    if (_insuranceAttachments is EqualUnmodifiableListView)
      return _insuranceAttachments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_insuranceAttachments);
  }

  final List<PharmacyAttachmentModel> _prescriptionAttachments;
  @override
  @JsonKey(name: 'prescription_attachments')
  List<PharmacyAttachmentModel> get prescriptionAttachments {
    if (_prescriptionAttachments is EqualUnmodifiableListView)
      return _prescriptionAttachments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_prescriptionAttachments);
  }

  @override
  String toString() {
    return 'PharmacyOrderDetailsModel(id: $id, code: $code, shopType: $shopType, isPendingReview: $isPendingReview, awaitingCustomerCompletion: $awaitingCustomerCompletion, requiresPrescriptionReview: $requiresPrescriptionReview, insuranceApplied: $insuranceApplied, orderType: $orderType, availableReturnOrder: $availableReturnOrder, showButtonPay: $showButtonPay, loyaltyPointsApplied: $loyaltyPointsApplied, loyaltyPoints: $loyaltyPoints, expectedLoyaltyPoints: $expectedLoyaltyPoints, bagCount: $bagCount, totalItems: $totalItems, soldByType: $soldByType, soldByName: $soldByName, subtotal: $subtotal, shipping: $shipping, tax: $tax, couponDiscount: $couponDiscount, serviceFees: $serviceFees, environmentFees: $environmentFees, technologyFees: $technologyFees, vatFeeAmount: $vatFeeAmount, totalFeeAmount: $totalFeeAmount, loyaltyPointsValue: $loyaltyPointsValue, total: $total, date: $date, cancelReason: $cancelReason, deliveryStatusConst: $deliveryStatusConst, deliveryStatus: $deliveryStatus, deliveryViewed: $deliveryViewed, paymentStatusViewed: $paymentStatusViewed, paymentStatus: $paymentStatus, paymentStatusText: $paymentStatusText, availableCancelOrder: $availableCancelOrder, additionalInfo: $additionalInfo, paymentMethod: $paymentMethod, paymentMethodKey: $paymentMethodKey, shippingMethod: $shippingMethod, orderStatus: $orderStatus, orderDate: $orderDate, shippingAddress: $shippingAddress, customerName: $customerName, customerEmail: $customerEmail, customerPhone: $customerPhone, returnReason: $returnReason, orderDetails: $orderDetails, shippingType: $shippingType, driverNotes: $driverNotes, pickerNotes: $pickerNotes, insuranceAttachments: $insuranceAttachments, prescriptionAttachments: $prescriptionAttachments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PharmacyOrderDetailsModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.shopType, shopType) ||
                other.shopType == shopType) &&
            (identical(other.isPendingReview, isPendingReview) ||
                other.isPendingReview == isPendingReview) &&
            (identical(other.awaitingCustomerCompletion, awaitingCustomerCompletion) ||
                other.awaitingCustomerCompletion ==
                    awaitingCustomerCompletion) &&
            (identical(other.requiresPrescriptionReview, requiresPrescriptionReview) ||
                other.requiresPrescriptionReview ==
                    requiresPrescriptionReview) &&
            (identical(other.insuranceApplied, insuranceApplied) ||
                other.insuranceApplied == insuranceApplied) &&
            (identical(other.orderType, orderType) ||
                other.orderType == orderType) &&
            (identical(other.availableReturnOrder, availableReturnOrder) ||
                other.availableReturnOrder == availableReturnOrder) &&
            (identical(other.showButtonPay, showButtonPay) ||
                other.showButtonPay == showButtonPay) &&
            (identical(other.loyaltyPointsApplied, loyaltyPointsApplied) ||
                other.loyaltyPointsApplied == loyaltyPointsApplied) &&
            (identical(other.loyaltyPoints, loyaltyPoints) ||
                other.loyaltyPoints == loyaltyPoints) &&
            (identical(other.expectedLoyaltyPoints, expectedLoyaltyPoints) ||
                other.expectedLoyaltyPoints == expectedLoyaltyPoints) &&
            (identical(other.bagCount, bagCount) ||
                other.bagCount == bagCount) &&
            (identical(other.totalItems, totalItems) ||
                other.totalItems == totalItems) &&
            (identical(other.soldByType, soldByType) ||
                other.soldByType == soldByType) &&
            (identical(other.soldByName, soldByName) ||
                other.soldByName == soldByName) &&
            (identical(other.subtotal, subtotal) ||
                other.subtotal == subtotal) &&
            (identical(other.shipping, shipping) ||
                other.shipping == shipping) &&
            (identical(other.tax, tax) || other.tax == tax) &&
            (identical(other.couponDiscount, couponDiscount) ||
                other.couponDiscount == couponDiscount) &&
            (identical(other.serviceFees, serviceFees) ||
                other.serviceFees == serviceFees) &&
            (identical(other.environmentFees, environmentFees) ||
                other.environmentFees == environmentFees) &&
            (identical(other.technologyFees, technologyFees) ||
                other.technologyFees == technologyFees) &&
            (identical(other.vatFeeAmount, vatFeeAmount) ||
                other.vatFeeAmount == vatFeeAmount) &&
            (identical(other.totalFeeAmount, totalFeeAmount) ||
                other.totalFeeAmount == totalFeeAmount) &&
            (identical(other.loyaltyPointsValue, loyaltyPointsValue) ||
                other.loyaltyPointsValue == loyaltyPointsValue) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.cancelReason, cancelReason) ||
                other.cancelReason == cancelReason) &&
            (identical(other.deliveryStatusConst, deliveryStatusConst) ||
                other.deliveryStatusConst == deliveryStatusConst) &&
            (identical(other.deliveryStatus, deliveryStatus) ||
                other.deliveryStatus == deliveryStatus) &&
            (identical(other.deliveryViewed, deliveryViewed) ||
                other.deliveryViewed == deliveryViewed) &&
            (identical(other.paymentStatusViewed, paymentStatusViewed) ||
                other.paymentStatusViewed == paymentStatusViewed) &&
            (identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus) &&
            (identical(other.paymentStatusText, paymentStatusText) || other.paymentStatusText == paymentStatusText) &&
            (identical(other.availableCancelOrder, availableCancelOrder) || other.availableCancelOrder == availableCancelOrder) &&
            (identical(other.additionalInfo, additionalInfo) || other.additionalInfo == additionalInfo) &&
            (identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod) &&
            (identical(other.paymentMethodKey, paymentMethodKey) || other.paymentMethodKey == paymentMethodKey) &&
            (identical(other.shippingMethod, shippingMethod) || other.shippingMethod == shippingMethod) &&
            (identical(other.orderStatus, orderStatus) || other.orderStatus == orderStatus) &&
            (identical(other.orderDate, orderDate) || other.orderDate == orderDate) &&
            (identical(other.shippingAddress, shippingAddress) || other.shippingAddress == shippingAddress) &&
            (identical(other.customerName, customerName) || other.customerName == customerName) &&
            (identical(other.customerEmail, customerEmail) || other.customerEmail == customerEmail) &&
            (identical(other.customerPhone, customerPhone) || other.customerPhone == customerPhone) &&
            (identical(other.returnReason, returnReason) || other.returnReason == returnReason) &&
            const DeepCollectionEquality().equals(other._orderDetails, _orderDetails) &&
            (identical(other.shippingType, shippingType) || other.shippingType == shippingType) &&
            (identical(other.driverNotes, driverNotes) || other.driverNotes == driverNotes) &&
            (identical(other.pickerNotes, pickerNotes) || other.pickerNotes == pickerNotes) &&
            const DeepCollectionEquality().equals(other._insuranceAttachments, _insuranceAttachments) &&
            const DeepCollectionEquality().equals(other._prescriptionAttachments, _prescriptionAttachments));
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
        availableReturnOrder,
        showButtonPay,
        loyaltyPointsApplied,
        loyaltyPoints,
        expectedLoyaltyPoints,
        bagCount,
        totalItems,
        soldByType,
        soldByName,
        subtotal,
        shipping,
        tax,
        couponDiscount,
        serviceFees,
        environmentFees,
        technologyFees,
        vatFeeAmount,
        totalFeeAmount,
        loyaltyPointsValue,
        total,
        date,
        cancelReason,
        deliveryStatusConst,
        deliveryStatus,
        deliveryViewed,
        paymentStatusViewed,
        paymentStatus,
        paymentStatusText,
        availableCancelOrder,
        additionalInfo,
        paymentMethod,
        paymentMethodKey,
        shippingMethod,
        orderStatus,
        orderDate,
        shippingAddress,
        customerName,
        customerEmail,
        customerPhone,
        returnReason,
        const DeepCollectionEquality().hash(_orderDetails),
        shippingType,
        driverNotes,
        pickerNotes,
        const DeepCollectionEquality().hash(_insuranceAttachments),
        const DeepCollectionEquality().hash(_prescriptionAttachments)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PharmacyOrderDetailsModelCopyWith<_$_PharmacyOrderDetailsModel>
      get copyWith => __$$_PharmacyOrderDetailsModelCopyWithImpl<
          _$_PharmacyOrderDetailsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PharmacyOrderDetailsModelToJson(
      this,
    );
  }
}

abstract class _PharmacyOrderDetailsModel extends PharmacyOrderDetailsModel {
  const factory _PharmacyOrderDetailsModel(
      {final int? id,
      final String? code,
      @JsonKey(name: 'shop_type') final String? shopType,
      @JsonKey(name: 'is_pending_review') final bool? isPendingReview,
      @JsonKey(name: 'awaiting_customer_completion')
      final bool? awaitingCustomerCompletion,
      @JsonKey(name: 'requires_prescription_review')
      final bool? requiresPrescriptionReview,
      @JsonKey(name: 'insurance_applied') final bool? insuranceApplied,
      @JsonKey(name: 'order_type') final String? orderType,
      @JsonKey(name: 'available_return_order') final bool? availableReturnOrder,
      @JsonKey(name: 'show_button_pay') final bool? showButtonPay,
      @JsonKey(name: 'loyalty_points_applied') final bool? loyaltyPointsApplied,
      @JsonKey(name: 'loyalty_points') final int? loyaltyPoints,
      @JsonKey(name: 'expected_loyalty_points')
      final int? expectedLoyaltyPoints,
      @JsonKey(name: 'bag_count') final int? bagCount,
      @JsonKey(name: 'total_items') final int? totalItems,
      @JsonKey(name: 'sold_by_type') final String? soldByType,
      @JsonKey(name: 'sold_by_name') final String? soldByName,
      final String? subtotal,
      final String? shipping,
      final String? tax,
      @JsonKey(name: 'coupon_discount') final String? couponDiscount,
      @JsonKey(name: 'service_fees') final String? serviceFees,
      @JsonKey(name: 'environment_fees') final String? environmentFees,
      @JsonKey(name: 'technology_fees') final String? technologyFees,
      @JsonKey(name: 'vat_fee_amount') final String? vatFeeAmount,
      @JsonKey(name: 'total_fee_amount') final String? totalFeeAmount,
      @JsonKey(name: 'loyalty_points_value') final String? loyaltyPointsValue,
      final String? total,
      final String? date,
      @JsonKey(name: 'cancel_reason') final String? cancelReason,
      @JsonKey(name: 'delivery_status_const') final String? deliveryStatusConst,
      @JsonKey(name: 'delivery_status') final String? deliveryStatus,
      @JsonKey(name: 'delivery_viewed') final bool? deliveryViewed,
      @JsonKey(name: 'payment_status_viewed') final bool? paymentStatusViewed,
      @JsonKey(name: 'payment_status') final bool? paymentStatus,
      @JsonKey(name: 'payment_status_text') final String? paymentStatusText,
      @JsonKey(name: 'available_cancel_order') final bool? availableCancelOrder,
      @JsonKey(name: 'additional_info') final String? additionalInfo,
      @JsonKey(name: 'payment_method') final String? paymentMethod,
      @JsonKey(name: 'payment_method_key') final String? paymentMethodKey,
      @JsonKey(name: 'shipping_method') final String? shippingMethod,
      @JsonKey(name: 'order_status') final String? orderStatus,
      @JsonKey(name: 'order_date') final String? orderDate,
      @JsonKey(name: 'shipping_address') final String? shippingAddress,
      @JsonKey(name: 'customer_name') final String? customerName,
      @JsonKey(name: 'customer_email') final String? customerEmail,
      @JsonKey(name: 'customer_phone') final String? customerPhone,
      @JsonKey(name: 'return_reason') final String? returnReason,
      @JsonKey(name: 'order_details')
      final List<PharmacyOrderItemModel> orderDetails,
      @JsonKey(name: 'shipping_type') final String? shippingType,
      @JsonKey(name: 'driver_notes') final String? driverNotes,
      @JsonKey(name: 'picker_notes') final String? pickerNotes,
      @JsonKey(name: 'insurance_attachments')
      final List<PharmacyAttachmentModel> insuranceAttachments,
      @JsonKey(name: 'prescription_attachments')
      final List<PharmacyAttachmentModel>
          prescriptionAttachments}) = _$_PharmacyOrderDetailsModel;
  const _PharmacyOrderDetailsModel._() : super._();

  factory _PharmacyOrderDetailsModel.fromJson(Map<String, dynamic> json) =
      _$_PharmacyOrderDetailsModel.fromJson;

  @override
  int? get id;
  @override
  String? get code;
  @override
  @JsonKey(name: 'shop_type')
  String? get shopType;
  @override
  @JsonKey(name: 'is_pending_review')
  bool? get isPendingReview;
  @override
  @JsonKey(name: 'awaiting_customer_completion')
  bool? get awaitingCustomerCompletion;
  @override
  @JsonKey(name: 'requires_prescription_review')
  bool? get requiresPrescriptionReview;
  @override
  @JsonKey(name: 'insurance_applied')
  bool? get insuranceApplied;
  @override
  @JsonKey(name: 'order_type')
  String? get orderType;
  @override
  @JsonKey(name: 'available_return_order')
  bool? get availableReturnOrder;
  @override
  @JsonKey(name: 'show_button_pay')
  bool? get showButtonPay;
  @override
  @JsonKey(name: 'loyalty_points_applied')
  bool? get loyaltyPointsApplied;
  @override
  @JsonKey(name: 'loyalty_points')
  int? get loyaltyPoints;
  @override
  @JsonKey(name: 'expected_loyalty_points')
  int? get expectedLoyaltyPoints;
  @override
  @JsonKey(name: 'bag_count')
  int? get bagCount;
  @override
  @JsonKey(name: 'total_items')
  int? get totalItems;
  @override
  @JsonKey(name: 'sold_by_type')
  String? get soldByType;
  @override
  @JsonKey(name: 'sold_by_name')
  String? get soldByName;
  @override
  String? get subtotal;
  @override
  String? get shipping;
  @override
  String? get tax;
  @override
  @JsonKey(name: 'coupon_discount')
  String? get couponDiscount;
  @override
  @JsonKey(name: 'service_fees')
  String? get serviceFees;
  @override
  @JsonKey(name: 'environment_fees')
  String? get environmentFees;
  @override
  @JsonKey(name: 'technology_fees')
  String? get technologyFees;
  @override
  @JsonKey(name: 'vat_fee_amount')
  String? get vatFeeAmount;
  @override
  @JsonKey(name: 'total_fee_amount')
  String? get totalFeeAmount;
  @override
  @JsonKey(name: 'loyalty_points_value')
  String? get loyaltyPointsValue;
  @override
  String? get total;
  @override
  String? get date;
  @override
  @JsonKey(name: 'cancel_reason')
  String? get cancelReason;
  @override
  @JsonKey(name: 'delivery_status_const')
  String? get deliveryStatusConst;
  @override
  @JsonKey(name: 'delivery_status')
  String? get deliveryStatus;
  @override
  @JsonKey(name: 'delivery_viewed')
  bool? get deliveryViewed;
  @override
  @JsonKey(name: 'payment_status_viewed')
  bool? get paymentStatusViewed;
  @override
  @JsonKey(name: 'payment_status')
  bool? get paymentStatus;
  @override
  @JsonKey(name: 'payment_status_text')
  String? get paymentStatusText;
  @override
  @JsonKey(name: 'available_cancel_order')
  bool? get availableCancelOrder;
  @override
  @JsonKey(name: 'additional_info')
  String? get additionalInfo;
  @override
  @JsonKey(name: 'payment_method')
  String? get paymentMethod;
  @override
  @JsonKey(name: 'payment_method_key')
  String? get paymentMethodKey;
  @override
  @JsonKey(name: 'shipping_method')
  String? get shippingMethod;
  @override
  @JsonKey(name: 'order_status')
  String? get orderStatus;
  @override
  @JsonKey(name: 'order_date')
  String? get orderDate;
  @override
  @JsonKey(name: 'shipping_address')
  String? get shippingAddress;
  @override
  @JsonKey(name: 'customer_name')
  String? get customerName;
  @override
  @JsonKey(name: 'customer_email')
  String? get customerEmail;
  @override
  @JsonKey(name: 'customer_phone')
  String? get customerPhone;
  @override
  @JsonKey(name: 'return_reason')
  String? get returnReason;
  @override
  @JsonKey(name: 'order_details')
  List<PharmacyOrderItemModel> get orderDetails;
  @override
  @JsonKey(name: 'shipping_type')
  String? get shippingType;
  @override
  @JsonKey(name: 'driver_notes')
  String? get driverNotes;
  @override
  @JsonKey(name: 'picker_notes')
  String? get pickerNotes;
  @override
  @JsonKey(name: 'insurance_attachments')
  List<PharmacyAttachmentModel> get insuranceAttachments;
  @override
  @JsonKey(name: 'prescription_attachments')
  List<PharmacyAttachmentModel> get prescriptionAttachments;
  @override
  @JsonKey(ignore: true)
  _$$_PharmacyOrderDetailsModelCopyWith<_$_PharmacyOrderDetailsModel>
      get copyWith => throw _privateConstructorUsedError;
}
