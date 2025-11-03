// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shipping_summary_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShippingSummaryModel _$ShippingSummaryModelFromJson(Map<String, dynamic> json) {
  return _ShippingSummaryModel.fromJson(json);
}

/// @nodoc
mixin _$ShippingSummaryModel {
  String get subtotal => throw _privateConstructorUsedError;
  String get tax => throw _privateConstructorUsedError;
  String get shipping => throw _privateConstructorUsedError;
  @JsonKey(name: "coupon_discount")
  String get couponDiscount => throw _privateConstructorUsedError;
  @JsonKey(name: "calculable_total")
  double get calTotal => throw _privateConstructorUsedError;
  String get total => throw _privateConstructorUsedError;
  @JsonKey(name: "coupon_code")
  String? get couponCode => throw _privateConstructorUsedError;
  @JsonKey(name: "coupon_applied")
  bool? get couponApplied => throw _privateConstructorUsedError;
  @JsonKey(name: "total_items")
  int get totalItems => throw _privateConstructorUsedError;
  @JsonKey(name: "minimum_order_amount_status")
  bool get minimumOrderAmountStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "minimum_order_amount_msg")
  String get minimumOrderAmountMsg => throw _privateConstructorUsedError;
  @JsonKey(name: "minimum_order_amount")
  double get minimumOrderAmountAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "wallet_system_active")
  bool get walletSystemActive => throw _privateConstructorUsedError;
  @JsonKey(name: "wallet_balance")
  String get walletBalance => throw _privateConstructorUsedError;
  @JsonKey(name: "wallet_balance_value")
  double get walletBalanceValue => throw _privateConstructorUsedError;
  @JsonKey(name: "avilable_pay_with_wallet")
  bool get avilablePayWithWallet => throw _privateConstructorUsedError;
  @JsonKey(name: "avilable_cash_on_delivery")
  bool get avilableCashOnDelivery => throw _privateConstructorUsedError;
  @JsonKey(name: "service_fees")
  String get serviceFee => throw _privateConstructorUsedError;
  @JsonKey(name: "technology_fees")
  String get technologyFees => throw _privateConstructorUsedError;
  List<ShippingItemModel> get items => throw _privateConstructorUsedError;
  @JsonKey(name: "loyalty_points_value")
  String? get loyaltyPointsValue => throw _privateConstructorUsedError;
  @JsonKey(name: "loyalty_points_applied")
  bool? get loyaltyPointsApplied => throw _privateConstructorUsedError;
  @JsonKey(name: "loyalty_points")
  int? get loyaltyPoints => throw _privateConstructorUsedError;
  @JsonKey(name: "expected_loyalty_points")
  int get expectedLoyaltyPoints => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShippingSummaryModelCopyWith<ShippingSummaryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShippingSummaryModelCopyWith<$Res> {
  factory $ShippingSummaryModelCopyWith(ShippingSummaryModel value,
          $Res Function(ShippingSummaryModel) then) =
      _$ShippingSummaryModelCopyWithImpl<$Res, ShippingSummaryModel>;
  @useResult
  $Res call(
      {String subtotal,
      String tax,
      String shipping,
      @JsonKey(name: "coupon_discount") String couponDiscount,
      @JsonKey(name: "calculable_total") double calTotal,
      String total,
      @JsonKey(name: "coupon_code") String? couponCode,
      @JsonKey(name: "coupon_applied") bool? couponApplied,
      @JsonKey(name: "total_items") int totalItems,
      @JsonKey(name: "minimum_order_amount_status")
      bool minimumOrderAmountStatus,
      @JsonKey(name: "minimum_order_amount_msg") String minimumOrderAmountMsg,
      @JsonKey(name: "minimum_order_amount") double minimumOrderAmountAmount,
      @JsonKey(name: "wallet_system_active") bool walletSystemActive,
      @JsonKey(name: "wallet_balance") String walletBalance,
      @JsonKey(name: "wallet_balance_value") double walletBalanceValue,
      @JsonKey(name: "avilable_pay_with_wallet") bool avilablePayWithWallet,
      @JsonKey(name: "avilable_cash_on_delivery") bool avilableCashOnDelivery,
      @JsonKey(name: "service_fees") String serviceFee,
      @JsonKey(name: "technology_fees") String technologyFees,
      List<ShippingItemModel> items,
      @JsonKey(name: "loyalty_points_value") String? loyaltyPointsValue,
      @JsonKey(name: "loyalty_points_applied") bool? loyaltyPointsApplied,
      @JsonKey(name: "loyalty_points") int? loyaltyPoints,
      @JsonKey(name: "expected_loyalty_points") int expectedLoyaltyPoints});
}

