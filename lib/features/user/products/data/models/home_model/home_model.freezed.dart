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
  @JsonKey(name: 'flash_deal')
  FlashSaleModel get flashSales => throw _privateConstructorUsedError;
  @JsonKey(name: 'most_populars')
  List<PopularProductModel> get mostPopular =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'best_selling_products')
  List<ProductModel> get bestSellingProducts =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'newest_products')
  List<ProductModel> get newestProducts => throw _privateConstructorUsedError;
  @JsonKey(name: 'featured_products')
  List<ProductModel> get featuredProducts => throw _privateConstructorUsedError;

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
      @JsonKey(name: 'flash_deal') FlashSaleModel flashSales,
      @JsonKey(name: 'most_populars') List<PopularProductModel> mostPopular,
      @JsonKey(name: 'best_selling_products')
      List<ProductModel> bestSellingProducts,
      @JsonKey(name: 'newest_products') List<ProductModel> newestProducts,
      @JsonKey(name: 'featured_products') List<ProductModel> featuredProducts});

  $FlashSaleModelCopyWith<$Res> get flashSales;
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
    Object? flashSales = null,
    Object? mostPopular = null,
    Object? bestSellingProducts = null,
    Object? newestProducts = null,
    Object? featuredProducts = null,
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
      flashSales: null == flashSales
          ? _value.flashSales
          : flashSales // ignore: cast_nullable_to_non_nullable
              as FlashSaleModel,
      mostPopular: null == mostPopular
          ? _value.mostPopular
          : mostPopular // ignore: cast_nullable_to_non_nullable
              as List<PopularProductModel>,
      bestSellingProducts: null == bestSellingProducts
          ? _value.bestSellingProducts
          : bestSellingProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      newestProducts: null == newestProducts
          ? _value.newestProducts
          : newestProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      featuredProducts: null == featuredProducts
          ? _value.featuredProducts
          : featuredProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FlashSaleModelCopyWith<$Res> get flashSales {
    return $FlashSaleModelCopyWith<$Res>(_value.flashSales, (value) {
      return _then(_value.copyWith(flashSales: value) as $Val);
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
      @JsonKey(name: 'flash_deal') FlashSaleModel flashSales,
      @JsonKey(name: 'most_populars') List<PopularProductModel> mostPopular,
      @JsonKey(name: 'best_selling_products')
      List<ProductModel> bestSellingProducts,
      @JsonKey(name: 'newest_products') List<ProductModel> newestProducts,
      @JsonKey(name: 'featured_products') List<ProductModel> featuredProducts});

  @override
  $FlashSaleModelCopyWith<$Res> get flashSales;
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
    Object? flashSales = null,
    Object? mostPopular = null,
    Object? bestSellingProducts = null,
    Object? newestProducts = null,
    Object? featuredProducts = null,
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
      flashSales: null == flashSales
          ? _value.flashSales
          : flashSales // ignore: cast_nullable_to_non_nullable
              as FlashSaleModel,
      mostPopular: null == mostPopular
          ? _value._mostPopular
          : mostPopular // ignore: cast_nullable_to_non_nullable
              as List<PopularProductModel>,
      bestSellingProducts: null == bestSellingProducts
          ? _value._bestSellingProducts
          : bestSellingProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      newestProducts: null == newestProducts
          ? _value._newestProducts
          : newestProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      featuredProducts: null == featuredProducts
          ? _value._featuredProducts
          : featuredProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
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
      @JsonKey(name: 'flash_deal') required this.flashSales,
      @JsonKey(name: 'most_populars')
      required final List<PopularProductModel> mostPopular,
      @JsonKey(name: 'best_selling_products')
      required final List<ProductModel> bestSellingProducts,
      @JsonKey(name: 'newest_products')
      required final List<ProductModel> newestProducts,
      @JsonKey(name: 'featured_products')
      required final List<ProductModel> featuredProducts})
      : _sliders = sliders,
        _bannersOne = bannersOne,
        _bannersTwo = bannersTwo,
        _categories = categories,
        _mostPopular = mostPopular,
        _bestSellingProducts = bestSellingProducts,
        _newestProducts = newestProducts,
        _featuredProducts = featuredProducts,
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

  @override
  @JsonKey(name: 'flash_deal')
  final FlashSaleModel flashSales;
  final List<PopularProductModel> _mostPopular;
  @override
  @JsonKey(name: 'most_populars')
  List<PopularProductModel> get mostPopular {
    if (_mostPopular is EqualUnmodifiableListView) return _mostPopular;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mostPopular);
  }

  final List<ProductModel> _bestSellingProducts;
  @override
  @JsonKey(name: 'best_selling_products')
  List<ProductModel> get bestSellingProducts {
    if (_bestSellingProducts is EqualUnmodifiableListView)
      return _bestSellingProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bestSellingProducts);
  }

  final List<ProductModel> _newestProducts;
  @override
  @JsonKey(name: 'newest_products')
  List<ProductModel> get newestProducts {
    if (_newestProducts is EqualUnmodifiableListView) return _newestProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_newestProducts);
  }

  final List<ProductModel> _featuredProducts;
  @override
  @JsonKey(name: 'featured_products')
  List<ProductModel> get featuredProducts {
    if (_featuredProducts is EqualUnmodifiableListView)
      return _featuredProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_featuredProducts);
  }

  @override
  String toString() {
    return 'HomeModel(sliders: $sliders, bannersOne: $bannersOne, bannersTwo: $bannersTwo, categories: $categories, flashSales: $flashSales, mostPopular: $mostPopular, bestSellingProducts: $bestSellingProducts, newestProducts: $newestProducts, featuredProducts: $featuredProducts)';
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
            (identical(other.flashSales, flashSales) ||
                other.flashSales == flashSales) &&
            const DeepCollectionEquality()
                .equals(other._mostPopular, _mostPopular) &&
            const DeepCollectionEquality()
                .equals(other._bestSellingProducts, _bestSellingProducts) &&
            const DeepCollectionEquality()
                .equals(other._newestProducts, _newestProducts) &&
            const DeepCollectionEquality()
                .equals(other._featuredProducts, _featuredProducts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_sliders),
      const DeepCollectionEquality().hash(_bannersOne),
      const DeepCollectionEquality().hash(_bannersTwo),
      const DeepCollectionEquality().hash(_categories),
      flashSales,
      const DeepCollectionEquality().hash(_mostPopular),
      const DeepCollectionEquality().hash(_bestSellingProducts),
      const DeepCollectionEquality().hash(_newestProducts),
      const DeepCollectionEquality().hash(_featuredProducts));

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
      @JsonKey(name: 'flash_deal') required final FlashSaleModel flashSales,
      @JsonKey(name: 'most_populars')
      required final List<PopularProductModel> mostPopular,
      @JsonKey(name: 'best_selling_products')
      required final List<ProductModel> bestSellingProducts,
      @JsonKey(name: 'newest_products')
      required final List<ProductModel> newestProducts,
      @JsonKey(name: 'featured_products')
      required final List<ProductModel> featuredProducts}) = _$_HomeModel;
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
  @JsonKey(name: 'flash_deal')
  FlashSaleModel get flashSales;
  @override
  @JsonKey(name: 'most_populars')
  List<PopularProductModel> get mostPopular;
  @override
  @JsonKey(name: 'best_selling_products')
  List<ProductModel> get bestSellingProducts;
  @override
  @JsonKey(name: 'newest_products')
  List<ProductModel> get newestProducts;
  @override
  @JsonKey(name: 'featured_products')
  List<ProductModel> get featuredProducts;
  @override
  @JsonKey(ignore: true)
  _$$_HomeModelCopyWith<_$_HomeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
