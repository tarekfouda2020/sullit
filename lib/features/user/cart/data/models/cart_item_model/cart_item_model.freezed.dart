// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CartItemModel _$CartItemModelFromJson(Map<String, dynamic> json) {
  return _CartItemModel.fromJson(json);
}

/// @nodoc
mixin _$CartItemModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "owner_id")
  int get ownerId => throw _privateConstructorUsedError;
  @JsonKey(name: "loyalty_points")
  int get loyaltyPoints => throw _privateConstructorUsedError;
  @JsonKey(name: "thumbnail_image")
  String get thumbnailImage => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  String get tax => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  @JsonKey(name: "is_digital")
  bool get isDigital => throw _privateConstructorUsedError;
  @JsonKey(name: "has_special_loyalty_points")
  bool get hasSpecialLoyaltyPoints => throw _privateConstructorUsedError;
  String get total => throw _privateConstructorUsedError;
  @JsonKey(name: "calculable_total")
  num get calculableTotal => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_symbol")
  String get currencySymbol => throw _privateConstructorUsedError;
  @JsonKey(name: "product_id")
  int get productId => throw _privateConstructorUsedError;
  @JsonKey(name: "min_qty")
  int get minQty => throw _privateConstructorUsedError;
  @JsonKey(name: "stock_qty")
  int get stockQty => throw _privateConstructorUsedError;
  @JsonKey(name: "is_wishlist")
  bool get isWishlist => throw _privateConstructorUsedError;
  @JsonKey(name: "prescription_required")
  bool? get prescriptionRequired => throw _privateConstructorUsedError;
  @JsonKey(name: "insurance_eligible")
  bool? get insuranceEligible => throw _privateConstructorUsedError;
  @JsonKey(name: "sold_by_type")
  String get soldByType => throw _privateConstructorUsedError;
  @JsonKey(name: "sold_by_name")
  String get soldBy => throw _privateConstructorUsedError;
  @JsonKey(name: "shop_id")
  int? get shopId => throw _privateConstructorUsedError;
  @JsonKey(name: "branch_id")
  int? get branchId => throw _privateConstructorUsedError;
  @JsonKey(name: "cart_options")
  List<CartOptionModel>? get cartOptions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartItemModelCopyWith<CartItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartItemModelCopyWith<$Res> {
  factory $CartItemModelCopyWith(
          CartItemModel value, $Res Function(CartItemModel) then) =
      _$CartItemModelCopyWithImpl<$Res, CartItemModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "owner_id") int ownerId,
      @JsonKey(name: "loyalty_points") int loyaltyPoints,
      @JsonKey(name: "thumbnail_image") String thumbnailImage,
      String name,
      String price,
      String tax,
      int quantity,
      double rating,
      @JsonKey(name: "is_digital") bool isDigital,
      @JsonKey(name: "has_special_loyalty_points") bool hasSpecialLoyaltyPoints,
      String total,
      @JsonKey(name: "calculable_total") num calculableTotal,
      @JsonKey(name: "currency_symbol") String currencySymbol,
      @JsonKey(name: "product_id") int productId,
      @JsonKey(name: "min_qty") int minQty,
      @JsonKey(name: "stock_qty") int stockQty,
      @JsonKey(name: "is_wishlist") bool isWishlist,
      @JsonKey(name: "prescription_required") bool? prescriptionRequired,
      @JsonKey(name: "insurance_eligible") bool? insuranceEligible,
      @JsonKey(name: "sold_by_type") String soldByType,
      @JsonKey(name: "sold_by_name") String soldBy,
      @JsonKey(name: "shop_id") int? shopId,
      @JsonKey(name: "branch_id") int? branchId,
      @JsonKey(name: "cart_options") List<CartOptionModel>? cartOptions});
}