/// @nodoc
class _$ShippingSummaryModelCopyWithImpl<$Res,
        $Val extends ShippingSummaryModel>
    implements $ShippingSummaryModelCopyWith<$Res> {
  _$ShippingSummaryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subtotal = null,
    Object? tax = null,
    Object? shipping = null,
    Object? couponDiscount = null,
    Object? calTotal = null,
    Object? total = null,
    Object? couponCode = freezed,
    Object? couponApplied = freezed,
    Object? totalItems = null,
    Object? minimumOrderAmountStatus = null,
    Object? minimumOrderAmountMsg = null,
    Object? minimumOrderAmountAmount = null,
    Object? walletSystemActive = null,
    Object? walletBalance = null,
    Object? walletBalanceValue = null,
    Object? avilablePayWithWallet = null,
    Object? avilableCashOnDelivery = null,
    Object? serviceFee = null,
    Object? technologyFees = null,
    Object? items = null,
    Object? loyaltyPointsValue = freezed,
    Object? loyaltyPointsApplied = freezed,
    Object? loyaltyPoints = freezed,
    Object? expectedLoyaltyPoints = null,
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
      shipping: null == shipping
          ? _value.shipping
          : shipping // ignore: cast_nullable_to_non_nullable
              as String,
      couponDiscount: null == couponDiscount
          ? _value.couponDiscount
          : couponDiscount // ignore: cast_nullable_to_non_nullable
              as String,
      calTotal: null == calTotal
          ? _value.calTotal
          : calTotal // ignore: cast_nullable_to_non_nullable
              as double,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
      couponCode: freezed == couponCode
          ? _value.couponCode
          : couponCode // ignore: cast_nullable_to_non_nullable
              as String?,
      couponApplied: freezed == couponApplied
          ? _value.couponApplied
          : couponApplied // ignore: cast_nullable_to_non_nullable
              as bool?,
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
      minimumOrderAmountAmount: null == minimumOrderAmountAmount
          ? _value.minimumOrderAmountAmount
          : minimumOrderAmountAmount // ignore: cast_nullable_to_non_nullable
              as double,
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
              as double,
      avilablePayWithWallet: null == avilablePayWithWallet
          ? _value.avilablePayWithWallet
          : avilablePayWithWallet // ignore: cast_nullable_to_non_nullable
              as bool,
      avilableCashOnDelivery: null == avilableCashOnDelivery
          ? _value.avilableCashOnDelivery
          : avilableCashOnDelivery // ignore: cast_nullable_to_non_nullable
              as bool,
      serviceFee: null == serviceFee
          ? _value.serviceFee
          : serviceFee // ignore: cast_nullable_to_non_nullable
              as String,
      technologyFees: null == technologyFees
          ? _value.technologyFees
          : technologyFees // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ShippingItemModel>,
      loyaltyPointsValue: freezed == loyaltyPointsValue
          ? _value.loyaltyPointsValue
          : loyaltyPointsValue // ignore: cast_nullable_to_non_nullable
              as String?,
      loyaltyPointsApplied: freezed == loyaltyPointsApplied
          ? _value.loyaltyPointsApplied
          : loyaltyPointsApplied // ignore: cast_nullable_to_non_nullable
              as bool?,
      loyaltyPoints: freezed == loyaltyPoints
          ? _value.loyaltyPoints
          : loyaltyPoints // ignore: cast_nullable_to_non_nullable
              as int?,
      expectedLoyaltyPoints: null == expectedLoyaltyPoints
          ? _value.expectedLoyaltyPoints
          : expectedLoyaltyPoints // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShippingSummaryModelCopyWith<$Res>
    implements $ShippingSummaryModelCopyWith<$Res> {
  factory _$$_ShippingSummaryModelCopyWith(_$_ShippingSummaryModel value,
          $Res Function(_$_ShippingSummaryModel) then) =
      __$$_ShippingSummaryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String subtotal,
      String tax,
      String shipping,
      @JsonKey(name: "coupon_discount") String couponDiscount,
      @JsonKey(name: "calculable_total") double calTotal,
      String total,
      @JsonKey(name: "coupon_code") String? couponCode,
      @JsonKey(name: "coupon_applied") bool? couponApplied,
      @JsonKey(name: "total_items") int totalItems,
      @JsonKey(name: "minimum_order_amount_status")
      bool minimumOrderAmountStatus,
      @JsonKey(name: "minimum_order_amount_msg") String minimumOrderAmountMsg,
      @JsonKey(name: "minimum_order_amount") double minimumOrderAmountAmount,
      @JsonKey(name: "wallet_system_active") bool walletSystemActive,
      @JsonKey(name: "wallet_balance") String walletBalance,
      @JsonKey(name: "wallet_balance_value") double walletBalanceValue,
      @JsonKey(name: "avilable_pay_with_wallet") bool avilablePayWithWallet,
      @JsonKey(name: "avilable_cash_on_delivery") bool avilableCashOnDelivery,
      @JsonKey(name: "service_fees") String serviceFee,
      @JsonKey(name: "technology_fees") String technologyFees,
      List<ShippingItemModel> items,
      @JsonKey(name: "loyalty_points_value") String? loyaltyPointsValue,
      @JsonKey(name: "loyalty_points_applied") bool? loyaltyPointsApplied,
      @JsonKey(name: "loyalty_points") int? loyaltyPoints,
      @JsonKey(name: "expected_loyalty_points") int expectedLoyaltyPoints});
}

