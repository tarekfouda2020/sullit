// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) {
  return _ProductModel.fromJson(json);
}

/// @nodoc
mixin _$ProductModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumbnail_image')
  String get thumbnailImage => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_multiple')
  bool get isMultiple => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_high_low_discount')
  String get priceHighLowDiscount => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_high_low')
  String get priceHighLow => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_discount')
  bool get hasDiscount => throw _privateConstructorUsedError;
  String get discount => throw _privateConstructorUsedError;
  @JsonKey(name: 'choice_options')
  List<ProductOptionsModel> get choiceOptions =>
      throw _privateConstructorUsedError;
  List<ColorModel>? get colors => throw _privateConstructorUsedError;
  @JsonKey(name: "min_qty")
  int get minQty => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_symbol")
  String get currencySymbol => throw _privateConstructorUsedError;
  VariantModel? get variant => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  @JsonKey(name: 'count_reviews')
  int get countReviews => throw _privateConstructorUsedError;
  @JsonKey(name: 'sold_by_type')
  String get soldByType => throw _privateConstructorUsedError;
  @JsonKey(name: 'sold_by_name')
  String get soldByName => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_vip_offer')
  bool get hasVipOffer => throw _privateConstructorUsedError;
  ShopModel? get shop => throw _privateConstructorUsedError;
  List<ReviewsModel>? get reviews => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_resale')
  bool get isResale => throw _privateConstructorUsedError;
  @JsonKey(name: 'reseller_id')
  int get resellerId => throw _privateConstructorUsedError;
  CategoryModel? get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'stroked_price')
  String? get strokedPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_digital')
  bool get isDigital => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_wishlist')
  bool get isWishlist => throw _privateConstructorUsedError;
  @JsonKey(name: 'main_price')
  String? get mainPrice => throw _privateConstructorUsedError;
  num get rating => throw _privateConstructorUsedError;
  int get sales => throw _privateConstructorUsedError;
  @JsonKey(name: 'seller_id')
  int get sellerId => throw _privateConstructorUsedError;
  BrandModel? get brand => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'video_provider')
  String? get videoProvider => throw _privateConstructorUsedError;
  @JsonKey(name: 'video_link')
  String? get videoLink => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_name')
  String get categoryName => throw _privateConstructorUsedError;
  @JsonKey(name: 'brand_name')
  String get brandName => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_fresh')
  bool get isFresh => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_special_loyalty_points')
  bool get hasSpecialLoyaltyPoints => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_shareholder_discount')
  bool get hasShareholderDiscount => throw _privateConstructorUsedError;
  @JsonKey(name: 'loyalty_points')
  int get loyaltyPoints => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductModelCopyWith<ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductModelCopyWith<$Res> {
  factory $ProductModelCopyWith(
          ProductModel value, $Res Function(ProductModel) then) =
      _$ProductModelCopyWithImpl<$Res, ProductModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      String unit,
      @JsonKey(name: 'thumbnail_image') String thumbnailImage,
      List<String> images,
      @JsonKey(name: 'is_multiple') bool isMultiple,
      @JsonKey(name: 'price_high_low_discount') String priceHighLowDiscount,
      @JsonKey(name: 'price_high_low') String priceHighLow,
      @JsonKey(name: 'has_discount') bool hasDiscount,
      String discount,
      @JsonKey(name: 'choice_options') List<ProductOptionsModel> choiceOptions,
      List<ColorModel>? colors,
      @JsonKey(name: "min_qty") int minQty,
      @JsonKey(name: "currency_symbol") String currencySymbol,
      VariantModel? variant,
      List<String> tags,
      @JsonKey(name: 'count_reviews') int countReviews,
      @JsonKey(name: 'sold_by_type') String soldByType,
      @JsonKey(name: 'sold_by_name') String soldByName,
      @JsonKey(name: 'has_vip_offer') bool hasVipOffer,
      ShopModel? shop,
      List<ReviewsModel>? reviews,
      @JsonKey(name: 'is_resale') bool isResale,
      @JsonKey(name: 'reseller_id') int resellerId,
      CategoryModel? category,
      @JsonKey(name: 'stroked_price') String? strokedPrice,
      @JsonKey(name: 'is_digital') bool isDigital,
      @JsonKey(name: 'is_wishlist') bool isWishlist,
      @JsonKey(name: 'main_price') String? mainPrice,
      num rating,
      int sales,
      @JsonKey(name: 'seller_id') int sellerId,
      BrandModel? brand,
      String? description,
      @JsonKey(name: 'video_provider') String? videoProvider,
      @JsonKey(name: 'video_link') String? videoLink,
      @JsonKey(name: 'category_name') String categoryName,
      @JsonKey(name: 'brand_name') String brandName,
      @JsonKey(name: 'is_fresh') bool isFresh,
      @JsonKey(name: 'has_special_loyalty_points') bool hasSpecialLoyaltyPoints,
      @JsonKey(name: 'has_shareholder_discount') bool hasShareholderDiscount,
      @JsonKey(name: 'loyalty_points') int loyaltyPoints});

  $VariantModelCopyWith<$Res>? get variant;
  $ShopModelCopyWith<$Res>? get shop;
  $CategoryModelCopyWith<$Res>? get category;
  $BrandModelCopyWith<$Res>? get brand;
}