/// @nodoc
class _$CartItemModelCopyWithImpl<$Res, $Val extends CartItemModel>
    implements $CartItemModelCopyWith<$Res> {
  _$CartItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ownerId = null,
    Object? loyaltyPoints = null,
    Object? thumbnailImage = null,
    Object? name = null,
    Object? price = null,
    Object? tax = null,
    Object? quantity = null,
    Object? rating = null,
    Object? isDigital = null,
    Object? hasSpecialLoyaltyPoints = null,
    Object? total = null,
    Object? calculableTotal = null,
    Object? currencySymbol = null,
    Object? productId = null,
    Object? minQty = null,
    Object? stockQty = null,
    Object? isWishlist = null,
    Object? prescriptionRequired = freezed,
    Object? insuranceEligible = freezed,
    Object? soldByType = null,
    Object? soldBy = null,
    Object? shopId = freezed,
    Object? branchId = freezed,
    Object? cartOptions = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int,
      loyaltyPoints: null == loyaltyPoints
          ? _value.loyaltyPoints
          : loyaltyPoints // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnailImage: null == thumbnailImage
          ? _value.thumbnailImage
          : thumbnailImage // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      tax: null == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      isDigital: null == isDigital
          ? _value.isDigital
          : isDigital // ignore: cast_nullable_to_non_nullable
              as bool,
      hasSpecialLoyaltyPoints: null == hasSpecialLoyaltyPoints
          ? _value.hasSpecialLoyaltyPoints
          : hasSpecialLoyaltyPoints // ignore: cast_nullable_to_non_nullable
              as bool,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
      calculableTotal: null == calculableTotal
          ? _value.calculableTotal
          : calculableTotal // ignore: cast_nullable_to_non_nullable
              as num,
      currencySymbol: null == currencySymbol
          ? _value.currencySymbol
          : currencySymbol // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      minQty: null == minQty
          ? _value.minQty
          : minQty // ignore: cast_nullable_to_non_nullable
              as int,
      stockQty: null == stockQty
          ? _value.stockQty
          : stockQty // ignore: cast_nullable_to_non_nullable
              as int,
      isWishlist: null == isWishlist
          ? _value.isWishlist
          : isWishlist // ignore: cast_nullable_to_non_nullable
              as bool,
      prescriptionRequired: freezed == prescriptionRequired
          ? _value.prescriptionRequired
          : prescriptionRequired // ignore: cast_nullable_to_non_nullable
              as bool?,
      insuranceEligible: freezed == insuranceEligible
          ? _value.insuranceEligible
          : insuranceEligible // ignore: cast_nullable_to_non_nullable
              as bool?,
      soldByType: null == soldByType
          ? _value.soldByType
          : soldByType // ignore: cast_nullable_to_non_nullable
              as String,
      soldBy: null == soldBy
          ? _value.soldBy
          : soldBy // ignore: cast_nullable_to_non_nullable
              as String,
      shopId: freezed == shopId
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as int?,
      branchId: freezed == branchId
          ? _value.branchId
          : branchId // ignore: cast_nullable_to_non_nullable
              as int?,
      cartOptions: freezed == cartOptions
          ? _value.cartOptions
          : cartOptions // ignore: cast_nullable_to_non_nullable
              as List<CartOptionModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CartItemModelCopyWith<$Res>
    implements $CartItemModelCopyWith<$Res> {
  factory _$$_CartItemModelCopyWith(
          _$_CartItemModel value, $Res Function(_$_CartItemModel) then) =
      __$$_CartItemModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "owner_id") int ownerId,
      @JsonKey(name: "loyalty_points") int loyaltyPoints,
      @JsonKey(name: "thumbnail_image") String thumbnailImage,
      String name,
      String price,
      String tax,
      int quantity,
      double rating,
      @JsonKey(name: "is_digital") bool isDigital,
      @JsonKey(name: "has_special_loyalty_points") bool hasSpecialLoyaltyPoints,
      String total,
      @JsonKey(name: "calculable_total") num calculableTotal,
      @JsonKey(name: "currency_symbol") String currencySymbol,
      @JsonKey(name: "product_id") int productId,
      @JsonKey(name: "min_qty") int minQty,
      @JsonKey(name: "stock_qty") int stockQty,
      @JsonKey(name: "is_wishlist") bool isWishlist,
      @JsonKey(name: "prescription_required") bool? prescriptionRequired,
      @JsonKey(name: "insurance_eligible") bool? insuranceEligible,
      @JsonKey(name: "sold_by_type") String soldByType,
      @JsonKey(name: "sold_by_name") String soldBy,
      @JsonKey(name: "shop_id") int? shopId,
      @JsonKey(name: "branch_id") int? branchId,
      @JsonKey(name: "cart_options") List<CartOptionModel>? cartOptions});
}