/// @nodoc
class __$$_ShippingSummaryModelCopyWithImpl<$Res>
    extends _$ShippingSummaryModelCopyWithImpl<$Res, _$_ShippingSummaryModel>
    implements _$$_ShippingSummaryModelCopyWith<$Res> {
  __$$_ShippingSummaryModelCopyWithImpl(_$_ShippingSummaryModel _value,
      $Res Function(_$_ShippingSummaryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subtotal = null,
    Object? tax = null,
    Object? shipping = null,
    Object? couponDiscount = null,
    Object? calTotal = null,
    Object? total = null,
    Object? couponCode = freezed,
    Object? couponApplied = freezed,
    Object? totalItems = null,
    Object? minimumOrderAmountStatus = null,
    Object? minimumOrderAmountMsg = null,
    Object? minimumOrderAmountAmount = null,
    Object? walletSystemActive = null,
    Object? walletBalance = null,
    Object? walletBalanceValue = null,
    Object? avilablePayWithWallet = null,
    Object? avilableCashOnDelivery = null,
    Object? serviceFee = null,
    Object? technologyFees = null,
    Object? items = null,
    Object? loyaltyPointsValue = freezed,
    Object? loyaltyPointsApplied = freezed,
    Object? loyaltyPoints = freezed,
    Object? expectedLoyaltyPoints = null,
  }) {
    return _then(_$_ShippingSummaryModel(
      subtotal: null == subtotal
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as String,
      tax: null == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as String,
      shipping: null == shipping
          ? _value.shipping
          : shipping // ignore: cast_nullable_to_non_nullable
              as String,
      couponDiscount: null == couponDiscount
          ? _value.couponDiscount
          : couponDiscount // ignore: cast_nullable_to_non_nullable
              as String,
      calTotal: null == calTotal
          ? _value.calTotal
          : calTotal // ignore: cast_nullable_to_non_nullable
              as double,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
      couponCode: freezed == couponCode
          ? _value.couponCode
          : couponCode // ignore: cast_nullable_to_non_nullable
              as String?,
      couponApplied: freezed == couponApplied
          ? _value.couponApplied
          : couponApplied // ignore: cast_nullable_to_non_nullable
              as bool?,
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
      minimumOrderAmountAmount: null == minimumOrderAmountAmount
          ? _value.minimumOrderAmountAmount
          : minimumOrderAmountAmount // ignore: cast_nullable_to_non_nullable
              as double,
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
              as double,
      avilablePayWithWallet: null == avilablePayWithWallet
          ? _value.avilablePayWithWallet
          : avilablePayWithWallet // ignore: cast_nullable_to_non_nullable
              as bool,
      avilableCashOnDelivery: null == avilableCashOnDelivery
          ? _value.avilableCashOnDelivery
          : avilableCashOnDelivery // ignore: cast_nullable_to_non_nullable
              as bool,
      serviceFee: null == serviceFee
          ? _value.serviceFee
          : serviceFee // ignore: cast_nullable_to_non_nullable
              as String,
      technologyFees: null == technologyFees
          ? _value.technologyFees
          : technologyFees // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ShippingItemModel>,
      loyaltyPointsValue: freezed == loyaltyPointsValue
          ? _value.loyaltyPointsValue
          : loyaltyPointsValue // ignore: cast_nullable_to_non_nullable
              as String?,
      loyaltyPointsApplied: freezed == loyaltyPointsApplied
          ? _value.loyaltyPointsApplied
          : loyaltyPointsApplied // ignore: cast_nullable_to_non_nullable
              as bool?,
      loyaltyPoints: freezed == loyaltyPoints
          ? _value.loyaltyPoints
          : loyaltyPoints // ignore: cast_nullable_to_non_nullable
              as int?,
      expectedLoyaltyPoints: null == expectedLoyaltyPoints
          ? _value.expectedLoyaltyPoints
          : expectedLoyaltyPoints // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ShippingSummaryModel extends _ShippingSummaryModel {
  const _$_ShippingSummaryModel(
      {required this.subtotal,
      required this.tax,
      required this.shipping,
      @JsonKey(name: "coupon_discount") required this.couponDiscount,
      @JsonKey(name: "calculable_total") required this.calTotal,
      required this.total,
      @JsonKey(name: "coupon_code") this.couponCode,
      @JsonKey(name: "coupon_applied") this.couponApplied,
      @JsonKey(name: "total_items") required this.totalItems,
      @JsonKey(name: "minimum_order_amount_status")
      required this.minimumOrderAmountStatus,
      @JsonKey(name: "minimum_order_amount_msg")
      required this.minimumOrderAmountMsg,
      @JsonKey(name: "minimum_order_amount")
      required this.minimumOrderAmountAmount,
      @JsonKey(name: "wallet_system_active") required this.walletSystemActive,
      @JsonKey(name: "wallet_balance") required this.walletBalance,
      @JsonKey(name: "wallet_balance_value") required this.walletBalanceValue,
      @JsonKey(name: "avilable_pay_with_wallet")
      required this.avilablePayWithWallet,
      @JsonKey(name: "avilable_cash_on_delivery")
      required this.avilableCashOnDelivery,
      @JsonKey(name: "service_fees") required this.serviceFee,
      @JsonKey(name: "technology_fees") required this.technologyFees,
      required final List<ShippingItemModel> items,
      @JsonKey(name: "loyalty_points_value") this.loyaltyPointsValue,
      @JsonKey(name: "loyalty_points_applied") this.loyaltyPointsApplied,
      @JsonKey(name: "loyalty_points") this.loyaltyPoints,
      @JsonKey(name: "expected_loyalty_points")
      required this.expectedLoyaltyPoints})
      : _items = items,
        super._();

  factory _$_ShippingSummaryModel.fromJson(Map<String, dynamic> json) =>
      _$$_ShippingSummaryModelFromJson(json);

  @override
  final String subtotal;
  @override
  final String tax;
  @override
  final String shipping;
  @override
  @JsonKey(name: "coupon_discount")
  final String couponDiscount;
  @override
  @JsonKey(name: "calculable_total")
  final double calTotal;
  @override
  final String total;
  @override
  @JsonKey(name: "coupon_code")
  final String? couponCode;
  @override
  @JsonKey(name: "coupon_applied")
  final bool? couponApplied;
  @override
  @JsonKey(name: "total_items")
  final int totalItems;
  @override
  @JsonKey(name: "minimum_order_amount_status")
  final bool minimumOrderAmountStatus;
  @override
  @JsonKey(name: "minimum_order_amount_msg")
  final String minimumOrderAmountMsg;
  @override
  @JsonKey(name: "minimum_order_amount")
  final double minimumOrderAmountAmount;
  @override
  @JsonKey(name: "wallet_system_active")
  final bool walletSystemActive;
  @override
  @JsonKey(name: "wallet_balance")
  final String walletBalance;
  @override
  @JsonKey(name: "wallet_balance_value")
  final double walletBalanceValue;
  @override
  @JsonKey(name: "avilable_pay_with_wallet")
  final bool avilablePayWithWallet;
  @override
  @JsonKey(name: "avilable_cash_on_delivery")
  final bool avilableCashOnDelivery;
  @override
  @JsonKey(name: "service_fees")
  final String serviceFee;
  @override
  @JsonKey(name: "technology_fees")
  final String technologyFees;
  final List<ShippingItemModel> _items;
  @override
  List<ShippingItemModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey(name: "loyalty_points_value")
  final String? loyaltyPointsValue;
  @override
  @JsonKey(name: "loyalty_points_applied")
  final bool? loyaltyPointsApplied;
  @override
  @JsonKey(name: "loyalty_points")
  final int? loyaltyPoints;
  @override
  @JsonKey(name: "expected_loyalty_points")
  final int expectedLoyaltyPoints;

  @override
  String toString() {
    return 'ShippingSummaryModel(subtotal: $subtotal, tax: $tax, shipping: $shipping, couponDiscount: $couponDiscount, calTotal: $calTotal, total: $total, couponCode: $couponCode, couponApplied: $couponApplied, totalItems: $totalItems, minimumOrderAmountStatus: $minimumOrderAmountStatus, minimumOrderAmountMsg: $minimumOrderAmountMsg, minimumOrderAmountAmount: $minimumOrderAmountAmount, walletSystemActive: $walletSystemActive, walletBalance: $walletBalance, walletBalanceValue: $walletBalanceValue, avilablePayWithWallet: $avilablePayWithWallet, avilableCashOnDelivery: $avilableCashOnDelivery, serviceFee: $serviceFee, technologyFees: $technologyFees, items: $items, loyaltyPointsValue: $loyaltyPointsValue, loyaltyPointsApplied: $loyaltyPointsApplied, loyaltyPoints: $loyaltyPoints, expectedLoyaltyPoints: $expectedLoyaltyPoints)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShippingSummaryModel &&
            (identical(other.subtotal, subtotal) ||
                other.subtotal == subtotal) &&
            (identical(other.tax, tax) || other.tax == tax) &&
            (identical(other.shipping, shipping) ||
                other.shipping == shipping) &&
            (identical(other.couponDiscount, couponDiscount) ||
                other.couponDiscount == couponDiscount) &&
            (identical(other.calTotal, calTotal) ||
                other.calTotal == calTotal) &&
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
            (identical(
                    other.minimumOrderAmountAmount, minimumOrderAmountAmount) ||
                other.minimumOrderAmountAmount == minimumOrderAmountAmount) &&
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
            (identical(other.serviceFee, serviceFee) ||
                other.serviceFee == serviceFee) &&
            (identical(other.technologyFees, technologyFees) ||
                other.technologyFees == technologyFees) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.loyaltyPointsValue, loyaltyPointsValue) ||
                other.loyaltyPointsValue == loyaltyPointsValue) &&
            (identical(other.loyaltyPointsApplied, loyaltyPointsApplied) ||
                other.loyaltyPointsApplied == loyaltyPointsApplied) &&
            (identical(other.loyaltyPoints, loyaltyPoints) ||
                other.loyaltyPoints == loyaltyPoints) &&
            (identical(other.expectedLoyaltyPoints, expectedLoyaltyPoints) ||
                other.expectedLoyaltyPoints == expectedLoyaltyPoints));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        subtotal,
        tax,
        shipping,
        couponDiscount,
        calTotal,
        total,
        couponCode,
        couponApplied,
        totalItems,
        minimumOrderAmountStatus,
        minimumOrderAmountMsg,
        minimumOrderAmountAmount,
        walletSystemActive,
        walletBalance,
        walletBalanceValue,
        avilablePayWithWallet,
        avilableCashOnDelivery,
        serviceFee,
        technologyFees,
        const DeepCollectionEquality().hash(_items),
        loyaltyPointsValue,
        loyaltyPointsApplied,
        loyaltyPoints,
        expectedLoyaltyPoints
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShippingSummaryModelCopyWith<_$_ShippingSummaryModel> get copyWith =>
      __$$_ShippingSummaryModelCopyWithImpl<_$_ShippingSummaryModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShippingSummaryModelToJson(
      this,
    );
  }
}

