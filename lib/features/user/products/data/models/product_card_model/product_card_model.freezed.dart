// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_card_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductCardModel _$ProductCardModelFromJson(Map<String, dynamic> json) {
  return _ProductCardModel.fromJson(json);
}

/// @nodoc
mixin _$ProductCardModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'type_label')
  String get typeLabel => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;
  String get barcode => throw _privateConstructorUsedError;
  @JsonKey(name: 'prescription_required')
  bool get prescriptionRequired => throw _privateConstructorUsedError;
  @JsonKey(name: 'insurance_eligible')
  bool get insuranceEligible => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_fresh')
  bool get isFresh => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_special_loyalty_points')
  bool get hasSpecialLoyaltyPoints => throw _privateConstructorUsedError;
  @JsonKey(name: 'loyalty_points')
  int get loyaltyPoints => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumbnail_img')
  String get thumbnailImg => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_multiple')
  bool get isMultiple => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_high_low_discount')
  String get priceHighLowDiscount => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_high_low')
  String get priceHighLow => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_vip_offer')
  bool get hasVipOffer => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_shareholder_discount')
  bool get hasShareholderDiscount => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_discount')
  bool get hasDiscount => throw _privateConstructorUsedError;
  String get discount => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_options')
  List<ProductOption>? get productOptions => throw _privateConstructorUsedError;
  @JsonKey(name: 'min_qty')
  int get minQty => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_qty')
  int? get maxQty => throw _privateConstructorUsedError;
  @JsonKey(name: 'currency_symbol')
  String get currencySymbol => throw _privateConstructorUsedError;
  VariantModel? get variant => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_digital')
  bool get isDigital => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_wishlist')
  bool get isWishlist => throw _privateConstructorUsedError;
  @JsonKey(name: 'seller_id')
  int get sellerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'shop_id')
  int get shopId => throw _privateConstructorUsedError;
  @JsonKey(name: 'sold_by_type')
  String get soldByType => throw _privateConstructorUsedError;
  @JsonKey(name: 'sold_by_name')
  String get soldByName => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_name')
  String get categoryName => throw _privateConstructorUsedError;
  @JsonKey(name: 'brand_name')
  String get brandName => throw _privateConstructorUsedError;
  PharmacyBranchModel? get branch => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCardModelCopyWith<ProductCardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCardModelCopyWith<$Res> {
  factory $ProductCardModelCopyWith(
          ProductCardModel value, $Res Function(ProductCardModel) then) =
      _$ProductCardModelCopyWithImpl<$Res, ProductCardModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      String type,
      @JsonKey(name: 'type_label') String typeLabel,
      String unit,
      String barcode,
      @JsonKey(name: 'prescription_required') bool prescriptionRequired,
      @JsonKey(name: 'insurance_eligible') bool insuranceEligible,
      @JsonKey(name: 'is_fresh') bool isFresh,
      @JsonKey(name: 'has_special_loyalty_points') bool hasSpecialLoyaltyPoints,
      @JsonKey(name: 'loyalty_points') int loyaltyPoints,
      @JsonKey(name: 'thumbnail_img') String thumbnailImg,
      @JsonKey(name: 'is_multiple') bool isMultiple,
      @JsonKey(name: 'price_high_low_discount') String priceHighLowDiscount,
      @JsonKey(name: 'price_high_low') String priceHighLow,
      @JsonKey(name: 'has_vip_offer') bool hasVipOffer,
      @JsonKey(name: 'has_shareholder_discount') bool hasShareholderDiscount,
      @JsonKey(name: 'has_discount') bool hasDiscount,
      String discount,
      @JsonKey(name: 'product_options') List<ProductOption>? productOptions,
      @JsonKey(name: 'min_qty') int minQty,
      @JsonKey(name: 'max_qty') int? maxQty,
      @JsonKey(name: 'currency_symbol') String currencySymbol,
      VariantModel? variant,
      double rating,
      @JsonKey(name: 'is_digital') bool isDigital,
      @JsonKey(name: 'is_wishlist') bool isWishlist,
      @JsonKey(name: 'seller_id') int sellerId,
      @JsonKey(name: 'shop_id') int shopId,
      @JsonKey(name: 'sold_by_type') String soldByType,
      @JsonKey(name: 'sold_by_name') String soldByName,
      @JsonKey(name: 'category_name') String categoryName,
      @JsonKey(name: 'brand_name') String brandName,
      PharmacyBranchModel? branch});

  $VariantModelCopyWith<$Res>? get variant;
  $PharmacyBranchModelCopyWith<$Res>? get branch;
}