/// @nodoc
class __$$_CartItemModelCopyWithImpl<$Res>
    extends _$CartItemModelCopyWithImpl<$Res, _$_CartItemModel>
    implements _$$_CartItemModelCopyWith<$Res> {
  __$$_CartItemModelCopyWithImpl(
      _$_CartItemModel _value, $Res Function(_$_CartItemModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ownerId = null,
    Object? loyaltyPoints = null,
    Object? thumbnailImage = null,
    Object? name = null,
    Object? price = null,
    Object? tax = null,
    Object? quantity = null,
    Object? rating = null,
    Object? isDigital = null,
    Object? hasSpecialLoyaltyPoints = null,
    Object? total = null,
    Object? calculableTotal = null,
    Object? currencySymbol = null,
    Object? productId = null,
    Object? minQty = null,
    Object? stockQty = null,
    Object? isWishlist = null,
    Object? prescriptionRequired = freezed,
    Object? insuranceEligible = freezed,
    Object? soldByType = null,
    Object? soldBy = null,
    Object? shopId = freezed,
    Object? branchId = freezed,
    Object? cartOptions = freezed,
  }) {
    return _then(_$_CartItemModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int,
      loyaltyPoints: null == loyaltyPoints
          ? _value.loyaltyPoints
          : loyaltyPoints // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnailImage: null == thumbnailImage
          ? _value.thumbnailImage
          : thumbnailImage // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      tax: null == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      isDigital: null == isDigital
          ? _value.isDigital
          : isDigital // ignore: cast_nullable_to_non_nullable
              as bool,
      hasSpecialLoyaltyPoints: null == hasSpecialLoyaltyPoints
          ? _value.hasSpecialLoyaltyPoints
          : hasSpecialLoyaltyPoints // ignore: cast_nullable_to_non_nullable
              as bool,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
      calculableTotal: null == calculableTotal
          ? _value.calculableTotal
          : calculableTotal // ignore: cast_nullable_to_non_nullable
              as num,
      currencySymbol: null == currencySymbol
          ? _value.currencySymbol
          : currencySymbol // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      minQty: null == minQty
          ? _value.minQty
          : minQty // ignore: cast_nullable_to_non_nullable
              as int,
      stockQty: null == stockQty
          ? _value.stockQty
          : stockQty // ignore: cast_nullable_to_non_nullable
              as int,
      isWishlist: null == isWishlist
          ? _value.isWishlist
          : isWishlist // ignore: cast_nullable_to_non_nullable
              as bool,
      prescriptionRequired: freezed == prescriptionRequired
          ? _value.prescriptionRequired
          : prescriptionRequired // ignore: cast_nullable_to_non_nullable
              as bool?,
      insuranceEligible: freezed == insuranceEligible
          ? _value.insuranceEligible
          : insuranceEligible // ignore: cast_nullable_to_non_nullable
              as bool?,
      soldByType: null == soldByType
          ? _value.soldByType
          : soldByType // ignore: cast_nullable_to_non_nullable
              as String,
      soldBy: null == soldBy
          ? _value.soldBy
          : soldBy // ignore: cast_nullable_to_non_nullable
              as String,
      shopId: freezed == shopId
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as int?,
      branchId: freezed == branchId
          ? _value.branchId
          : branchId // ignore: cast_nullable_to_non_nullable
              as int?,
      cartOptions: freezed == cartOptions
          ? _value._cartOptions
          : cartOptions // ignore: cast_nullable_to_non_nullable
              as List<CartOptionModel>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_CartItemModel extends _CartItemModel {
  const _$_CartItemModel(
      {required this.id,
      @JsonKey(name: "owner_id") required this.ownerId,
      @JsonKey(name: "loyalty_points") required this.loyaltyPoints,
      @JsonKey(name: "thumbnail_image") required this.thumbnailImage,
      required this.name,
      required this.price,
      required this.tax,
      required this.quantity,
      required this.rating,
      @JsonKey(name: "is_digital") required this.isDigital,
      @JsonKey(name: "has_special_loyalty_points")
      required this.hasSpecialLoyaltyPoints,
      required this.total,
      @JsonKey(name: "calculable_total") required this.calculableTotal,
      @JsonKey(name: "currency_symbol") required this.currencySymbol,
      @JsonKey(name: "product_id") required this.productId,
      @JsonKey(name: "min_qty") required this.minQty,
      @JsonKey(name: "stock_qty") required this.stockQty,
      @JsonKey(name: "is_wishlist") required this.isWishlist,
      @JsonKey(name: "prescription_required") this.prescriptionRequired,
      @JsonKey(name: "insurance_eligible") this.insuranceEligible,
      @JsonKey(name: "sold_by_type") required this.soldByType,
      @JsonKey(name: "sold_by_name") required this.soldBy,
      @JsonKey(name: "shop_id") required this.shopId,
      @JsonKey(name: "branch_id") required this.branchId,
      @JsonKey(name: "cart_options") final List<CartOptionModel>? cartOptions})
      : _cartOptions = cartOptions,
        super._();

  factory _$_CartItemModel.fromJson(Map<String, dynamic> json) =>
      _$$_CartItemModelFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: "owner_id")
  final int ownerId;
  @override
  @JsonKey(name: "loyalty_points")
  final int loyaltyPoints;
  @override
  @JsonKey(name: "thumbnail_image")
  final String thumbnailImage;
  @override
  final String name;
  @override
  final String price;
  @override
  final String tax;
  @override
  final int quantity;
  @override
  final double rating;
  @override
  @JsonKey(name: "is_digital")
  final bool isDigital;
  @override
  @JsonKey(name: "has_special_loyalty_points")
  final bool hasSpecialLoyaltyPoints;
  @override
  final String total;
  @override
  @JsonKey(name: "calculable_total")
  final num calculableTotal;
  @override
  @JsonKey(name: "currency_symbol")
  final String currencySymbol;
  @override
  @JsonKey(name: "product_id")
  final int productId;
  @override
  @JsonKey(name: "min_qty")
  final int minQty;
  @override
  @JsonKey(name: "stock_qty")
  final int stockQty;
  @override
  @JsonKey(name: "is_wishlist")
  final bool isWishlist;
  @override
  @JsonKey(name: "prescription_required")
  final bool? prescriptionRequired;
  @override
  @JsonKey(name: "insurance_eligible")
  final bool? insuranceEligible;
  @override
  @JsonKey(name: "sold_by_type")
  final String soldByType;
  @override
  @JsonKey(name: "sold_by_name")
  final String soldBy;
  @override
  @JsonKey(name: "shop_id")
  final int? shopId;
  @override
  @JsonKey(name: "branch_id")
  final int? branchId;
  final List<CartOptionModel>? _cartOptions;
  @override
  @JsonKey(name: "cart_options")
  List<CartOptionModel>? get cartOptions {
    final value = _cartOptions;
    if (value == null) return null;
    if (_cartOptions is EqualUnmodifiableListView) return _cartOptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CartItemModel(id: $id, ownerId: $ownerId, loyaltyPoints: $loyaltyPoints, thumbnailImage: $thumbnailImage, name: $name, price: $price, tax: $tax, quantity: $quantity, rating: $rating, isDigital: $isDigital, hasSpecialLoyaltyPoints: $hasSpecialLoyaltyPoints, total: $total, calculableTotal: $calculableTotal, currencySymbol: $currencySymbol, productId: $productId, minQty: $minQty, stockQty: $stockQty, isWishlist: $isWishlist, prescriptionRequired: $prescriptionRequired, insuranceEligible: $insuranceEligible, soldByType: $soldByType, soldBy: $soldBy, shopId: $shopId, branchId: $branchId, cartOptions: $cartOptions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartItemModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.loyaltyPoints, loyaltyPoints) ||
                other.loyaltyPoints == loyaltyPoints) &&
            (identical(other.thumbnailImage, thumbnailImage) ||
                other.thumbnailImage == thumbnailImage) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.tax, tax) || other.tax == tax) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.isDigital, isDigital) ||
                other.isDigital == isDigital) &&
            (identical(
                    other.hasSpecialLoyaltyPoints, hasSpecialLoyaltyPoints) ||
                other.hasSpecialLoyaltyPoints == hasSpecialLoyaltyPoints) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.calculableTotal, calculableTotal) ||
                other.calculableTotal == calculableTotal) &&
            (identical(other.currencySymbol, currencySymbol) ||
                other.currencySymbol == currencySymbol) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.minQty, minQty) || other.minQty == minQty) &&
            (identical(other.stockQty, stockQty) ||
                other.stockQty == stockQty) &&
            (identical(other.isWishlist, isWishlist) ||
                other.isWishlist == isWishlist) &&
            (identical(other.prescriptionRequired, prescriptionRequired) ||
                other.prescriptionRequired == prescriptionRequired) &&
            (identical(other.insuranceEligible, insuranceEligible) ||
                other.insuranceEligible == insuranceEligible) &&
            (identical(other.soldByType, soldByType) ||
                other.soldByType == soldByType) &&
            (identical(other.soldBy, soldBy) || other.soldBy == soldBy) &&
            (identical(other.shopId, shopId) || other.shopId == shopId) &&
            (identical(other.branchId, branchId) ||
                other.branchId == branchId) &&
            const DeepCollectionEquality()
                .equals(other._cartOptions, _cartOptions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        ownerId,
        loyaltyPoints,
        thumbnailImage,
        name,
        price,
        tax,
        quantity,
        rating,
        isDigital,
        hasSpecialLoyaltyPoints,
        total,
        calculableTotal,
        currencySymbol,
        productId,
        minQty,
        stockQty,
        isWishlist,
        prescriptionRequired,
        insuranceEligible,
        soldByType,
        soldBy,
        shopId,
        branchId,
        const DeepCollectionEquality().hash(_cartOptions)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartItemModelCopyWith<_$_CartItemModel> get copyWith =>
      __$$_CartItemModelCopyWithImpl<_$_CartItemModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartItemModelToJson(
      this,
    );
  }
}

