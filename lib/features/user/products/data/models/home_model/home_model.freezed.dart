// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomeModel _$HomeModelFromJson(Map<String, dynamic> json) {
  return _HomeModel.fromJson(json);
}

/// @nodoc
mixin _$HomeModel {
  @JsonKey(name: 'sliders')
  List<SliderModel> get sliders => throw _privateConstructorUsedError;
  @JsonKey(name: 'banners_one')
  List<BannerModel> get bannersOne => throw _privateConstructorUsedError;
  @JsonKey(name: 'banners_two')
  List<BannerModel> get bannersTwo => throw _privateConstructorUsedError;
  @JsonKey(name: 'categories')
  List<CategoryModel> get categories => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_orders')
  List<OrdersListModel> get currentOrders => throw _privateConstructorUsedError;
  @JsonKey(name: 'flash_deal')
  FlashSaleModel? get flashSales => throw _privateConstructorUsedError;
  @JsonKey(name: 'shops')
  List<ShopCardModel> get shops => throw _privateConstructorUsedError;
  @JsonKey(name: 'top_sellers')
  List<ShopCardModel> get topSellers => throw _privateConstructorUsedError;
  @JsonKey(name: 'pharmacy_shops')
  List<ShopCardModel> get pharmacyShops => throw _privateConstructorUsedError;
  @JsonKey(name: 'restaurant_shops')
  List<ShopCardModel> get restaurantShops => throw _privateConstructorUsedError;
  @JsonKey(name: 'nearby_in_store_shop')
  ShopCardModel? get inStoreShop =>
      throw _privateConstructorUsedError; // @JsonKey(name: 'best_selling_products')
//     required List<ProductModel> bestSellingProducts,
// @JsonKey(name: 'newest_products')
//     required List<ProductModel> newestProducts,
// @JsonKey(name: 'featured_products')
//     required List<ProductModel> featuredProducts,
// @JsonKey(name: 'new_arrivals') required List<ProductModel> newArrivals,
// @JsonKey(name: 'best_rated') required List<ProductModel> bestRated,
  @JsonKey(name: 'cart_count')
  int get cartCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'wishlist_count')
  int get favCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_admin_discount')
  bool get isAdminDiscount => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount_rate')
  int get discountRate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeModelCopyWith<HomeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeModelCopyWith<$Res> {
  factory $HomeModelCopyWith(HomeModel value, $Res Function(HomeModel) then) =
      _$HomeModelCopyWithImpl<$Res, HomeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'sliders') List<SliderModel> sliders,
      @JsonKey(name: 'banners_one') List<BannerModel> bannersOne,
      @JsonKey(name: 'banners_two') List<BannerModel> bannersTwo,
      @JsonKey(name: 'categories') List<CategoryModel> categories,
      @JsonKey(name: 'current_orders') List<OrdersListModel> currentOrders,
      @JsonKey(name: 'flash_deal') FlashSaleModel? flashSales,
      @JsonKey(name: 'shops') List<ShopCardModel> shops,
      @JsonKey(name: 'top_sellers') List<ShopCardModel> topSellers,
      @JsonKey(name: 'pharmacy_shops') List<ShopCardModel> pharmacyShops,
      @JsonKey(name: 'restaurant_shops') List<ShopCardModel> restaurantShops,
      @JsonKey(name: 'nearby_in_store_shop') ShopCardModel? inStoreShop,
      @JsonKey(name: 'cart_count') int cartCount,
      @JsonKey(name: 'wishlist_count') int favCount,
      @JsonKey(name: 'is_admin_discount') bool isAdminDiscount,
      @JsonKey(name: 'discount_rate') int discountRate});

  $FlashSaleModelCopyWith<$Res>? get flashSales;
  $ShopCardModelCopyWith<$Res>? get inStoreShop;
}