abstract class _ShippingSummaryModel extends ShippingSummaryModel {
  const factory _ShippingSummaryModel(
      {required final String subtotal,
      required final String tax,
      required final String shipping,
      @JsonKey(name: "coupon_discount") required final String couponDiscount,
      @JsonKey(name: "calculable_total") required final double calTotal,
      required final String total,
      @JsonKey(name: "coupon_code") final String? couponCode,
      @JsonKey(name: "coupon_applied") final bool? couponApplied,
      @JsonKey(name: "total_items") required final int totalItems,
      @JsonKey(name: "minimum_order_amount_status")
      required final bool minimumOrderAmountStatus,
      @JsonKey(name: "minimum_order_amount_msg")
      required final String minimumOrderAmountMsg,
      @JsonKey(name: "minimum_order_amount")
      required final double minimumOrderAmountAmount,
      @JsonKey(name: "wallet_system_active")
      required final bool walletSystemActive,
      @JsonKey(name: "wallet_balance") required final String walletBalance,
      @JsonKey(name: "wallet_balance_value")
      required final double walletBalanceValue,
      @JsonKey(name: "avilable_pay_with_wallet")
      required final bool avilablePayWithWallet,
      @JsonKey(name: "avilable_cash_on_delivery")
      required final bool avilableCashOnDelivery,
      @JsonKey(name: "service_fees") required final String serviceFee,
      @JsonKey(name: "technology_fees") required final String technologyFees,
      required final List<ShippingItemModel> items,
      @JsonKey(name: "loyalty_points_value") final String? loyaltyPointsValue,
      @JsonKey(name: "loyalty_points_applied") final bool? loyaltyPointsApplied,
      @JsonKey(name: "loyalty_points") final int? loyaltyPoints,
      @JsonKey(name: "expected_loyalty_points")
      required final int expectedLoyaltyPoints}) = _$_ShippingSummaryModel;
  const _ShippingSummaryModel._() : super._();