abstract class _CartItemModel extends CartItemModel {
  const factory _CartItemModel(
      {required final int id,
      @JsonKey(name: "owner_id") required final int ownerId,
      @JsonKey(name: "loyalty_points") required final int loyaltyPoints,
      @JsonKey(name: "thumbnail_image") required final String thumbnailImage,
      required final String name,
      required final String price,
      required final String tax,
      required final int quantity,
      required final double rating,
      @JsonKey(name: "is_digital") required final bool isDigital,
      @JsonKey(name: "has_special_loyalty_points")
      required final bool hasSpecialLoyaltyPoints,
      required final String total,
      @JsonKey(name: "calculable_total") required final num calculableTotal,
      @JsonKey(name: "currency_symbol") required final String currencySymbol,
      @JsonKey(name: "product_id") required final int productId,
      @JsonKey(name: "min_qty") required final int minQty,
      @JsonKey(name: "stock_qty") required final int stockQty,
      @JsonKey(name: "is_wishlist") required final bool isWishlist,
      @JsonKey(name: "prescription_required") final bool? prescriptionRequired,
      @JsonKey(name: "insurance_eligible") final bool? insuranceEligible,
      @JsonKey(name: "sold_by_type") required final String soldByType,
      @JsonKey(name: "sold_by_name") required final String soldBy,
      @JsonKey(name: "shop_id") required final int? shopId,
      @JsonKey(name: "branch_id") required final int? branchId,
      @JsonKey(name: "cart_options")
      final List<CartOptionModel>? cartOptions}) = _$_CartItemModel;
  const _CartItemModel._() : super._();

