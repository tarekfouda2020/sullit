// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'instore_order_summary_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InstoreOrderSummaryModel _$InstoreOrderSummaryModelFromJson(
    Map<String, dynamic> json) {
  return _InstoreOrderSummaryModel.fromJson(json);
}

/// @nodoc
mixin _$InstoreOrderSummaryModel {
  String get subtotal => throw _privateConstructorUsedError;
  String get tax => throw _privateConstructorUsedError;
  @JsonKey(name: 'creation_method')
  String get creationMethod => throw _privateConstructorUsedError;
  @JsonKey(name: 'service_fees')
  String get serviceFees => throw _privateConstructorUsedError;
  @JsonKey(name: 'technology_fees')
  String get technologyFees => throw _privateConstructorUsedError;
  @JsonKey(name: 'vat_percentage')
  String get vatPercentage => throw _privateConstructorUsedError;
  @JsonKey(name: 'vat_fee_amount')
  String get vatFeeAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_fee_amount')
  String get totalFeeAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'coupon_discount')
  String get couponDiscount => throw _privateConstructorUsedError;
  @JsonKey(name: 'expected_loyalty_points')
  int get expectedLoyaltyPoints => throw _privateConstructorUsedError;
  @JsonKey(name: 'loyalty_points_value')
  String get loyaltyPointsValue => throw _privateConstructorUsedError;
  @JsonKey(name: 'loyalty_points_applied')
  bool get loyaltyPointsApplied => throw _privateConstructorUsedError;
  @JsonKey(name: 'loyalty_points')
  int get loyaltyPoints => throw _privateConstructorUsedError;
  @JsonKey(name: 'calculable_total')
  num get calculableTotal => throw _privateConstructorUsedError;
  String get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'coupon_code')
  String? get couponCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'coupon_applied')
  bool get couponApplied => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_items')
  int get totalItems => throw _privateConstructorUsedError;
  @JsonKey(name: 'minimum_order_amount_status')
  bool get minimumOrderAmountStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'minimum_order_amount_msg')
  String get minimumOrderAmountMsg => throw _privateConstructorUsedError;
  @JsonKey(name: 'minimum_order_amount')
  num get minimumOrderAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'wallet_system_active')
  bool get walletSystemActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'wallet_balance')
  String get walletBalance => throw _privateConstructorUsedError;
  @JsonKey(name: 'wallet_balance_value')
  num get walletBalanceValue => throw _privateConstructorUsedError;
  @JsonKey(name: 'avilable_pay_with_wallet')
  bool get avilablePayWithWallet => throw _privateConstructorUsedError;
  @JsonKey(name: 'avilable_cash_on_delivery')
  bool get avilableCashOnDelivery => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_discounts')
  List<OrderSummaryDiscountModel> get orderDiscounts =>
      throw _privateConstructorUsedError;
  List<ShippingItemModel> get items => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_options')
  List<PaymentOptionModel> get paymentOptions =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InstoreOrderSummaryModelCopyWith<InstoreOrderSummaryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstoreOrderSummaryModelCopyWith<$Res> {
  factory $InstoreOrderSummaryModelCopyWith(InstoreOrderSummaryModel value,
          $Res Function(InstoreOrderSummaryModel) then) =
      _$InstoreOrderSummaryModelCopyWithImpl<$Res, InstoreOrderSummaryModel>;
  @useResult
  $Res call(
      {String subtotal,
      String tax,
      @JsonKey(name: 'creation_method') String creationMethod,
      @JsonKey(name: 'service_fees') String serviceFees,
      @JsonKey(name: 'technology_fees') String technologyFees,
      @JsonKey(name: 'vat_percentage') String vatPercentage,
      @JsonKey(name: 'vat_fee_amount') String vatFeeAmount,
      @JsonKey(name: 'total_fee_amount') String totalFeeAmount,
      @JsonKey(name: 'coupon_discount') String couponDiscount,
      @JsonKey(name: 'expected_loyalty_points') int expectedLoyaltyPoints,
      @JsonKey(name: 'loyalty_points_value') String loyaltyPointsValue,
      @JsonKey(name: 'loyalty_points_applied') bool loyaltyPointsApplied,
      @JsonKey(name: 'loyalty_points') int loyaltyPoints,
      @JsonKey(name: 'calculable_total') num calculableTotal,
      String total,
      @JsonKey(name: 'coupon_code') String? couponCode,
      @JsonKey(name: 'coupon_applied') bool couponApplied,
      @JsonKey(name: 'total_items') int totalItems,
      @JsonKey(name: 'minimum_order_amount_status')
      bool minimumOrderAmountStatus,
      @JsonKey(name: 'minimum_order_amount_msg') String minimumOrderAmountMsg,
      @JsonKey(name: 'minimum_order_amount') num minimumOrderAmount,
      @JsonKey(name: 'wallet_system_active') bool walletSystemActive,
      @JsonKey(name: 'wallet_balance') String walletBalance,
      @JsonKey(name: 'wallet_balance_value') num walletBalanceValue,
      @JsonKey(name: 'avilable_pay_with_wallet') bool avilablePayWithWallet,
      @JsonKey(name: 'avilable_cash_on_delivery') bool avilableCashOnDelivery,
      @JsonKey(name: 'order_discounts')
      List<OrderSummaryDiscountModel> orderDiscounts,
      List<ShippingItemModel> items,
      @JsonKey(name: 'payment_options')
      List<PaymentOptionModel> paymentOptions});
}