  factory _ShippingSummaryModel.fromJson(Map<String, dynamic> json) =
      _$_ShippingSummaryModel.fromJson;

  @override
  String get subtotal;
  @override
  String get tax;
  @override
  String get shipping;
  @override
  @JsonKey(name: "coupon_discount")
  String get couponDiscount;
  @override
  @JsonKey(name: "calculable_total")
  double get calTotal;
  @override
  String get total;
  @override
  @JsonKey(name: "coupon_code")
  String? get couponCode;
  @override
  @JsonKey(name: "coupon_applied")
  bool? get couponApplied;
  @override
  @JsonKey(name: "total_items")
  int get totalItems;
  @override
  @JsonKey(name: "minimum_order_amount_status")
  bool get minimumOrderAmountStatus;
  @override
  @JsonKey(name: "minimum_order_amount_msg")
  String get minimumOrderAmountMsg;
  @override
  @JsonKey(name: "minimum_order_amount")
  double get minimumOrderAmountAmount;
  @override
  @JsonKey(name: "wallet_system_active")
  bool get walletSystemActive;
  @override
  @JsonKey(name: "wallet_balance")
  String get walletBalance;
  @override
  @JsonKey(name: "wallet_balance_value")
  double get walletBalanceValue;
  @override
  @JsonKey(name: "avilable_pay_with_wallet")
  bool get avilablePayWithWallet;
  @override
  @JsonKey(name: "avilable_cash_on_delivery")
  bool get avilableCashOnDelivery;
  @override
  @JsonKey(name: "service_fees")
  String get serviceFee;
  @override
  @JsonKey(name: "technology_fees")
  String get technologyFees;
  @override
  List<ShippingItemModel> get items;
  @override
  @JsonKey(name: "loyalty_points_value")
  String? get loyaltyPointsValue;
  @override
  @JsonKey(name: "loyalty_points_applied")
  bool? get loyaltyPointsApplied;
  @override
  @JsonKey(name: "loyalty_points")
  int? get loyaltyPoints;
  @override
  @JsonKey(name: "expected_loyalty_points")
  int get expectedLoyaltyPoints;
  @override
  @JsonKey(ignore: true)
  _$$_ShippingSummaryModelCopyWith<_$_ShippingSummaryModel> get copyWith =>
      throw _privateConstructorUsedError;
}