/// @nodoc
class _$ProductModelCopyWithImpl<$Res, $Val extends ProductModel>
    implements $ProductModelCopyWith<$Res> {
  _$ProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? unit = null,
    Object? thumbnailImage = null,
    Object? images = null,
    Object? isMultiple = null,
    Object? priceHighLowDiscount = null,
    Object? priceHighLow = null,
    Object? hasDiscount = null,
    Object? discount = null,
    Object? choiceOptions = null,
    Object? colors = freezed,
    Object? minQty = null,
    Object? currencySymbol = null,
    Object? variant = freezed,
    Object? tags = null,
    Object? countReviews = null,
    Object? soldByType = null,
    Object? soldByName = null,
    Object? hasVipOffer = null,
    Object? shop = freezed,
    Object? reviews = freezed,
    Object? isResale = null,
    Object? resellerId = null,
    Object? category = freezed,
    Object? strokedPrice = freezed,
    Object? isDigital = null,
    Object? isWishlist = null,
    Object? mainPrice = freezed,
    Object? rating = null,
    Object? sales = null,
    Object? sellerId = null,
    Object? brand = freezed,
    Object? description = freezed,
    Object? videoProvider = freezed,
    Object? videoLink = freezed,
    Object? categoryName = null,
    Object? brandName = null,
    Object? isFresh = null,
    Object? hasSpecialLoyaltyPoints = null,
    Object? hasShareholderDiscount = null,
    Object? loyaltyPoints = null,
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
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailImage: null == thumbnailImage
          ? _value.thumbnailImage
          : thumbnailImage // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
      hasDiscount: null == hasDiscount
          ? _value.hasDiscount
          : hasDiscount // ignore: cast_nullable_to_non_nullable
              as bool,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String,
      choiceOptions: null == choiceOptions
          ? _value.choiceOptions
          : choiceOptions // ignore: cast_nullable_to_non_nullable
              as List<ProductOptionsModel>,
      colors: freezed == colors
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<ColorModel>?,
      minQty: null == minQty
          ? _value.minQty
          : minQty // ignore: cast_nullable_to_non_nullable
              as int,
      currencySymbol: null == currencySymbol
          ? _value.currencySymbol
          : currencySymbol // ignore: cast_nullable_to_non_nullable
              as String,
      variant: freezed == variant
          ? _value.variant
          : variant // ignore: cast_nullable_to_non_nullable
              as VariantModel?,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      countReviews: null == countReviews
          ? _value.countReviews
          : countReviews // ignore: cast_nullable_to_non_nullable
              as int,
      soldByType: null == soldByType
          ? _value.soldByType
          : soldByType // ignore: cast_nullable_to_non_nullable
              as String,
      soldByName: null == soldByName
          ? _value.soldByName
          : soldByName // ignore: cast_nullable_to_non_nullable
              as String,
      hasVipOffer: null == hasVipOffer
          ? _value.hasVipOffer
          : hasVipOffer // ignore: cast_nullable_to_non_nullable
              as bool,
      shop: freezed == shop
          ? _value.shop
          : shop // ignore: cast_nullable_to_non_nullable
              as ShopModel?,
      reviews: freezed == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<ReviewsModel>?,
      isResale: null == isResale
          ? _value.isResale
          : isResale // ignore: cast_nullable_to_non_nullable
              as bool,
      resellerId: null == resellerId
          ? _value.resellerId
          : resellerId // ignore: cast_nullable_to_non_nullable
              as int,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      strokedPrice: freezed == strokedPrice
          ? _value.strokedPrice
          : strokedPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      isDigital: null == isDigital
          ? _value.isDigital
          : isDigital // ignore: cast_nullable_to_non_nullable
              as bool,
      isWishlist: null == isWishlist
          ? _value.isWishlist
          : isWishlist // ignore: cast_nullable_to_non_nullable
              as bool,
      mainPrice: freezed == mainPrice
          ? _value.mainPrice
          : mainPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as num,
      sales: null == sales
          ? _value.sales
          : sales // ignore: cast_nullable_to_non_nullable
              as int,
      sellerId: null == sellerId
          ? _value.sellerId
          : sellerId // ignore: cast_nullable_to_non_nullable
              as int,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as BrandModel?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      videoProvider: freezed == videoProvider
          ? _value.videoProvider
          : videoProvider // ignore: cast_nullable_to_non_nullable
              as String?,
      videoLink: freezed == videoLink
          ? _value.videoLink
          : videoLink // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      brandName: null == brandName
          ? _value.brandName
          : brandName // ignore: cast_nullable_to_non_nullable
              as String,
      isFresh: null == isFresh
          ? _value.isFresh
          : isFresh // ignore: cast_nullable_to_non_nullable
              as bool,
      hasSpecialLoyaltyPoints: null == hasSpecialLoyaltyPoints
          ? _value.hasSpecialLoyaltyPoints
          : hasSpecialLoyaltyPoints // ignore: cast_nullable_to_non_nullable
              as bool,
      hasShareholderDiscount: null == hasShareholderDiscount
          ? _value.hasShareholderDiscount
          : hasShareholderDiscount // ignore: cast_nullable_to_non_nullable
              as bool,
      loyaltyPoints: null == loyaltyPoints
          ? _value.loyaltyPoints
          : loyaltyPoints // ignore: cast_nullable_to_non_nullable
              as int,
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
  $ShopModelCopyWith<$Res>? get shop {
    if (_value.shop == null) {
      return null;
    }

    return $ShopModelCopyWith<$Res>(_value.shop!, (value) {
      return _then(_value.copyWith(shop: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryModelCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $CategoryModelCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BrandModelCopyWith<$Res>? get brand {
    if (_value.brand == null) {
      return null;
    }

    return $BrandModelCopyWith<$Res>(_value.brand!, (value) {
      return _then(_value.copyWith(brand: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProductModelCopyWith<$Res>
    implements $ProductModelCopyWith<$Res> {
  factory _$$_ProductModelCopyWith(
          _$_ProductModel value, $Res Function(_$_ProductModel) then) =
      __$$_ProductModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String unit,
      @JsonKey(name: 'thumbnail_image') String thumbnailImage,
      List<String> images,
      @JsonKey(name: 'is_multiple') bool isMultiple,
      @JsonKey(name: 'price_high_low_discount') String priceHighLowDiscount,
      @JsonKey(name: 'price_high_low') String priceHighLow,
      @JsonKey(name: 'has_discount') bool hasDiscount,
      String discount,
      @JsonKey(name: 'choice_options') List<ProductOptionsModel> choiceOptions,
      List<ColorModel>? colors,
      @JsonKey(name: "min_qty") int minQty,
      @JsonKey(name: "currency_symbol") String currencySymbol,
      VariantModel? variant,
      List<String> tags,
      @JsonKey(name: 'count_reviews') int countReviews,
      @JsonKey(name: 'sold_by_type') String soldByType,
      @JsonKey(name: 'sold_by_name') String soldByName,
      @JsonKey(name: 'has_vip_offer') bool hasVipOffer,
      ShopModel? shop,
      List<ReviewsModel>? reviews,
      @JsonKey(name: 'is_resale') bool isResale,
      @JsonKey(name: 'reseller_id') int resellerId,
      CategoryModel? category,
      @JsonKey(name: 'stroked_price') String? strokedPrice,
      @JsonKey(name: 'is_digital') bool isDigital,
      @JsonKey(name: 'is_wishlist') bool isWishlist,
      @JsonKey(name: 'main_price') String? mainPrice,
      num rating,
      int sales,
      @JsonKey(name: 'seller_id') int sellerId,
      BrandModel? brand,
      String? description,
      @JsonKey(name: 'video_provider') String? videoProvider,
      @JsonKey(name: 'video_link') String? videoLink,
      @JsonKey(name: 'category_name') String categoryName,
      @JsonKey(name: 'brand_name') String brandName,
      @JsonKey(name: 'is_fresh') bool isFresh,
      @JsonKey(name: 'has_special_loyalty_points') bool hasSpecialLoyaltyPoints,
      @JsonKey(name: 'has_shareholder_discount') bool hasShareholderDiscount,
      @JsonKey(name: 'loyalty_points') int loyaltyPoints});

  @override
  $VariantModelCopyWith<$Res>? get variant;
  @override
  $ShopModelCopyWith<$Res>? get shop;
  @override
  $CategoryModelCopyWith<$Res>? get category;
  @override
  $BrandModelCopyWith<$Res>? get brand;
}

/// @nodoc
class __$$_ProductModelCopyWithImpl<$Res>
    extends _$ProductModelCopyWithImpl<$Res, _$_ProductModel>
    implements _$$_ProductModelCopyWith<$Res> {
  __$$_ProductModelCopyWithImpl(
      _$_ProductModel _value, $Res Function(_$_ProductModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? unit = null,
    Object? thumbnailImage = null,
    Object? images = null,
    Object? isMultiple = null,
    Object? priceHighLowDiscount = null,
    Object? priceHighLow = null,
    Object? hasDiscount = null,
    Object? discount = null,
    Object? choiceOptions = null,
    Object? colors = freezed,
    Object? minQty = null,
    Object? currencySymbol = null,
    Object? variant = freezed,
    Object? tags = null,
    Object? countReviews = null,
    Object? soldByType = null,
    Object? soldByName = null,
    Object? hasVipOffer = null,
    Object? shop = freezed,
    Object? reviews = freezed,
    Object? isResale = null,
    Object? resellerId = null,
    Object? category = freezed,
    Object? strokedPrice = freezed,
    Object? isDigital = null,
    Object? isWishlist = null,
    Object? mainPrice = freezed,
    Object? rating = null,
    Object? sales = null,
    Object? sellerId = null,
    Object? brand = freezed,
    Object? description = freezed,
    Object? videoProvider = freezed,
    Object? videoLink = freezed,
    Object? categoryName = null,
    Object? brandName = null,
    Object? isFresh = null,
    Object? hasSpecialLoyaltyPoints = null,
    Object? hasShareholderDiscount = null,
    Object? loyaltyPoints = null,
  }) {
    return _then(_$_ProductModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailImage: null == thumbnailImage
          ? _value.thumbnailImage
          : thumbnailImage // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
      hasDiscount: null == hasDiscount
          ? _value.hasDiscount
          : hasDiscount // ignore: cast_nullable_to_non_nullable
              as bool,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String,
      choiceOptions: null == choiceOptions
          ? _value._choiceOptions
          : choiceOptions // ignore: cast_nullable_to_non_nullable
              as List<ProductOptionsModel>,
      colors: freezed == colors
          ? _value._colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<ColorModel>?,
      minQty: null == minQty
          ? _value.minQty
          : minQty // ignore: cast_nullable_to_non_nullable
              as int,
      currencySymbol: null == currencySymbol
          ? _value.currencySymbol
          : currencySymbol // ignore: cast_nullable_to_non_nullable
              as String,
      variant: freezed == variant
          ? _value.variant
          : variant // ignore: cast_nullable_to_non_nullable
              as VariantModel?,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      countReviews: null == countReviews
          ? _value.countReviews
          : countReviews // ignore: cast_nullable_to_non_nullable
              as int,
      soldByType: null == soldByType
          ? _value.soldByType
          : soldByType // ignore: cast_nullable_to_non_nullable
              as String,
      soldByName: null == soldByName
          ? _value.soldByName
          : soldByName // ignore: cast_nullable_to_non_nullable
              as String,
      hasVipOffer: null == hasVipOffer
          ? _value.hasVipOffer
          : hasVipOffer // ignore: cast_nullable_to_non_nullable
              as bool,
      shop: freezed == shop
          ? _value.shop
          : shop // ignore: cast_nullable_to_non_nullable
              as ShopModel?,
      reviews: freezed == reviews
          ? _value._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<ReviewsModel>?,
      isResale: null == isResale
          ? _value.isResale
          : isResale // ignore: cast_nullable_to_non_nullable
              as bool,
      resellerId: null == resellerId
          ? _value.resellerId
          : resellerId // ignore: cast_nullable_to_non_nullable
              as int,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      strokedPrice: freezed == strokedPrice
          ? _value.strokedPrice
          : strokedPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      isDigital: null == isDigital
          ? _value.isDigital
          : isDigital // ignore: cast_nullable_to_non_nullable
              as bool,
      isWishlist: null == isWishlist
          ? _value.isWishlist
          : isWishlist // ignore: cast_nullable_to_non_nullable
              as bool,
      mainPrice: freezed == mainPrice
          ? _value.mainPrice
          : mainPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as num,
      sales: null == sales
          ? _value.sales
          : sales // ignore: cast_nullable_to_non_nullable
              as int,
      sellerId: null == sellerId
          ? _value.sellerId
          : sellerId // ignore: cast_nullable_to_non_nullable
              as int,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as BrandModel?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      videoProvider: freezed == videoProvider
          ? _value.videoProvider
          : videoProvider // ignore: cast_nullable_to_non_nullable
              as String?,
      videoLink: freezed == videoLink
          ? _value.videoLink
          : videoLink // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      brandName: null == brandName
          ? _value.brandName
          : brandName // ignore: cast_nullable_to_non_nullable
              as String,
      isFresh: null == isFresh
          ? _value.isFresh
          : isFresh // ignore: cast_nullable_to_non_nullable
              as bool,
      hasSpecialLoyaltyPoints: null == hasSpecialLoyaltyPoints
          ? _value.hasSpecialLoyaltyPoints
          : hasSpecialLoyaltyPoints // ignore: cast_nullable_to_non_nullable
              as bool,
      hasShareholderDiscount: null == hasShareholderDiscount
          ? _value.hasShareholderDiscount
          : hasShareholderDiscount // ignore: cast_nullable_to_non_nullable
              as bool,
      loyaltyPoints: null == loyaltyPoints
          ? _value.loyaltyPoints
          : loyaltyPoints // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ProductModel extends _ProductModel {
  const _$_ProductModel(
      {required this.id,
      required this.name,
      required this.unit,
      @JsonKey(name: 'thumbnail_image') required this.thumbnailImage,
      required final List<String> images,
      @JsonKey(name: 'is_multiple') required this.isMultiple,
      @JsonKey(name: 'price_high_low_discount')
      required this.priceHighLowDiscount,
      @JsonKey(name: 'price_high_low') required this.priceHighLow,
      @JsonKey(name: 'has_discount') required this.hasDiscount,
      required this.discount,
      @JsonKey(name: 'choice_options')
      required final List<ProductOptionsModel> choiceOptions,
      final List<ColorModel>? colors,
      @JsonKey(name: "min_qty") required this.minQty,
      @JsonKey(name: "currency_symbol") required this.currencySymbol,
      this.variant,
      required final List<String> tags,
      @JsonKey(name: 'count_reviews') required this.countReviews,
      @JsonKey(name: 'sold_by_type') required this.soldByType,
      @JsonKey(name: 'sold_by_name') required this.soldByName,
      @JsonKey(name: 'has_vip_offer') required this.hasVipOffer,
      this.shop,
      final List<ReviewsModel>? reviews,
      @JsonKey(name: 'is_resale') required this.isResale,
      @JsonKey(name: 'reseller_id') required this.resellerId,
      required this.category,
      @JsonKey(name: 'stroked_price') this.strokedPrice,
      @JsonKey(name: 'is_digital') required this.isDigital,
      @JsonKey(name: 'is_wishlist') required this.isWishlist,
      @JsonKey(name: 'main_price') this.mainPrice,
      required this.rating,
      required this.sales,
      @JsonKey(name: 'seller_id') required this.sellerId,
      this.brand,
      this.description,
      @JsonKey(name: 'video_provider') this.videoProvider,
      @JsonKey(name: 'video_link') this.videoLink,
      @JsonKey(name: 'category_name') required this.categoryName,
      @JsonKey(name: 'brand_name') required this.brandName,
      @JsonKey(name: 'is_fresh') required this.isFresh,
      @JsonKey(name: 'has_special_loyalty_points')
      required this.hasSpecialLoyaltyPoints,
      @JsonKey(name: 'has_shareholder_discount')
      required this.hasShareholderDiscount,
      @JsonKey(name: 'loyalty_points') required this.loyaltyPoints})
      : _images = images,
        _choiceOptions = choiceOptions,
        _colors = colors,
        _tags = tags,
        _reviews = reviews,
        super._();

  factory _$_ProductModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProductModelFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String unit;
  @override
  @JsonKey(name: 'thumbnail_image')
  final String thumbnailImage;
  final List<String> _images;
  @override
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

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
  @JsonKey(name: 'has_discount')
  final bool hasDiscount;
  @override
  final String discount;
  final List<ProductOptionsModel> _choiceOptions;
  @override
  @JsonKey(name: 'choice_options')
  List<ProductOptionsModel> get choiceOptions {
    if (_choiceOptions is EqualUnmodifiableListView) return _choiceOptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_choiceOptions);
  }

  final List<ColorModel>? _colors;
  @override
  List<ColorModel>? get colors {
    final value = _colors;
    if (value == null) return null;
    if (_colors is EqualUnmodifiableListView) return _colors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "min_qty")
  final int minQty;
  @override
  @JsonKey(name: "currency_symbol")
  final String currencySymbol;
  @override
  final VariantModel? variant;
  final List<String> _tags;
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  @JsonKey(name: 'count_reviews')
  final int countReviews;
  @override
  @JsonKey(name: 'sold_by_type')
  final String soldByType;
  @override
  @JsonKey(name: 'sold_by_name')
  final String soldByName;
  @override
  @JsonKey(name: 'has_vip_offer')
  final bool hasVipOffer;
  @override
  final ShopModel? shop;
  final List<ReviewsModel>? _reviews;
  @override
  List<ReviewsModel>? get reviews {
    final value = _reviews;
    if (value == null) return null;
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'is_resale')
  final bool isResale;
  @override
  @JsonKey(name: 'reseller_id')
  final int resellerId;
  @override
  final CategoryModel? category;
  @override
  @JsonKey(name: 'stroked_price')
  final String? strokedPrice;
  @override
  @JsonKey(name: 'is_digital')
  final bool isDigital;
  @override
  @JsonKey(name: 'is_wishlist')
  final bool isWishlist;
  @override
  @JsonKey(name: 'main_price')
  final String? mainPrice;
  @override
  final num rating;
  @override
  final int sales;
  @override
  @JsonKey(name: 'seller_id')
  final int sellerId;
  @override
  final BrandModel? brand;
  @override
  final String? description;
  @override
  @JsonKey(name: 'video_provider')
  final String? videoProvider;
  @override
  @JsonKey(name: 'video_link')
  final String? videoLink;
  @override
  @JsonKey(name: 'category_name')
  final String categoryName;
  @override
  @JsonKey(name: 'brand_name')
  final String brandName;
  @override
  @JsonKey(name: 'is_fresh')
  final bool isFresh;
  @override
  @JsonKey(name: 'has_special_loyalty_points')
  final bool hasSpecialLoyaltyPoints;
  @override
  @JsonKey(name: 'has_shareholder_discount')
  final bool hasShareholderDiscount;
  @override
  @JsonKey(name: 'loyalty_points')
  final int loyaltyPoints;

  @override
  String toString() {
    return 'ProductModel(id: $id, name: $name, unit: $unit, thumbnailImage: $thumbnailImage, images: $images, isMultiple: $isMultiple, priceHighLowDiscount: $priceHighLowDiscount, priceHighLow: $priceHighLow, hasDiscount: $hasDiscount, discount: $discount, choiceOptions: $choiceOptions, colors: $colors, minQty: $minQty, currencySymbol: $currencySymbol, variant: $variant, tags: $tags, countReviews: $countReviews, soldByType: $soldByType, soldByName: $soldByName, hasVipOffer: $hasVipOffer, shop: $shop, reviews: $reviews, isResale: $isResale, resellerId: $resellerId, category: $category, strokedPrice: $strokedPrice, isDigital: $isDigital, isWishlist: $isWishlist, mainPrice: $mainPrice, rating: $rating, sales: $sales, sellerId: $sellerId, brand: $brand, description: $description, videoProvider: $videoProvider, videoLink: $videoLink, categoryName: $categoryName, brandName: $brandName, isFresh: $isFresh, hasSpecialLoyaltyPoints: $hasSpecialLoyaltyPoints, hasShareholderDiscount: $hasShareholderDiscount, loyaltyPoints: $loyaltyPoints)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.thumbnailImage, thumbnailImage) ||
                other.thumbnailImage == thumbnailImage) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.isMultiple, isMultiple) ||
                other.isMultiple == isMultiple) &&
            (identical(other.priceHighLowDiscount, priceHighLowDiscount) ||
                other.priceHighLowDiscount == priceHighLowDiscount) &&
            (identical(other.priceHighLow, priceHighLow) ||
                other.priceHighLow == priceHighLow) &&
            (identical(other.hasDiscount, hasDiscount) ||
                other.hasDiscount == hasDiscount) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            const DeepCollectionEquality()
                .equals(other._choiceOptions, _choiceOptions) &&
            const DeepCollectionEquality().equals(other._colors, _colors) &&
            (identical(other.minQty, minQty) || other.minQty == minQty) &&
            (identical(other.currencySymbol, currencySymbol) ||
                other.currencySymbol == currencySymbol) &&
            (identical(other.variant, variant) || other.variant == variant) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.countReviews, countReviews) ||
                other.countReviews == countReviews) &&
            (identical(other.soldByType, soldByType) ||
                other.soldByType == soldByType) &&
            (identical(other.soldByName, soldByName) ||
                other.soldByName == soldByName) &&
            (identical(other.hasVipOffer, hasVipOffer) ||
                other.hasVipOffer == hasVipOffer) &&
            (identical(other.shop, shop) || other.shop == shop) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews) &&
            (identical(other.isResale, isResale) ||
                other.isResale == isResale) &&
            (identical(other.resellerId, resellerId) ||
                other.resellerId == resellerId) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.strokedPrice, strokedPrice) ||
                other.strokedPrice == strokedPrice) &&
            (identical(other.isDigital, isDigital) ||
                other.isDigital == isDigital) &&
            (identical(other.isWishlist, isWishlist) ||
                other.isWishlist == isWishlist) &&
            (identical(other.mainPrice, mainPrice) ||
                other.mainPrice == mainPrice) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.sales, sales) || other.sales == sales) &&
            (identical(other.sellerId, sellerId) ||
                other.sellerId == sellerId) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.videoProvider, videoProvider) ||
                other.videoProvider == videoProvider) &&
            (identical(other.videoLink, videoLink) ||
                other.videoLink == videoLink) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.brandName, brandName) ||
                other.brandName == brandName) &&
            (identical(other.isFresh, isFresh) || other.isFresh == isFresh) &&
            (identical(
                    other.hasSpecialLoyaltyPoints, hasSpecialLoyaltyPoints) ||
                other.hasSpecialLoyaltyPoints == hasSpecialLoyaltyPoints) &&
            (identical(other.hasShareholderDiscount, hasShareholderDiscount) ||
                other.hasShareholderDiscount == hasShareholderDiscount) &&
            (identical(other.loyaltyPoints, loyaltyPoints) ||
                other.loyaltyPoints == loyaltyPoints));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        unit,
        thumbnailImage,
        const DeepCollectionEquality().hash(_images),
        isMultiple,
        priceHighLowDiscount,
        priceHighLow,
        hasDiscount,
        discount,
        const DeepCollectionEquality().hash(_choiceOptions),
        const DeepCollectionEquality().hash(_colors),
        minQty,
        currencySymbol,
        variant,
        const DeepCollectionEquality().hash(_tags),
        countReviews,
        soldByType,
        soldByName,
        hasVipOffer,
        shop,
        const DeepCollectionEquality().hash(_reviews),
        isResale,
        resellerId,
        category,
        strokedPrice,
        isDigital,
        isWishlist,
        mainPrice,
        rating,
        sales,
        sellerId,
        brand,
        description,
        videoProvider,
        videoLink,
        categoryName,
        brandName,
        isFresh,
        hasSpecialLoyaltyPoints,
        hasShareholderDiscount,
        loyaltyPoints
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductModelCopyWith<_$_ProductModel> get copyWith =>
      __$$_ProductModelCopyWithImpl<_$_ProductModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductModelToJson(
      this,
    );
  }
}