/// @nodoc
class _$ProductCardModelCopyWithImpl<$Res, $Val extends ProductCardModel>
    implements $ProductCardModelCopyWith<$Res> {
  _$ProductCardModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? typeLabel = null,
    Object? unit = null,
    Object? barcode = null,
    Object? prescriptionRequired = null,
    Object? insuranceEligible = null,
    Object? isFresh = null,
    Object? hasSpecialLoyaltyPoints = null,
    Object? loyaltyPoints = null,
    Object? thumbnailImg = null,
    Object? isMultiple = null,
    Object? priceHighLowDiscount = null,
    Object? priceHighLow = null,
    Object? hasVipOffer = null,
    Object? hasShareholderDiscount = null,
    Object? hasDiscount = null,
    Object? discount = null,
    Object? productOptions = freezed,
    Object? minQty = null,
    Object? maxQty = freezed,
    Object? currencySymbol = null,
    Object? variant = freezed,
    Object? rating = null,
    Object? isDigital = null,
    Object? isWishlist = null,
    Object? sellerId = null,
    Object? shopId = null,
    Object? soldByType = null,
    Object? soldByName = null,
    Object? categoryName = null,
    Object? brandName = null,
    Object? branch = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      typeLabel: null == typeLabel
          ? _value.typeLabel
          : typeLabel // ignore: cast_nullable_to_non_nullable
              as String,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      barcode: null == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String,
      prescriptionRequired: null == prescriptionRequired
          ? _value.prescriptionRequired
          : prescriptionRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      insuranceEligible: null == insuranceEligible
          ? _value.insuranceEligible
          : insuranceEligible // ignore: cast_nullable_to_non_nullable
              as bool,
      isFresh: null == isFresh
          ? _value.isFresh
          : isFresh // ignore: cast_nullable_to_non_nullable
              as bool,
      hasSpecialLoyaltyPoints: null == hasSpecialLoyaltyPoints
          ? _value.hasSpecialLoyaltyPoints
          : hasSpecialLoyaltyPoints // ignore: cast_nullable_to_non_nullable
              as bool,
      loyaltyPoints: null == loyaltyPoints
          ? _value.loyaltyPoints
          : loyaltyPoints // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnailImg: null == thumbnailImg
          ? _value.thumbnailImg
          : thumbnailImg // ignore: cast_nullable_to_non_nullable
              as String,
      isMultiple: null == isMultiple
          ? _value.isMultiple
          : isMultiple // ignore: cast_nullable_to_non_nullable
              as bool,
      priceHighLowDiscount: null == priceHighLowDiscount
          ? _value.priceHighLowDiscount
          : priceHighLowDiscount // ignore: cast_nullable_to_non_nullable
              as String,
      priceHighLow: null == priceHighLow
          ? _value.priceHighLow
          : priceHighLow // ignore: cast_nullable_to_non_nullable
              as String,
      hasVipOffer: null == hasVipOffer
          ? _value.hasVipOffer
          : hasVipOffer // ignore: cast_nullable_to_non_nullable
              as bool,
      hasShareholderDiscount: null == hasShareholderDiscount
          ? _value.hasShareholderDiscount
          : hasShareholderDiscount // ignore: cast_nullable_to_non_nullable
              as bool,
      hasDiscount: null == hasDiscount
          ? _value.hasDiscount
          : hasDiscount // ignore: cast_nullable_to_non_nullable
              as bool,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String,
      productOptions: freezed == productOptions
          ? _value.productOptions
          : productOptions // ignore: cast_nullable_to_non_nullable
              as List<ProductOption>?,
      minQty: null == minQty
          ? _value.minQty
          : minQty // ignore: cast_nullable_to_non_nullable
              as int,
      maxQty: freezed == maxQty
          ? _value.maxQty
          : maxQty // ignore: cast_nullable_to_non_nullable
              as int?,
      currencySymbol: null == currencySymbol
          ? _value.currencySymbol
          : currencySymbol // ignore: cast_nullable_to_non_nullable
              as String,
      variant: freezed == variant
          ? _value.variant
          : variant // ignore: cast_nullable_to_non_nullable
              as VariantModel?,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      isDigital: null == isDigital
          ? _value.isDigital
          : isDigital // ignore: cast_nullable_to_non_nullable
              as bool,
      isWishlist: null == isWishlist
          ? _value.isWishlist
          : isWishlist // ignore: cast_nullable_to_non_nullable
              as bool,
      sellerId: null == sellerId
          ? _value.sellerId
          : sellerId // ignore: cast_nullable_to_non_nullable
              as int,
      shopId: null == shopId
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as int,
      soldByType: null == soldByType
          ? _value.soldByType
          : soldByType // ignore: cast_nullable_to_non_nullable
              as String,
      soldByName: null == soldByName
          ? _value.soldByName
          : soldByName // ignore: cast_nullable_to_non_nullable
              as String,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      brandName: null == brandName
          ? _value.brandName
          : brandName // ignore: cast_nullable_to_non_nullable
              as String,
      branch: freezed == branch
          ? _value.branch
          : branch // ignore: cast_nullable_to_non_nullable
              as PharmacyBranchModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VariantModelCopyWith<$Res>? get variant {
    if (_value.variant == null) {
      return null;
    }

    return $VariantModelCopyWith<$Res>(_value.variant!, (value) {
      return _then(_value.copyWith(variant: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PharmacyBranchModelCopyWith<$Res>? get branch {
    if (_value.branch == null) {
      return null;
    }

    return $PharmacyBranchModelCopyWith<$Res>(_value.branch!, (value) {
      return _then(_value.copyWith(branch: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProductCardModelCopyWith<$Res>
    implements $ProductCardModelCopyWith<$Res> {
  factory _$$_ProductCardModelCopyWith(
          _$_ProductCardModel value, $Res Function(_$_ProductCardModel) then) =
      __$$_ProductCardModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String type,
      @JsonKey(name: 'type_label') String typeLabel,
      String unit,
      String barcode,
      @JsonKey(name: 'prescription_required') bool prescriptionRequired,
      @JsonKey(name: 'insurance_eligible') bool insuranceEligible,
      @JsonKey(name: 'is_fresh') bool isFresh,
      @JsonKey(name: 'has_special_loyalty_points') bool hasSpecialLoyaltyPoints,
      @JsonKey(name: 'loyalty_points') int loyaltyPoints,
      @JsonKey(name: 'thumbnail_img') String thumbnailImg,
      @JsonKey(name: 'is_multiple') bool isMultiple,
      @JsonKey(name: 'price_high_low_discount') String priceHighLowDiscount,
      @JsonKey(name: 'price_high_low') String priceHighLow,
      @JsonKey(name: 'has_vip_offer') bool hasVipOffer,
      @JsonKey(name: 'has_shareholder_discount') bool hasShareholderDiscount,
      @JsonKey(name: 'has_discount') bool hasDiscount,
      String discount,
      @JsonKey(name: 'product_options') List<ProductOption>? productOptions,
      @JsonKey(name: 'min_qty') int minQty,
      @JsonKey(name: 'max_qty') int? maxQty,
      @JsonKey(name: 'currency_symbol') String currencySymbol,
      VariantModel? variant,
      double rating,
      @JsonKey(name: 'is_digital') bool isDigital,
      @JsonKey(name: 'is_wishlist') bool isWishlist,
      @JsonKey(name: 'seller_id') int sellerId,
      @JsonKey(name: 'shop_id') int shopId,
      @JsonKey(name: 'sold_by_type') String soldByType,
      @JsonKey(name: 'sold_by_name') String soldByName,
      @JsonKey(name: 'category_name') String categoryName,
      @JsonKey(name: 'brand_name') String brandName,
      PharmacyBranchModel? branch});

  @override
  $VariantModelCopyWith<$Res>? get variant;
  @override
  $PharmacyBranchModelCopyWith<$Res>? get branch;
}

/// @nodoc
class __$$_ProductCardModelCopyWithImpl<$Res>
    extends _$ProductCardModelCopyWithImpl<$Res, _$_ProductCardModel>
    implements _$$_ProductCardModelCopyWith<$Res> {
  __$$_ProductCardModelCopyWithImpl(
      _$_ProductCardModel _value, $Res Function(_$_ProductCardModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? typeLabel = null,
    Object? unit = null,
    Object? barcode = null,
    Object? prescriptionRequired = null,
    Object? insuranceEligible = null,
    Object? isFresh = null,
    Object? hasSpecialLoyaltyPoints = null,
    Object? loyaltyPoints = null,
    Object? thumbnailImg = null,
    Object? isMultiple = null,
    Object? priceHighLowDiscount = null,
    Object? priceHighLow = null,
    Object? hasVipOffer = null,
    Object? hasShareholderDiscount = null,
    Object? hasDiscount = null,
    Object? discount = null,
    Object? productOptions = freezed,
    Object? minQty = null,
    Object? maxQty = freezed,
    Object? currencySymbol = null,
    Object? variant = freezed,
    Object? rating = null,
    Object? isDigital = null,
    Object? isWishlist = null,
    Object? sellerId = null,
    Object? shopId = null,
    Object? soldByType = null,
    Object? soldByName = null,
    Object? categoryName = null,
    Object? brandName = null,
    Object? branch = freezed,
  }) {
    return _then(_$_ProductCardModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      typeLabel: null == typeLabel
          ? _value.typeLabel
          : typeLabel // ignore: cast_nullable_to_non_nullable
              as String,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      barcode: null == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String,
      prescriptionRequired: null == prescriptionRequired
          ? _value.prescriptionRequired
          : prescriptionRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      insuranceEligible: null == insuranceEligible
          ? _value.insuranceEligible
          : insuranceEligible // ignore: cast_nullable_to_non_nullable
              as bool,
      isFresh: null == isFresh
          ? _value.isFresh
          : isFresh // ignore: cast_nullable_to_non_nullable
              as bool,
      hasSpecialLoyaltyPoints: null == hasSpecialLoyaltyPoints
          ? _value.hasSpecialLoyaltyPoints
          : hasSpecialLoyaltyPoints // ignore: cast_nullable_to_non_nullable
              as bool,
      loyaltyPoints: null == loyaltyPoints
          ? _value.loyaltyPoints
          : loyaltyPoints // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnailImg: null == thumbnailImg
          ? _value.thumbnailImg
          : thumbnailImg // ignore: cast_nullable_to_non_nullable
              as String,
      isMultiple: null == isMultiple
          ? _value.isMultiple
          : isMultiple // ignore: cast_nullable_to_non_nullable
              as bool,
      priceHighLowDiscount: null == priceHighLowDiscount
          ? _value.priceHighLowDiscount
          : priceHighLowDiscount // ignore: cast_nullable_to_non_nullable
              as String,
      priceHighLow: null == priceHighLow
          ? _value.priceHighLow
          : priceHighLow // ignore: cast_nullable_to_non_nullable
              as String,
      hasVipOffer: null == hasVipOffer
          ? _value.hasVipOffer
          : hasVipOffer // ignore: cast_nullable_to_non_nullable
              as bool,
      hasShareholderDiscount: null == hasShareholderDiscount
          ? _value.hasShareholderDiscount
          : hasShareholderDiscount // ignore: cast_nullable_to_non_nullable
              as bool,
      hasDiscount: null == hasDiscount
          ? _value.hasDiscount
          : hasDiscount // ignore: cast_nullable_to_non_nullable
              as bool,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String,
      productOptions: freezed == productOptions
          ? _value._productOptions
          : productOptions // ignore: cast_nullable_to_non_nullable
              as List<ProductOption>?,
      minQty: null == minQty
          ? _value.minQty
          : minQty // ignore: cast_nullable_to_non_nullable
              as int,
      maxQty: freezed == maxQty
          ? _value.maxQty
          : maxQty // ignore: cast_nullable_to_non_nullable
              as int?,
      currencySymbol: null == currencySymbol
          ? _value.currencySymbol
          : currencySymbol // ignore: cast_nullable_to_non_nullable
              as String,
      variant: freezed == variant
          ? _value.variant
          : variant // ignore: cast_nullable_to_non_nullable
              as VariantModel?,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      isDigital: null == isDigital
          ? _value.isDigital
          : isDigital // ignore: cast_nullable_to_non_nullable
              as bool,
      isWishlist: null == isWishlist
          ? _value.isWishlist
          : isWishlist // ignore: cast_nullable_to_non_nullable
              as bool,
      sellerId: null == sellerId
          ? _value.sellerId
          : sellerId // ignore: cast_nullable_to_non_nullable
              as int,
      shopId: null == shopId
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as int,
      soldByType: null == soldByType
          ? _value.soldByType
          : soldByType // ignore: cast_nullable_to_non_nullable
              as String,
      soldByName: null == soldByName
          ? _value.soldByName
          : soldByName // ignore: cast_nullable_to_non_nullable
              as String,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      brandName: null == brandName
          ? _value.brandName
          : brandName // ignore: cast_nullable_to_non_nullable
              as String,
      branch: freezed == branch
          ? _value.branch
          : branch // ignore: cast_nullable_to_non_nullable
              as PharmacyBranchModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ProductCardModel extends _ProductCardModel {
  const _$_ProductCardModel(
      {required this.id,
      required this.name,
      required this.type,
      @JsonKey(name: 'type_label') required this.typeLabel,
      required this.unit,
      required this.barcode,
      @JsonKey(name: 'prescription_required')
      required this.prescriptionRequired,
      @JsonKey(name: 'insurance_eligible') required this.insuranceEligible,
      @JsonKey(name: 'is_fresh') required this.isFresh,
      @JsonKey(name: 'has_special_loyalty_points')
      required this.hasSpecialLoyaltyPoints,
      @JsonKey(name: 'loyalty_points') required this.loyaltyPoints,
      @JsonKey(name: 'thumbnail_img') required this.thumbnailImg,
      @JsonKey(name: 'is_multiple') required this.isMultiple,
      @JsonKey(name: 'price_high_low_discount')
      required this.priceHighLowDiscount,
      @JsonKey(name: 'price_high_low') required this.priceHighLow,
      @JsonKey(name: 'has_vip_offer') required this.hasVipOffer,
      @JsonKey(name: 'has_shareholder_discount')
      required this.hasShareholderDiscount,
      @JsonKey(name: 'has_discount') required this.hasDiscount,
      required this.discount,
      @JsonKey(name: 'product_options')
      final List<ProductOption>? productOptions,
      @JsonKey(name: 'min_qty') required this.minQty,
      @JsonKey(name: 'max_qty') this.maxQty,
      @JsonKey(name: 'currency_symbol') required this.currencySymbol,
      this.variant,
      required this.rating,
      @JsonKey(name: 'is_digital') required this.isDigital,
      @JsonKey(name: 'is_wishlist') required this.isWishlist,
      @JsonKey(name: 'seller_id') required this.sellerId,
      @JsonKey(name: 'shop_id') required this.shopId,
      @JsonKey(name: 'sold_by_type') required this.soldByType,
      @JsonKey(name: 'sold_by_name') required this.soldByName,
      @JsonKey(name: 'category_name') required this.categoryName,
      @JsonKey(name: 'brand_name') required this.brandName,
      this.branch})
      : _productOptions = productOptions,
        super._();

  factory _$_ProductCardModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProductCardModelFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String type;
  @override
  @JsonKey(name: 'type_label')
  final String typeLabel;
  @override
  final String unit;
  @override
  final String barcode;
  @override
  @JsonKey(name: 'prescription_required')
  final bool prescriptionRequired;
  @override
  @JsonKey(name: 'insurance_eligible')
  final bool insuranceEligible;
  @override
  @JsonKey(name: 'is_fresh')
  final bool isFresh;
  @override
  @JsonKey(name: 'has_special_loyalty_points')
  final bool hasSpecialLoyaltyPoints;
  @override
  @JsonKey(name: 'loyalty_points')
  final int loyaltyPoints;
  @override
  @JsonKey(name: 'thumbnail_img')
  final String thumbnailImg;
  @override
  @JsonKey(name: 'is_multiple')
  final bool isMultiple;
  @override
  @JsonKey(name: 'price_high_low_discount')
  final String priceHighLowDiscount;
  @override
  @JsonKey(name: 'price_high_low')
  final String priceHighLow;
  @override
  @JsonKey(name: 'has_vip_offer')
  final bool hasVipOffer;
  @override
  @JsonKey(name: 'has_shareholder_discount')
  final bool hasShareholderDiscount;
  @override
  @JsonKey(name: 'has_discount')
  final bool hasDiscount;
  @override
  final String discount;
  final List<ProductOption>? _productOptions;
  @override
  @JsonKey(name: 'product_options')
  List<ProductOption>? get productOptions {
    final value = _productOptions;
    if (value == null) return null;
    if (_productOptions is EqualUnmodifiableListView) return _productOptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'min_qty')
  final int minQty;
  @override
  @JsonKey(name: 'max_qty')
  final int? maxQty;
  @override
  @JsonKey(name: 'currency_symbol')
  final String currencySymbol;
  @override
  final VariantModel? variant;
  @override
  final double rating;
  @override
  @JsonKey(name: 'is_digital')
  final bool isDigital;
  @override
  @JsonKey(name: 'is_wishlist')
  final bool isWishlist;
  @override
  @JsonKey(name: 'seller_id')
  final int sellerId;
  @override
  @JsonKey(name: 'shop_id')
  final int shopId;
  @override
  @JsonKey(name: 'sold_by_type')
  final String soldByType;
  @override
  @JsonKey(name: 'sold_by_name')
  final String soldByName;
  @override
  @JsonKey(name: 'category_name')
  final String categoryName;
  @override
  @JsonKey(name: 'brand_name')
  final String brandName;
  @override
  final PharmacyBranchModel? branch;

  @override
  String toString() {
    return 'ProductCardModel(id: $id, name: $name, type: $type, typeLabel: $typeLabel, unit: $unit, barcode: $barcode, prescriptionRequired: $prescriptionRequired, insuranceEligible: $insuranceEligible, isFresh: $isFresh, hasSpecialLoyaltyPoints: $hasSpecialLoyaltyPoints, loyaltyPoints: $loyaltyPoints, thumbnailImg: $thumbnailImg, isMultiple: $isMultiple, priceHighLowDiscount: $priceHighLowDiscount, priceHighLow: $priceHighLow, hasVipOffer: $hasVipOffer, hasShareholderDiscount: $hasShareholderDiscount, hasDiscount: $hasDiscount, discount: $discount, productOptions: $productOptions, minQty: $minQty, maxQty: $maxQty, currencySymbol: $currencySymbol, variant: $variant, rating: $rating, isDigital: $isDigital, isWishlist: $isWishlist, sellerId: $sellerId, shopId: $shopId, soldByType: $soldByType, soldByName: $soldByName, categoryName: $categoryName, brandName: $brandName, branch: $branch)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductCardModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.typeLabel, typeLabel) ||
                other.typeLabel == typeLabel) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.prescriptionRequired, prescriptionRequired) ||
                other.prescriptionRequired == prescriptionRequired) &&
            (identical(other.insuranceEligible, insuranceEligible) ||
                other.insuranceEligible == insuranceEligible) &&
            (identical(other.isFresh, isFresh) || other.isFresh == isFresh) &&
            (identical(
                    other.hasSpecialLoyaltyPoints, hasSpecialLoyaltyPoints) ||
                other.hasSpecialLoyaltyPoints == hasSpecialLoyaltyPoints) &&
            (identical(other.loyaltyPoints, loyaltyPoints) ||
                other.loyaltyPoints == loyaltyPoints) &&
            (identical(other.thumbnailImg, thumbnailImg) ||
                other.thumbnailImg == thumbnailImg) &&
            (identical(other.isMultiple, isMultiple) ||
                other.isMultiple == isMultiple) &&
            (identical(other.priceHighLowDiscount, priceHighLowDiscount) ||
                other.priceHighLowDiscount == priceHighLowDiscount) &&
            (identical(other.priceHighLow, priceHighLow) ||
                other.priceHighLow == priceHighLow) &&
            (identical(other.hasVipOffer, hasVipOffer) ||
                other.hasVipOffer == hasVipOffer) &&
            (identical(other.hasShareholderDiscount, hasShareholderDiscount) ||
                other.hasShareholderDiscount == hasShareholderDiscount) &&
            (identical(other.hasDiscount, hasDiscount) ||
                other.hasDiscount == hasDiscount) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            const DeepCollectionEquality()
                .equals(other._productOptions, _productOptions) &&
            (identical(other.minQty, minQty) || other.minQty == minQty) &&
            (identical(other.maxQty, maxQty) || other.maxQty == maxQty) &&
            (identical(other.currencySymbol, currencySymbol) ||
                other.currencySymbol == currencySymbol) &&
            (identical(other.variant, variant) || other.variant == variant) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.isDigital, isDigital) ||
                other.isDigital == isDigital) &&
            (identical(other.isWishlist, isWishlist) ||
                other.isWishlist == isWishlist) &&
            (identical(other.sellerId, sellerId) ||
                other.sellerId == sellerId) &&
            (identical(other.shopId, shopId) || other.shopId == shopId) &&
            (identical(other.soldByType, soldByType) ||
                other.soldByType == soldByType) &&
            (identical(other.soldByName, soldByName) ||
                other.soldByName == soldByName) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.brandName, brandName) ||
                other.brandName == brandName) &&
            (identical(other.branch, branch) || other.branch == branch));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        type,
        typeLabel,
        unit,
        barcode,
        prescriptionRequired,
        insuranceEligible,
        isFresh,
        hasSpecialLoyaltyPoints,
        loyaltyPoints,
        thumbnailImg,
        isMultiple,
        priceHighLowDiscount,
        priceHighLow,
        hasVipOffer,
        hasShareholderDiscount,
        hasDiscount,
        discount,
        const DeepCollectionEquality().hash(_productOptions),
        minQty,
        maxQty,
        currencySymbol,
        variant,
        rating,
        isDigital,
        isWishlist,
        sellerId,
        shopId,
        soldByType,
        soldByName,
        categoryName,
        brandName,
        branch
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductCardModelCopyWith<_$_ProductCardModel> get copyWith =>
      __$$_ProductCardModelCopyWithImpl<_$_ProductCardModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductCardModelToJson(
      this,
    );
  }
}

abstract class _ProductCardModel extends ProductCardModel {
  const factory _ProductCardModel(
      {required final int id,
      required final String name,
      required final String type,
      @JsonKey(name: 'type_label') required final String typeLabel,
      required final String unit,
      required final String barcode,
      @JsonKey(name: 'prescription_required')
      required final bool prescriptionRequired,
      @JsonKey(name: 'insurance_eligible')
      required final bool insuranceEligible,
      @JsonKey(name: 'is_fresh') required final bool isFresh,
      @JsonKey(name: 'has_special_loyalty_points')
      required final bool hasSpecialLoyaltyPoints,
      @JsonKey(name: 'loyalty_points') required final int loyaltyPoints,
      @JsonKey(name: 'thumbnail_img') required final String thumbnailImg,
      @JsonKey(name: 'is_multiple') required final bool isMultiple,
      @JsonKey(name: 'price_high_low_discount')
      required final String priceHighLowDiscount,
      @JsonKey(name: 'price_high_low') required final String priceHighLow,
      @JsonKey(name: 'has_vip_offer') required final bool hasVipOffer,
      @JsonKey(name: 'has_shareholder_discount')
      required final bool hasShareholderDiscount,
      @JsonKey(name: 'has_discount') required final bool hasDiscount,
      required final String discount,
      @JsonKey(name: 'product_options')
      final List<ProductOption>? productOptions,
      @JsonKey(name: 'min_qty') required final int minQty,
      @JsonKey(name: 'max_qty') final int? maxQty,
      @JsonKey(name: 'currency_symbol') required final String currencySymbol,
      final VariantModel? variant,
      required final double rating,
      @JsonKey(name: 'is_digital') required final bool isDigital,
      @JsonKey(name: 'is_wishlist') required final bool isWishlist,
      @JsonKey(name: 'seller_id') required final int sellerId,
      @JsonKey(name: 'shop_id') required final int shopId,
      @JsonKey(name: 'sold_by_type') required final String soldByType,
      @JsonKey(name: 'sold_by_name') required final String soldByName,
      @JsonKey(name: 'category_name') required final String categoryName,
      @JsonKey(name: 'brand_name') required final String brandName,
      final PharmacyBranchModel? branch}) = _$_ProductCardModel;
  const _ProductCardModel._() : super._();

  factory _ProductCardModel.fromJson(Map<String, dynamic> json) =
      _$_ProductCardModel.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get type;
  @override
  @JsonKey(name: 'type_label')
  String get typeLabel;
  @override
  String get unit;
  @override
  String get barcode;
  @override
  @JsonKey(name: 'prescription_required')
  bool get prescriptionRequired;
  @override
  @JsonKey(name: 'insurance_eligible')
  bool get insuranceEligible;
  @override
  @JsonKey(name: 'is_fresh')
  bool get isFresh;
  @override
  @JsonKey(name: 'has_special_loyalty_points')
  bool get hasSpecialLoyaltyPoints;
  @override
  @JsonKey(name: 'loyalty_points')
  int get loyaltyPoints;
  @override
  @JsonKey(name: 'thumbnail_img')
  String get thumbnailImg;
  @override
  @JsonKey(name: 'is_multiple')
  bool get isMultiple;
  @override
  @JsonKey(name: 'price_high_low_discount')
  String get priceHighLowDiscount;
  @override
  @JsonKey(name: 'price_high_low')
  String get priceHighLow;
  @override
  @JsonKey(name: 'has_vip_offer')
  bool get hasVipOffer;
  @override
  @JsonKey(name: 'has_shareholder_discount')
  bool get hasShareholderDiscount;
  @override
  @JsonKey(name: 'has_discount')
  bool get hasDiscount;
  @override
  String get discount;
  @override
  @JsonKey(name: 'product_options')
  List<ProductOption>? get productOptions;
  @override
  @JsonKey(name: 'min_qty')
  int get minQty;
  @override
  @JsonKey(name: 'max_qty')
  int? get maxQty;
  @override
  @JsonKey(name: 'currency_symbol')
  String get currencySymbol;
  @override
  VariantModel? get variant;
  @override
  double get rating;
  @override
  @JsonKey(name: 'is_digital')
  bool get isDigital;
  @override
  @JsonKey(name: 'is_wishlist')
  bool get isWishlist;
  @override
  @JsonKey(name: 'seller_id')
  int get sellerId;
  @override
  @JsonKey(name: 'shop_id')
  int get shopId;
  @override
  @JsonKey(name: 'sold_by_type')
  String get soldByType;
  @override
  @JsonKey(name: 'sold_by_name')
  String get soldByName;
  @override
  @JsonKey(name: 'category_name')
  String get categoryName;
  @override
  @JsonKey(name: 'brand_name')
  String get brandName;
  @override
  PharmacyBranchModel? get branch;
  @override
  @JsonKey(ignore: true)
  _$$_ProductCardModelCopyWith<_$_ProductCardModel> get copyWith =>
      throw _privateConstructorUsedError;
}