/// @nodoc
class _$HomeModelCopyWithImpl<$Res, $Val extends HomeModel>
    implements $HomeModelCopyWith<$Res> {
  _$HomeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sliders = null,
    Object? bannersOne = null,
    Object? bannersTwo = null,
    Object? categories = null,
    Object? currentOrders = null,
    Object? flashSales = freezed,
    Object? shops = null,
    Object? topSellers = null,
    Object? pharmacyShops = null,
    Object? restaurantShops = null,
    Object? inStoreShop = freezed,
    Object? cartCount = null,
    Object? favCount = null,
    Object? isAdminDiscount = null,
    Object? discountRate = null,
  }) {
    return _then(_value.copyWith(
      sliders: null == sliders
          ? _value.sliders
          : sliders // ignore: cast_nullable_to_non_nullable
              as List<SliderModel>,
      bannersOne: null == bannersOne
          ? _value.bannersOne
          : bannersOne // ignore: cast_nullable_to_non_nullable
              as List<BannerModel>,
      bannersTwo: null == bannersTwo
          ? _value.bannersTwo
          : bannersTwo // ignore: cast_nullable_to_non_nullable
              as List<BannerModel>,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      currentOrders: null == currentOrders
          ? _value.currentOrders
          : currentOrders // ignore: cast_nullable_to_non_nullable
              as List<OrdersListModel>,
      flashSales: freezed == flashSales
          ? _value.flashSales
          : flashSales // ignore: cast_nullable_to_non_nullable
              as FlashSaleModel?,
      shops: null == shops
          ? _value.shops
          : shops // ignore: cast_nullable_to_non_nullable
              as List<ShopCardModel>,
      topSellers: null == topSellers
          ? _value.topSellers
          : topSellers // ignore: cast_nullable_to_non_nullable
              as List<ShopCardModel>,
      pharmacyShops: null == pharmacyShops
          ? _value.pharmacyShops
          : pharmacyShops // ignore: cast_nullable_to_non_nullable
              as List<ShopCardModel>,
      restaurantShops: null == restaurantShops
          ? _value.restaurantShops
          : restaurantShops // ignore: cast_nullable_to_non_nullable
              as List<ShopCardModel>,
      inStoreShop: freezed == inStoreShop
          ? _value.inStoreShop
          : inStoreShop // ignore: cast_nullable_to_non_nullable
              as ShopCardModel?,
      cartCount: null == cartCount
          ? _value.cartCount
          : cartCount // ignore: cast_nullable_to_non_nullable
              as int,
      favCount: null == favCount
          ? _value.favCount
          : favCount // ignore: cast_nullable_to_non_nullable
              as int,
      isAdminDiscount: null == isAdminDiscount
          ? _value.isAdminDiscount
          : isAdminDiscount // ignore: cast_nullable_to_non_nullable
              as bool,
      discountRate: null == discountRate
          ? _value.discountRate
          : discountRate // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FlashSaleModelCopyWith<$Res>? get flashSales {
    if (_value.flashSales == null) {
      return null;
    }

    return $FlashSaleModelCopyWith<$Res>(_value.flashSales!, (value) {
      return _then(_value.copyWith(flashSales: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ShopCardModelCopyWith<$Res>? get inStoreShop {
    if (_value.inStoreShop == null) {
      return null;
    }

    return $ShopCardModelCopyWith<$Res>(_value.inStoreShop!, (value) {
      return _then(_value.copyWith(inStoreShop: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_HomeModelCopyWith<$Res> implements $HomeModelCopyWith<$Res> {
  factory _$$_HomeModelCopyWith(
          _$_HomeModel value, $Res Function(_$_HomeModel) then) =
      __$$_HomeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'sliders') List<SliderModel> sliders,
      @JsonKey(name: 'banners_one') List<BannerModel> bannersOne,
      @JsonKey(name: 'banners_two') List<BannerModel> bannersTwo,
      @JsonKey(name: 'categories') List<CategoryModel> categories,
      @JsonKey(name: 'current_orders') List<OrdersListModel> currentOrders,
      @JsonKey(name: 'flash_deal') FlashSaleModel? flashSales,
      @JsonKey(name: 'shops') List<ShopCardModel> shops,
      @JsonKey(name: 'top_sellers') List<ShopCardModel> topSellers,
      @JsonKey(name: 'pharmacy_shops') List<ShopCardModel> pharmacyShops,
      @JsonKey(name: 'restaurant_shops') List<ShopCardModel> restaurantShops,
      @JsonKey(name: 'nearby_in_store_shop') ShopCardModel? inStoreShop,
      @JsonKey(name: 'cart_count') int cartCount,
      @JsonKey(name: 'wishlist_count') int favCount,
      @JsonKey(name: 'is_admin_discount') bool isAdminDiscount,
      @JsonKey(name: 'discount_rate') int discountRate});

  @override
  $FlashSaleModelCopyWith<$Res>? get flashSales;
  @override
  $ShopCardModelCopyWith<$Res>? get inStoreShop;
}

/// @nodoc
class __$$_HomeModelCopyWithImpl<$Res>
    extends _$HomeModelCopyWithImpl<$Res, _$_HomeModel>
    implements _$$_HomeModelCopyWith<$Res> {
  __$$_HomeModelCopyWithImpl(
      _$_HomeModel _value, $Res Function(_$_HomeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sliders = null,
    Object? bannersOne = null,
    Object? bannersTwo = null,
    Object? categories = null,
    Object? currentOrders = null,
    Object? flashSales = freezed,
    Object? shops = null,
    Object? topSellers = null,
    Object? pharmacyShops = null,
    Object? restaurantShops = null,
    Object? inStoreShop = freezed,
    Object? cartCount = null,
    Object? favCount = null,
    Object? isAdminDiscount = null,
    Object? discountRate = null,
  }) {
    return _then(_$_HomeModel(
      sliders: null == sliders
          ? _value._sliders
          : sliders // ignore: cast_nullable_to_non_nullable
              as List<SliderModel>,
      bannersOne: null == bannersOne
          ? _value._bannersOne
          : bannersOne // ignore: cast_nullable_to_non_nullable
              as List<BannerModel>,
      bannersTwo: null == bannersTwo
          ? _value._bannersTwo
          : bannersTwo // ignore: cast_nullable_to_non_nullable
              as List<BannerModel>,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      currentOrders: null == currentOrders
          ? _value._currentOrders
          : currentOrders // ignore: cast_nullable_to_non_nullable
              as List<OrdersListModel>,
      flashSales: freezed == flashSales
          ? _value.flashSales
          : flashSales // ignore: cast_nullable_to_non_nullable
              as FlashSaleModel?,
      shops: null == shops
          ? _value._shops
          : shops // ignore: cast_nullable_to_non_nullable
              as List<ShopCardModel>,
      topSellers: null == topSellers
          ? _value._topSellers
          : topSellers // ignore: cast_nullable_to_non_nullable
              as List<ShopCardModel>,
      pharmacyShops: null == pharmacyShops
          ? _value._pharmacyShops
          : pharmacyShops // ignore: cast_nullable_to_non_nullable
              as List<ShopCardModel>,
      restaurantShops: null == restaurantShops
          ? _value._restaurantShops
          : restaurantShops // ignore: cast_nullable_to_non_nullable
              as List<ShopCardModel>,
      inStoreShop: freezed == inStoreShop
          ? _value.inStoreShop
          : inStoreShop // ignore: cast_nullable_to_non_nullable
              as ShopCardModel?,
      cartCount: null == cartCount
          ? _value.cartCount
          : cartCount // ignore: cast_nullable_to_non_nullable
              as int,
      favCount: null == favCount
          ? _value.favCount
          : favCount // ignore: cast_nullable_to_non_nullable
              as int,
      isAdminDiscount: null == isAdminDiscount
          ? _value.isAdminDiscount
          : isAdminDiscount // ignore: cast_nullable_to_non_nullable
              as bool,
      discountRate: null == discountRate
          ? _value.discountRate
          : discountRate // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_HomeModel extends _HomeModel {
  const _$_HomeModel(
      {@JsonKey(name: 'sliders') required final List<SliderModel> sliders,
      @JsonKey(name: 'banners_one') required final List<BannerModel> bannersOne,
      @JsonKey(name: 'banners_two') required final List<BannerModel> bannersTwo,
      @JsonKey(name: 'categories')
      required final List<CategoryModel> categories,
      @JsonKey(name: 'current_orders')
      required final List<OrdersListModel> currentOrders,
      @JsonKey(name: 'flash_deal') required this.flashSales,
      @JsonKey(name: 'shops') required final List<ShopCardModel> shops,
      @JsonKey(name: 'top_sellers')
      required final List<ShopCardModel> topSellers,
      @JsonKey(name: 'pharmacy_shops')
      required final List<ShopCardModel> pharmacyShops,
      @JsonKey(name: 'restaurant_shops')
      required final List<ShopCardModel> restaurantShops,
      @JsonKey(name: 'nearby_in_store_shop') required this.inStoreShop,
      @JsonKey(name: 'cart_count') required this.cartCount,
      @JsonKey(name: 'wishlist_count') required this.favCount,
      @JsonKey(name: 'is_admin_discount') required this.isAdminDiscount,
      @JsonKey(name: 'discount_rate') required this.discountRate})
      : _sliders = sliders,
        _bannersOne = bannersOne,
        _bannersTwo = bannersTwo,
        _categories = categories,
        _currentOrders = currentOrders,
        _shops = shops,
        _topSellers = topSellers,
        _pharmacyShops = pharmacyShops,
        _restaurantShops = restaurantShops,
        super._();

  factory _$_HomeModel.fromJson(Map<String, dynamic> json) =>
      _$$_HomeModelFromJson(json);

  final List<SliderModel> _sliders;
  @override
  @JsonKey(name: 'sliders')
  List<SliderModel> get sliders {
    if (_sliders is EqualUnmodifiableListView) return _sliders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sliders);
  }

  final List<BannerModel> _bannersOne;
  @override
  @JsonKey(name: 'banners_one')
  List<BannerModel> get bannersOne {
    if (_bannersOne is EqualUnmodifiableListView) return _bannersOne;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bannersOne);
  }

  final List<BannerModel> _bannersTwo;
  @override
  @JsonKey(name: 'banners_two')
  List<BannerModel> get bannersTwo {
    if (_bannersTwo is EqualUnmodifiableListView) return _bannersTwo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bannersTwo);
  }

  final List<CategoryModel> _categories;
  @override
  @JsonKey(name: 'categories')
  List<CategoryModel> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<OrdersListModel> _currentOrders;
  @override
  @JsonKey(name: 'current_orders')
  List<OrdersListModel> get currentOrders {
    if (_currentOrders is EqualUnmodifiableListView) return _currentOrders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_currentOrders);
  }

  @override
  @JsonKey(name: 'flash_deal')
  final FlashSaleModel? flashSales;
  final List<ShopCardModel> _shops;
  @override
  @JsonKey(name: 'shops')
  List<ShopCardModel> get shops {
    if (_shops is EqualUnmodifiableListView) return _shops;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_shops);
  }

  final List<ShopCardModel> _topSellers;
  @override
  @JsonKey(name: 'top_sellers')
  List<ShopCardModel> get topSellers {
    if (_topSellers is EqualUnmodifiableListView) return _topSellers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topSellers);
  }

  final List<ShopCardModel> _pharmacyShops;
  @override
  @JsonKey(name: 'pharmacy_shops')
  List<ShopCardModel> get pharmacyShops {
    if (_pharmacyShops is EqualUnmodifiableListView) return _pharmacyShops;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pharmacyShops);
  }

  final List<ShopCardModel> _restaurantShops;
  @override
  @JsonKey(name: 'restaurant_shops')
  List<ShopCardModel> get restaurantShops {
    if (_restaurantShops is EqualUnmodifiableListView) return _restaurantShops;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_restaurantShops);
  }

  @override
  @JsonKey(name: 'nearby_in_store_shop')
  final ShopCardModel? inStoreShop;
// @JsonKey(name: 'best_selling_products')
//     required List<ProductModel> bestSellingProducts,
// @JsonKey(name: 'newest_products')
//     required List<ProductModel> newestProducts,
// @JsonKey(name: 'featured_products')
//     required List<ProductModel> featuredProducts,
// @JsonKey(name: 'new_arrivals') required List<ProductModel> newArrivals,
// @JsonKey(name: 'best_rated') required List<ProductModel> bestRated,
  @override
  @JsonKey(name: 'cart_count')
  final int cartCount;
  @override
  @JsonKey(name: 'wishlist_count')
  final int favCount;
  @override
  @JsonKey(name: 'is_admin_discount')
  final bool isAdminDiscount;
  @override
  @JsonKey(name: 'discount_rate')
  final int discountRate;

  @override
  String toString() {
    return 'HomeModel(sliders: $sliders, bannersOne: $bannersOne, bannersTwo: $bannersTwo, categories: $categories, currentOrders: $currentOrders, flashSales: $flashSales, shops: $shops, topSellers: $topSellers, pharmacyShops: $pharmacyShops, restaurantShops: $restaurantShops, inStoreShop: $inStoreShop, cartCount: $cartCount, favCount: $favCount, isAdminDiscount: $isAdminDiscount, discountRate: $discountRate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeModel &&
            const DeepCollectionEquality().equals(other._sliders, _sliders) &&
            const DeepCollectionEquality()
                .equals(other._bannersOne, _bannersOne) &&
            const DeepCollectionEquality()
                .equals(other._bannersTwo, _bannersTwo) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality()
                .equals(other._currentOrders, _currentOrders) &&
            (identical(other.flashSales, flashSales) ||
                other.flashSales == flashSales) &&
            const DeepCollectionEquality().equals(other._shops, _shops) &&
            const DeepCollectionEquality()
                .equals(other._topSellers, _topSellers) &&
            const DeepCollectionEquality()
                .equals(other._pharmacyShops, _pharmacyShops) &&
            const DeepCollectionEquality()
                .equals(other._restaurantShops, _restaurantShops) &&
            (identical(other.inStoreShop, inStoreShop) ||
                other.inStoreShop == inStoreShop) &&
            (identical(other.cartCount, cartCount) ||
                other.cartCount == cartCount) &&
            (identical(other.favCount, favCount) ||
                other.favCount == favCount) &&
            (identical(other.isAdminDiscount, isAdminDiscount) ||
                other.isAdminDiscount == isAdminDiscount) &&
            (identical(other.discountRate, discountRate) ||
                other.discountRate == discountRate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_sliders),
      const DeepCollectionEquality().hash(_bannersOne),
      const DeepCollectionEquality().hash(_bannersTwo),
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_currentOrders),
      flashSales,
      const DeepCollectionEquality().hash(_shops),
      const DeepCollectionEquality().hash(_topSellers),
      const DeepCollectionEquality().hash(_pharmacyShops),
      const DeepCollectionEquality().hash(_restaurantShops),
      inStoreShop,
      cartCount,
      favCount,
      isAdminDiscount,
      discountRate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeModelCopyWith<_$_HomeModel> get copyWith =>
      __$$_HomeModelCopyWithImpl<_$_HomeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HomeModelToJson(
      this,
    );
  }
}

abstract class _HomeModel extends HomeModel {
  const factory _HomeModel(
      {@JsonKey(name: 'sliders') required final List<SliderModel> sliders,
      @JsonKey(name: 'banners_one') required final List<BannerModel> bannersOne,
      @JsonKey(name: 'banners_two') required final List<BannerModel> bannersTwo,
      @JsonKey(name: 'categories')
      required final List<CategoryModel> categories,
      @JsonKey(name: 'current_orders')
      required final List<OrdersListModel> currentOrders,
      @JsonKey(name: 'flash_deal') required final FlashSaleModel? flashSales,
      @JsonKey(name: 'shops') required final List<ShopCardModel> shops,
      @JsonKey(name: 'top_sellers')
      required final List<ShopCardModel> topSellers,
      @JsonKey(name: 'pharmacy_shops')
      required final List<ShopCardModel> pharmacyShops,
      @JsonKey(name: 'restaurant_shops')
      required final List<ShopCardModel> restaurantShops,
      @JsonKey(name: 'nearby_in_store_shop')
      required final ShopCardModel? inStoreShop,
      @JsonKey(name: 'cart_count') required final int cartCount,
      @JsonKey(name: 'wishlist_count') required final int favCount,
      @JsonKey(name: 'is_admin_discount') required final bool isAdminDiscount,
      @JsonKey(name: 'discount_rate')
      required final int discountRate}) = _$_HomeModel;
  const _HomeModel._() : super._();

  factory _HomeModel.fromJson(Map<String, dynamic> json) =
      _$_HomeModel.fromJson;

  @override
  @JsonKey(name: 'sliders')
  List<SliderModel> get sliders;
  @override
  @JsonKey(name: 'banners_one')
  List<BannerModel> get bannersOne;
  @override
  @JsonKey(name: 'banners_two')
  List<BannerModel> get bannersTwo;
  @override
  @JsonKey(name: 'categories')
  List<CategoryModel> get categories;
  @override
  @JsonKey(name: 'current_orders')
  List<OrdersListModel> get currentOrders;
  @override
  @JsonKey(name: 'flash_deal')
  FlashSaleModel? get flashSales;
  @override
  @JsonKey(name: 'shops')
  List<ShopCardModel> get shops;
  @override
  @JsonKey(name: 'top_sellers')
  List<ShopCardModel> get topSellers;
  @override
  @JsonKey(name: 'pharmacy_shops')
  List<ShopCardModel> get pharmacyShops;
  @override
  @JsonKey(name: 'restaurant_shops')
  List<ShopCardModel> get restaurantShops;
  @override
  @JsonKey(name: 'nearby_in_store_shop')
  ShopCardModel? get inStoreShop;
  @override // @JsonKey(name: 'best_selling_products')
//     required List<ProductModel> bestSellingProducts,
// @JsonKey(name: 'newest_products')
//     required List<ProductModel> newestProducts,
// @JsonKey(name: 'featured_products')
//     required List<ProductModel> featuredProducts,
// @JsonKey(name: 'new_arrivals') required List<ProductModel> newArrivals,
// @JsonKey(name: 'best_rated') required List<ProductModel> bestRated,
  @JsonKey(name: 'cart_count')
  int get cartCount;
  @override
  @JsonKey(name: 'wishlist_count')
  int get favCount;
  @override
  @JsonKey(name: 'is_admin_discount')
  bool get isAdminDiscount;
  @override
  @JsonKey(name: 'discount_rate')
  int get discountRate;
  @override
  @JsonKey(ignore: true)
  _$$_HomeModelCopyWith<_$_HomeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