abstract class _ProductModel extends ProductModel {
  const factory _ProductModel(
      {required final int id,
      required final String name,
      required final String unit,
      @JsonKey(name: 'thumbnail_image') required final String thumbnailImage,
      required final List<String> images,
      @JsonKey(name: 'is_multiple') required final bool isMultiple,
      @JsonKey(name: 'price_high_low_discount')
      required final String priceHighLowDiscount,
      @JsonKey(name: 'price_high_low') required final String priceHighLow,
      @JsonKey(name: 'has_discount') required final bool hasDiscount,
      required final String discount,
      @JsonKey(name: 'choice_options')
      required final List<ProductOptionsModel> choiceOptions,
      final List<ColorModel>? colors,
      @JsonKey(name: "min_qty") required final int minQty,
      @JsonKey(name: "currency_symbol") required final String currencySymbol,
      final VariantModel? variant,
      required final List<String> tags,
      @JsonKey(name: 'count_reviews') required final int countReviews,
      @JsonKey(name: 'sold_by_type') required final String soldByType,
      @JsonKey(name: 'sold_by_name') required final String soldByName,
      @JsonKey(name: 'has_vip_offer') required final bool hasVipOffer,
      final ShopModel? shop,
      final List<ReviewsModel>? reviews,
      @JsonKey(name: 'is_resale') required final bool isResale,
      @JsonKey(name: 'reseller_id') required final int resellerId,
      required final CategoryModel? category,
      @JsonKey(name: 'stroked_price') final String? strokedPrice,
      @JsonKey(name: 'is_digital') required final bool isDigital,
      @JsonKey(name: 'is_wishlist') required final bool isWishlist,
      @JsonKey(name: 'main_price') final String? mainPrice,
      required final num rating,
      required final int sales,
      @JsonKey(name: 'seller_id') required final int sellerId,
      final BrandModel? brand,
      final String? description,
      @JsonKey(name: 'video_provider') final String? videoProvider,
      @JsonKey(name: 'video_link') final String? videoLink,
      @JsonKey(name: 'category_name') required final String categoryName,
      @JsonKey(name: 'brand_name') required final String brandName,
      @JsonKey(name: 'is_fresh') required final bool isFresh,
      @JsonKey(name: 'has_special_loyalty_points')
      required final bool hasSpecialLoyaltyPoints,
      @JsonKey(name: 'has_shareholder_discount')
      required final bool hasShareholderDiscount,
      @JsonKey(name: 'loyalty_points')
      required final int loyaltyPoints}) = _$_ProductModel;
  const _ProductModel._() : super._();