/// @nodoc
class _$InstoreOrderSummaryModelCopyWithImpl<$Res,
        $Val extends InstoreOrderSummaryModel>
    implements $InstoreOrderSummaryModelCopyWith<$Res> {
  _$InstoreOrderSummaryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subtotal = null,
    Object? tax = null,
    Object? creationMethod = null,
    Object? serviceFees = null,
    Object? technologyFees = null,
    Object? vatPercentage = null,
    Object? vatFeeAmount = null,
    Object? totalFeeAmount = null,
    Object? couponDiscount = null,
    Object? expectedLoyaltyPoints = null,
    Object? loyaltyPointsValue = null,
    Object? loyaltyPointsApplied = null,
    Object? loyaltyPoints = null,
    Object? calculableTotal = null,
    Object? total = null,
    Object? couponCode = freezed,
    Object? couponApplied = null,
    Object? totalItems = null,
    Object? minimumOrderAmountStatus = null,
    Object? minimumOrderAmountMsg = null,
    Object? minimumOrderAmount = null,
    Object? walletSystemActive = null,
    Object? walletBalance = null,
    Object? walletBalanceValue = null,
    Object? avilablePayWithWallet = null,
    Object? avilableCashOnDelivery = null,
    Object? orderDiscounts = null,
    Object? items = null,
    Object? paymentOptions = null,
  }) {
    return _then(_value.copyWith(
      subtotal: null == subtotal
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as String,
      tax: null == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as String,
      creationMethod: null == creationMethod
          ? _value.creationMethod
          : creationMethod // ignore: cast_nullable_to_non_nullable
              as String,
      serviceFees: null == serviceFees
          ? _value.serviceFees
          : serviceFees // ignore: cast_nullable_to_non_nullable
              as String,
      technologyFees: null == technologyFees
          ? _value.technologyFees
          : technologyFees // ignore: cast_nullable_to_non_nullable
              as String,
      vatPercentage: null == vatPercentage
          ? _value.vatPercentage
          : vatPercentage // ignore: cast_nullable_to_non_nullable
              as String,
      vatFeeAmount: null == vatFeeAmount
          ? _value.vatFeeAmount
          : vatFeeAmount // ignore: cast_nullable_to_non_nullable
              as String,
      totalFeeAmount: null == totalFeeAmount
          ? _value.totalFeeAmount
          : totalFeeAmount // ignore: cast_nullable_to_non_nullable
              as String,
      couponDiscount: null == couponDiscount
          ? _value.couponDiscount
          : couponDiscount // ignore: cast_nullable_to_non_nullable
              as String,
      expectedLoyaltyPoints: null == expectedLoyaltyPoints
          ? _value.expectedLoyaltyPoints
          : expectedLoyaltyPoints // ignore: cast_nullable_to_non_nullable
              as int,
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
      calculableTotal: null == calculableTotal
          ? _value.calculableTotal
          : calculableTotal // ignore: cast_nullable_to_non_nullable
              as num,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
      couponCode: freezed == couponCode
          ? _value.couponCode
          : couponCode // ignore: cast_nullable_to_non_nullable
              as String?,
      couponApplied: null == couponApplied
          ? _value.couponApplied
          : couponApplied // ignore: cast_nullable_to_non_nullable
              as bool,
      totalItems: null == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int,
      minimumOrderAmountStatus: null == minimumOrderAmountStatus
          ? _value.minimumOrderAmountStatus
          : minimumOrderAmountStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      minimumOrderAmountMsg: null == minimumOrderAmountMsg
          ? _value.minimumOrderAmountMsg
          : minimumOrderAmountMsg // ignore: cast_nullable_to_non_nullable
              as String,
      minimumOrderAmount: null == minimumOrderAmount
          ? _value.minimumOrderAmount
          : minimumOrderAmount // ignore: cast_nullable_to_non_nullable
              as num,
      walletSystemActive: null == walletSystemActive
          ? _value.walletSystemActive
          : walletSystemActive // ignore: cast_nullable_to_non_nullable
              as bool,
      walletBalance: null == walletBalance
          ? _value.walletBalance
          : walletBalance // ignore: cast_nullable_to_non_nullable
              as String,
      walletBalanceValue: null == walletBalanceValue
          ? _value.walletBalanceValue
          : walletBalanceValue // ignore: cast_nullable_to_non_nullable
              as num,
      avilablePayWithWallet: null == avilablePayWithWallet
          ? _value.avilablePayWithWallet
          : avilablePayWithWallet // ignore: cast_nullable_to_non_nullable
              as bool,
      avilableCashOnDelivery: null == avilableCashOnDelivery
          ? _value.avilableCashOnDelivery
          : avilableCashOnDelivery // ignore: cast_nullable_to_non_nullable
              as bool,
      orderDiscounts: null == orderDiscounts
          ? _value.orderDiscounts
          : orderDiscounts // ignore: cast_nullable_to_non_nullable
              as List<OrderSummaryDiscountModel>,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ShippingItemModel>,
      paymentOptions: null == paymentOptions
          ? _value.paymentOptions
          : paymentOptions // ignore: cast_nullable_to_non_nullable
              as List<PaymentOptionModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InstoreOrderSummaryModelCopyWith<$Res>
    implements $InstoreOrderSummaryModelCopyWith<$Res> {
  factory _$$_InstoreOrderSummaryModelCopyWith(
          _$_InstoreOrderSummaryModel value,
          $Res Function(_$_InstoreOrderSummaryModel) then) =
      __$$_InstoreOrderSummaryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String subtotal,
      String tax,
      @JsonKey(name: 'creation_method') String creationMethod,
      @JsonKey(name: 'service_fees') String serviceFees,
      @JsonKey(name: 'technology_fees') String technologyFees,
      @JsonKey(name: 'vat_percentage') String vatPercentage,
      @JsonKey(name: 'vat_fee_amount') String vatFeeAmount,
      @JsonKey(name: 'total_fee_amount') String totalFeeAmount,
      @JsonKey(name: 'coupon_discount') String couponDiscount,
      @JsonKey(name: 'expected_loyalty_points') int expectedLoyaltyPoints,
      @JsonKey(name: 'loyalty_points_value') String loyaltyPointsValue,
      @JsonKey(name: 'loyalty_points_applied') bool loyaltyPointsApplied,
      @JsonKey(name: 'loyalty_points') int loyaltyPoints,
      @JsonKey(name: 'calculable_total') num calculableTotal,
      String total,
      @JsonKey(name: 'coupon_code') String? couponCode,
      @JsonKey(name: 'coupon_applied') bool couponApplied,
      @JsonKey(name: 'total_items') int totalItems,
      @JsonKey(name: 'minimum_order_amount_status')
      bool minimumOrderAmountStatus,
      @JsonKey(name: 'minimum_order_amount_msg') String minimumOrderAmountMsg,
      @JsonKey(name: 'minimum_order_amount') num minimumOrderAmount,
      @JsonKey(name: 'wallet_system_active') bool walletSystemActive,
      @JsonKey(name: 'wallet_balance') String walletBalance,
      @JsonKey(name: 'wallet_balance_value') num walletBalanceValue,
      @JsonKey(name: 'avilable_pay_with_wallet') bool avilablePayWithWallet,
      @JsonKey(name: 'avilable_cash_on_delivery') bool avilableCashOnDelivery,
      @JsonKey(name: 'order_discounts')
      List<OrderSummaryDiscountModel> orderDiscounts,
      List<ShippingItemModel> items,
      @JsonKey(name: 'payment_options')
      List<PaymentOptionModel> paymentOptions});
}

/// @nodoc
class __$$_InstoreOrderSummaryModelCopyWithImpl<$Res>
    extends _$InstoreOrderSummaryModelCopyWithImpl<$Res,
        _$_InstoreOrderSummaryModel>
    implements _$$_InstoreOrderSummaryModelCopyWith<$Res> {
  __$$_InstoreOrderSummaryModelCopyWithImpl(_$_InstoreOrderSummaryModel _value,
      $Res Function(_$_InstoreOrderSummaryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subtotal = null,
    Object? tax = null,
    Object? creationMethod = null,
    Object? serviceFees = null,
    Object? technologyFees = null,
    Object? vatPercentage = null,
    Object? vatFeeAmount = null,
    Object? totalFeeAmount = null,
    Object? couponDiscount = null,
    Object? expectedLoyaltyPoints = null,
    Object? loyaltyPointsValue = null,
    Object? loyaltyPointsApplied = null,
    Object? loyaltyPoints = null,
    Object? calculableTotal = null,
    Object? total = null,
    Object? couponCode = freezed,
    Object? couponApplied = null,
    Object? totalItems = null,
    Object? minimumOrderAmountStatus = null,
    Object? minimumOrderAmountMsg = null,
    Object? minimumOrderAmount = null,
    Object? walletSystemActive = null,
    Object? walletBalance = null,
    Object? walletBalanceValue = null,
    Object? avilablePayWithWallet = null,
    Object? avilableCashOnDelivery = null,
    Object? orderDiscounts = null,
    Object? items = null,
    Object? paymentOptions = null,
  }) {
    return _then(_$_InstoreOrderSummaryModel(
      subtotal: null == subtotal
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as String,
      tax: null == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as String,
      creationMethod: null == creationMethod
          ? _value.creationMethod
          : creationMethod // ignore: cast_nullable_to_non_nullable
              as String,
      serviceFees: null == serviceFees
          ? _value.serviceFees
          : serviceFees // ignore: cast_nullable_to_non_nullable
              as String,
      technologyFees: null == technologyFees
          ? _value.technologyFees
          : technologyFees // ignore: cast_nullable_to_non_nullable
              as String,
      vatPercentage: null == vatPercentage
          ? _value.vatPercentage
          : vatPercentage // ignore: cast_nullable_to_non_nullable
              as String,
      vatFeeAmount: null == vatFeeAmount
          ? _value.vatFeeAmount
          : vatFeeAmount // ignore: cast_nullable_to_non_nullable
              as String,
      totalFeeAmount: null == totalFeeAmount
          ? _value.totalFeeAmount
          : totalFeeAmount // ignore: cast_nullable_to_non_nullable
              as String,
      couponDiscount: null == couponDiscount
          ? _value.couponDiscount
          : couponDiscount // ignore: cast_nullable_to_non_nullable
              as String,
      expectedLoyaltyPoints: null == expectedLoyaltyPoints
          ? _value.expectedLoyaltyPoints
          : expectedLoyaltyPoints // ignore: cast_nullable_to_non_nullable
              as int,
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
      calculableTotal: null == calculableTotal
          ? _value.calculableTotal
          : calculableTotal // ignore: cast_nullable_to_non_nullable
              as num,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
      couponCode: freezed == couponCode
          ? _value.couponCode
          : couponCode // ignore: cast_nullable_to_non_nullable
              as String?,
      couponApplied: null == couponApplied
          ? _value.couponApplied
          : couponApplied // ignore: cast_nullable_to_non_nullable
              as bool,
      totalItems: null == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int,
      minimumOrderAmountStatus: null == minimumOrderAmountStatus
          ? _value.minimumOrderAmountStatus
          : minimumOrderAmountStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      minimumOrderAmountMsg: null == minimumOrderAmountMsg
          ? _value.minimumOrderAmountMsg
          : minimumOrderAmountMsg // ignore: cast_nullable_to_non_nullable
              as String,
      minimumOrderAmount: null == minimumOrderAmount
          ? _value.minimumOrderAmount
          : minimumOrderAmount // ignore: cast_nullable_to_non_nullable
              as num,
      walletSystemActive: null == walletSystemActive
          ? _value.walletSystemActive
          : walletSystemActive // ignore: cast_nullable_to_non_nullable
              as bool,
      walletBalance: null == walletBalance
          ? _value.walletBalance
          : walletBalance // ignore: cast_nullable_to_non_nullable
              as String,
      walletBalanceValue: null == walletBalanceValue
          ? _value.walletBalanceValue
          : walletBalanceValue // ignore: cast_nullable_to_non_nullable
              as num,
      avilablePayWithWallet: null == avilablePayWithWallet
          ? _value.avilablePayWithWallet
          : avilablePayWithWallet // ignore: cast_nullable_to_non_nullable
              as bool,
      avilableCashOnDelivery: null == avilableCashOnDelivery
          ? _value.avilableCashOnDelivery
          : avilableCashOnDelivery // ignore: cast_nullable_to_non_nullable
              as bool,
      orderDiscounts: null == orderDiscounts
          ? _value._orderDiscounts
          : orderDiscounts // ignore: cast_nullable_to_non_nullable
              as List<OrderSummaryDiscountModel>,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ShippingItemModel>,
      paymentOptions: null == paymentOptions
          ? _value._paymentOptions
          : paymentOptions // ignore: cast_nullable_to_non_nullable
              as List<PaymentOptionModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_InstoreOrderSummaryModel implements _InstoreOrderSummaryModel {
  const _$_InstoreOrderSummaryModel(
      {required this.subtotal,
      required this.tax,
      @JsonKey(name: 'creation_method') required this.creationMethod,
      @JsonKey(name: 'service_fees') required this.serviceFees,
      @JsonKey(name: 'technology_fees') required this.technologyFees,
      @JsonKey(name: 'vat_percentage') required this.vatPercentage,
      @JsonKey(name: 'vat_fee_amount') required this.vatFeeAmount,
      @JsonKey(name: 'total_fee_amount') required this.totalFeeAmount,
      @JsonKey(name: 'coupon_discount') required this.couponDiscount,
      @JsonKey(name: 'expected_loyalty_points')
      required this.expectedLoyaltyPoints,
      @JsonKey(name: 'loyalty_points_value') required this.loyaltyPointsValue,
      @JsonKey(name: 'loyalty_points_applied')
      required this.loyaltyPointsApplied,
      @JsonKey(name: 'loyalty_points') required this.loyaltyPoints,
      @JsonKey(name: 'calculable_total') required this.calculableTotal,
      required this.total,
      @JsonKey(name: 'coupon_code') this.couponCode,
      @JsonKey(name: 'coupon_applied') required this.couponApplied,
      @JsonKey(name: 'total_items') required this.totalItems,
      @JsonKey(name: 'minimum_order_amount_status')
      required this.minimumOrderAmountStatus,
      @JsonKey(name: 'minimum_order_amount_msg')
      required this.minimumOrderAmountMsg,
      @JsonKey(name: 'minimum_order_amount') required this.minimumOrderAmount,
      @JsonKey(name: 'wallet_system_active') required this.walletSystemActive,
      @JsonKey(name: 'wallet_balance') required this.walletBalance,
      @JsonKey(name: 'wallet_balance_value') required this.walletBalanceValue,
      @JsonKey(name: 'avilable_pay_with_wallet')
      required this.avilablePayWithWallet,
      @JsonKey(name: 'avilable_cash_on_delivery')
      required this.avilableCashOnDelivery,
      @JsonKey(name: 'order_discounts')
      required final List<OrderSummaryDiscountModel> orderDiscounts,
      required final List<ShippingItemModel> items,
      @JsonKey(name: 'payment_options')
      required final List<PaymentOptionModel> paymentOptions})
      : _orderDiscounts = orderDiscounts,
        _items = items,
        _paymentOptions = paymentOptions;

  factory _$_InstoreOrderSummaryModel.fromJson(Map<String, dynamic> json) =>
      _$$_InstoreOrderSummaryModelFromJson(json);

  @override
  final String subtotal;
  @override
  final String tax;
  @override
  @JsonKey(name: 'creation_method')
  final String creationMethod;
  @override
  @JsonKey(name: 'service_fees')
  final String serviceFees;
  @override
  @JsonKey(name: 'technology_fees')
  final String technologyFees;
  @override
  @JsonKey(name: 'vat_percentage')
  final String vatPercentage;
  @override
  @JsonKey(name: 'vat_fee_amount')
  final String vatFeeAmount;
  @override
  @JsonKey(name: 'total_fee_amount')
  final String totalFeeAmount;
  @override
  @JsonKey(name: 'coupon_discount')
  final String couponDiscount;
  @override
  @JsonKey(name: 'expected_loyalty_points')
  final int expectedLoyaltyPoints;
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
  @JsonKey(name: 'calculable_total')
  final num calculableTotal;
  @override
  final String total;
  @override
  @JsonKey(name: 'coupon_code')
  final String? couponCode;
  @override
  @JsonKey(name: 'coupon_applied')
  final bool couponApplied;
  @override
  @JsonKey(name: 'total_items')
  final int totalItems;
  @override
  @JsonKey(name: 'minimum_order_amount_status')
  final bool minimumOrderAmountStatus;
  @override
  @JsonKey(name: 'minimum_order_amount_msg')
  final String minimumOrderAmountMsg;
  @override
  @JsonKey(name: 'minimum_order_amount')
  final num minimumOrderAmount;
  @override
  @JsonKey(name: 'wallet_system_active')
  final bool walletSystemActive;
  @override
  @JsonKey(name: 'wallet_balance')
  final String walletBalance;
  @override
  @JsonKey(name: 'wallet_balance_value')
  final num walletBalanceValue;
  @override
  @JsonKey(name: 'avilable_pay_with_wallet')
  final bool avilablePayWithWallet;
  @override
  @JsonKey(name: 'avilable_cash_on_delivery')
  final bool avilableCashOnDelivery;
  final List<OrderSummaryDiscountModel> _orderDiscounts;
  @override
  @JsonKey(name: 'order_discounts')
  List<OrderSummaryDiscountModel> get orderDiscounts {
    if (_orderDiscounts is EqualUnmodifiableListView) return _orderDiscounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderDiscounts);
  }

  final List<ShippingItemModel> _items;
  @override
  List<ShippingItemModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  final List<PaymentOptionModel> _paymentOptions;
  @override
  @JsonKey(name: 'payment_options')
  List<PaymentOptionModel> get paymentOptions {
    if (_paymentOptions is EqualUnmodifiableListView) return _paymentOptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_paymentOptions);
  }

  @override
  String toString() {
    return 'InstoreOrderSummaryModel(subtotal: $subtotal, tax: $tax, creationMethod: $creationMethod, serviceFees: $serviceFees, technologyFees: $technologyFees, vatPercentage: $vatPercentage, vatFeeAmount: $vatFeeAmount, totalFeeAmount: $totalFeeAmount, couponDiscount: $couponDiscount, expectedLoyaltyPoints: $expectedLoyaltyPoints, loyaltyPointsValue: $loyaltyPointsValue, loyaltyPointsApplied: $loyaltyPointsApplied, loyaltyPoints: $loyaltyPoints, calculableTotal: $calculableTotal, total: $total, couponCode: $couponCode, couponApplied: $couponApplied, totalItems: $totalItems, minimumOrderAmountStatus: $minimumOrderAmountStatus, minimumOrderAmountMsg: $minimumOrderAmountMsg, minimumOrderAmount: $minimumOrderAmount, walletSystemActive: $walletSystemActive, walletBalance: $walletBalance, walletBalanceValue: $walletBalanceValue, avilablePayWithWallet: $avilablePayWithWallet, avilableCashOnDelivery: $avilableCashOnDelivery, orderDiscounts: $orderDiscounts, items: $items, paymentOptions: $paymentOptions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InstoreOrderSummaryModel &&
            (identical(other.subtotal, subtotal) ||
                other.subtotal == subtotal) &&
            (identical(other.tax, tax) || other.tax == tax) &&
            (identical(other.creationMethod, creationMethod) ||
                other.creationMethod == creationMethod) &&
            (identical(other.serviceFees, serviceFees) ||
                other.serviceFees == serviceFees) &&
            (identical(other.technologyFees, technologyFees) ||
                other.technologyFees == technologyFees) &&
            (identical(other.vatPercentage, vatPercentage) ||
                other.vatPercentage == vatPercentage) &&
            (identical(other.vatFeeAmount, vatFeeAmount) ||
                other.vatFeeAmount == vatFeeAmount) &&
            (identical(other.totalFeeAmount, totalFeeAmount) ||
                other.totalFeeAmount == totalFeeAmount) &&
            (identical(other.couponDiscount, couponDiscount) ||
                other.couponDiscount == couponDiscount) &&
            (identical(other.expectedLoyaltyPoints, expectedLoyaltyPoints) ||
                other.expectedLoyaltyPoints == expectedLoyaltyPoints) &&
            (identical(other.loyaltyPointsValue, loyaltyPointsValue) ||
                other.loyaltyPointsValue == loyaltyPointsValue) &&
            (identical(other.loyaltyPointsApplied, loyaltyPointsApplied) ||
                other.loyaltyPointsApplied == loyaltyPointsApplied) &&
            (identical(other.loyaltyPoints, loyaltyPoints) ||
                other.loyaltyPoints == loyaltyPoints) &&
            (identical(other.calculableTotal, calculableTotal) ||
                other.calculableTotal == calculableTotal) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.couponCode, couponCode) ||
                other.couponCode == couponCode) &&
            (identical(other.couponApplied, couponApplied) ||
                other.couponApplied == couponApplied) &&
            (identical(other.totalItems, totalItems) ||
                other.totalItems == totalItems) &&
            (identical(
                    other.minimumOrderAmountStatus, minimumOrderAmountStatus) ||
                other.minimumOrderAmountStatus == minimumOrderAmountStatus) &&
            (identical(other.minimumOrderAmountMsg, minimumOrderAmountMsg) ||
                other.minimumOrderAmountMsg == minimumOrderAmountMsg) &&
            (identical(other.minimumOrderAmount, minimumOrderAmount) ||
                other.minimumOrderAmount == minimumOrderAmount) &&
            (identical(other.walletSystemActive, walletSystemActive) ||
                other.walletSystemActive == walletSystemActive) &&
            (identical(other.walletBalance, walletBalance) ||
                other.walletBalance == walletBalance) &&
            (identical(other.walletBalanceValue, walletBalanceValue) ||
                other.walletBalanceValue == walletBalanceValue) &&
            (identical(other.avilablePayWithWallet, avilablePayWithWallet) ||
                other.avilablePayWithWallet == avilablePayWithWallet) &&
            (identical(other.avilableCashOnDelivery, avilableCashOnDelivery) ||
                other.avilableCashOnDelivery == avilableCashOnDelivery) &&
            const DeepCollectionEquality()
                .equals(other._orderDiscounts, _orderDiscounts) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            const DeepCollectionEquality()
                .equals(other._paymentOptions, _paymentOptions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        subtotal,
        tax,
        creationMethod,
        serviceFees,
        technologyFees,
        vatPercentage,
        vatFeeAmount,
        totalFeeAmount,
        couponDiscount,
        expectedLoyaltyPoints,
        loyaltyPointsValue,
        loyaltyPointsApplied,
        loyaltyPoints,
        calculableTotal,
        total,
        couponCode,
        couponApplied,
        totalItems,
        minimumOrderAmountStatus,
        minimumOrderAmountMsg,
        minimumOrderAmount,
        walletSystemActive,
        walletBalance,
        walletBalanceValue,
        avilablePayWithWallet,
        avilableCashOnDelivery,
        const DeepCollectionEquality().hash(_orderDiscounts),
        const DeepCollectionEquality().hash(_items),
        const DeepCollectionEquality().hash(_paymentOptions)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InstoreOrderSummaryModelCopyWith<_$_InstoreOrderSummaryModel>
      get copyWith => __$$_InstoreOrderSummaryModelCopyWithImpl<
          _$_InstoreOrderSummaryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InstoreOrderSummaryModelToJson(
      this,
    );
  }
}

abstract class _InstoreOrderSummaryModel implements InstoreOrderSummaryModel {
  const factory _InstoreOrderSummaryModel(
      {required final String subtotal,
      required final String tax,
      @JsonKey(name: 'creation_method') required final String creationMethod,
      @JsonKey(name: 'service_fees') required final String serviceFees,
      @JsonKey(name: 'technology_fees') required final String technologyFees,
      @JsonKey(name: 'vat_percentage') required final String vatPercentage,
      @JsonKey(name: 'vat_fee_amount') required final String vatFeeAmount,
      @JsonKey(name: 'total_fee_amount') required final String totalFeeAmount,
      @JsonKey(name: 'coupon_discount') required final String couponDiscount,
      @JsonKey(name: 'expected_loyalty_points')
      required final int expectedLoyaltyPoints,
      @JsonKey(name: 'loyalty_points_value')
      required final String loyaltyPointsValue,
      @JsonKey(name: 'loyalty_points_applied')
      required final bool loyaltyPointsApplied,
      @JsonKey(name: 'loyalty_points') required final int loyaltyPoints,
      @JsonKey(name: 'calculable_total') required final num calculableTotal,
      required final String total,
      @JsonKey(name: 'coupon_code') final String? couponCode,
      @JsonKey(name: 'coupon_applied') required final bool couponApplied,
      @JsonKey(name: 'total_items') required final int totalItems,
      @JsonKey(name: 'minimum_order_amount_status')
      required final bool minimumOrderAmountStatus,
      @JsonKey(name: 'minimum_order_amount_msg')
      required final String minimumOrderAmountMsg,
      @JsonKey(name: 'minimum_order_amount')
      required final num minimumOrderAmount,
      @JsonKey(name: 'wallet_system_active')
      required final bool walletSystemActive,
      @JsonKey(name: 'wallet_balance') required final String walletBalance,
      @JsonKey(name: 'wallet_balance_value')
      required final num walletBalanceValue,
      @JsonKey(name: 'avilable_pay_with_wallet')
      required final bool avilablePayWithWallet,
      @JsonKey(name: 'avilable_cash_on_delivery')
      required final bool avilableCashOnDelivery,
      @JsonKey(name: 'order_discounts')
      required final List<OrderSummaryDiscountModel> orderDiscounts,
      required final List<ShippingItemModel> items,
      @JsonKey(name: 'payment_options')
      required final List<PaymentOptionModel>
          paymentOptions}) = _$_InstoreOrderSummaryModel;

  factory _InstoreOrderSummaryModel.fromJson(Map<String, dynamic> json) =
      _$_InstoreOrderSummaryModel.fromJson;

  @override
  String get subtotal;
  @override
  String get tax;
  @override
  @JsonKey(name: 'creation_method')
  String get creationMethod;
  @override
  @JsonKey(name: 'service_fees')
  String get serviceFees;
  @override
  @JsonKey(name: 'technology_fees')
  String get technologyFees;
  @override
  @JsonKey(name: 'vat_percentage')
  String get vatPercentage;
  @override
  @JsonKey(name: 'vat_fee_amount')
  String get vatFeeAmount;
  @override
  @JsonKey(name: 'total_fee_amount')
  String get totalFeeAmount;
  @override
  @JsonKey(name: 'coupon_discount')
  String get couponDiscount;
  @override
  @JsonKey(name: 'expected_loyalty_points')
  int get expectedLoyaltyPoints;
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
  @JsonKey(name: 'calculable_total')
  num get calculableTotal;
  @override
  String get total;
  @override
  @JsonKey(name: 'coupon_code')
  String? get couponCode;
  @override
  @JsonKey(name: 'coupon_applied')
  bool get couponApplied;
  @override
  @JsonKey(name: 'total_items')
  int get totalItems;
  @override
  @JsonKey(name: 'minimum_order_amount_status')
  bool get minimumOrderAmountStatus;
  @override
  @JsonKey(name: 'minimum_order_amount_msg')
  String get minimumOrderAmountMsg;
  @override
  @JsonKey(name: 'minimum_order_amount')
  num get minimumOrderAmount;
  @override
  @JsonKey(name: 'wallet_system_active')
  bool get walletSystemActive;
  @override
  @JsonKey(name: 'wallet_balance')
  String get walletBalance;
  @override
  @JsonKey(name: 'wallet_balance_value')
  num get walletBalanceValue;
  @override
  @JsonKey(name: 'avilable_pay_with_wallet')
  bool get avilablePayWithWallet;
  @override
  @JsonKey(name: 'avilable_cash_on_delivery')
  bool get avilableCashOnDelivery;
  @override
  @JsonKey(name: 'order_discounts')
  List<OrderSummaryDiscountModel> get orderDiscounts;
  @override
  List<ShippingItemModel> get items;
  @override
  @JsonKey(name: 'payment_options')
  List<PaymentOptionModel> get paymentOptions;
  @override
  @JsonKey(ignore: true)
  _$$_InstoreOrderSummaryModelCopyWith<_$_InstoreOrderSummaryModel>
      get copyWith => throw _privateConstructorUsedError;
}