  factory _CartItemModel.fromJson(Map<String, dynamic> json) =
      _$_CartItemModel.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: "owner_id")
  int get ownerId;
  @override
  @JsonKey(name: "loyalty_points")
  int get loyaltyPoints;
  @override
  @JsonKey(name: "thumbnail_image")
  String get thumbnailImage;
  @override
  String get name;
  @override
  String get price;
  @override
  String get tax;
  @override
  int get quantity;
  @override
  double get rating;
  @override
  @JsonKey(name: "is_digital")
  bool get isDigital;
  @override
  @JsonKey(name: "has_special_loyalty_points")
  bool get hasSpecialLoyaltyPoints;
  @override
  String get total;
  @override
  @JsonKey(name: "calculable_total")
  num get calculableTotal;
  @override
  @JsonKey(name: "currency_symbol")
  String get currencySymbol;
  @override
  @JsonKey(name: "product_id")
  int get productId;
  @override
  @JsonKey(name: "min_qty")
  int get minQty;
  @override
  @JsonKey(name: "stock_qty")
  int get stockQty;
  @override
  @JsonKey(name: "is_wishlist")
  bool get isWishlist;
  @override
  @JsonKey(name: "prescription_required")
  bool? get prescriptionRequired;
  @override
  @JsonKey(name: "insurance_eligible")
  bool? get insuranceEligible;
  @override
  @JsonKey(name: "sold_by_type")
  String get soldByType;
  @override
  @JsonKey(name: "sold_by_name")
  String get soldBy;
  @override
  @JsonKey(name: "shop_id")
  int? get shopId;
  @override
  @JsonKey(name: "branch_id")
  int? get branchId;
  @override
  @JsonKey(name: "cart_options")
  List<CartOptionModel>? get cartOptions;
  @override
  @JsonKey(ignore: true)
  _$$_CartItemModelCopyWith<_$_CartItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}