  factory _ProductModel.fromJson(Map<String, dynamic> json) =
      _$_ProductModel.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get unit;
  @override
  @JsonKey(name: 'thumbnail_image')
  String get thumbnailImage;
  @override
  List<String> get images;
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
  @JsonKey(name: 'has_discount')
  bool get hasDiscount;
  @override
  String get discount;
  @override
  @JsonKey(name: 'choice_options')
  List<ProductOptionsModel> get choiceOptions;
  @override
  List<ColorModel>? get colors;
  @override
  @JsonKey(name: "min_qty")
  int get minQty;
  @override
  @JsonKey(name: "currency_symbol")
  String get currencySymbol;
  @override
  VariantModel? get variant;
  @override
  List<String> get tags;
  @override
  @JsonKey(name: 'count_reviews')
  int get countReviews;
  @override
  @JsonKey(name: 'sold_by_type')
  String get soldByType;
  @override
  @JsonKey(name: 'sold_by_name')
  String get soldByName;
  @override
  @JsonKey(name: 'has_vip_offer')
  bool get hasVipOffer;
  @override
  ShopModel? get shop;
  @override
  List<ReviewsModel>? get reviews;
  @override
  @JsonKey(name: 'is_resale')
  bool get isResale;
  @override
  @JsonKey(name: 'reseller_id')
  int get resellerId;
  @override
  CategoryModel? get category;
  @override
  @JsonKey(name: 'stroked_price')
  String? get strokedPrice;
  @override
  @JsonKey(name: 'is_digital')
  bool get isDigital;
  @override
  @JsonKey(name: 'is_wishlist')
  bool get isWishlist;
  @override
  @JsonKey(name: 'main_price')
  String? get mainPrice;
  @override
  num get rating;
  @override
  int get sales;
  @override
  @JsonKey(name: 'seller_id')
  int get sellerId;
  @override
  BrandModel? get brand;
  @override
  String? get description;
  @override
  @JsonKey(name: 'video_provider')
  String? get videoProvider;
  @override
  @JsonKey(name: 'video_link')
  String? get videoLink;
  @override
  @JsonKey(name: 'category_name')
  String get categoryName;
  @override
  @JsonKey(name: 'brand_name')
  String get brandName;
  @override
  @JsonKey(name: 'is_fresh')
  bool get isFresh;
  @override
  @JsonKey(name: 'has_special_loyalty_points')
  bool get hasSpecialLoyaltyPoints;
  @override
  @JsonKey(name: 'has_shareholder_discount')
  bool get hasShareholderDiscount;
  @override
  @JsonKey(name: 'loyalty_points')
  int get loyaltyPoints;
  @override
  @JsonKey(ignore: true)
  _$$_ProductModelCopyWith<_$_ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}
