// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'seller_products_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SellerProductsModel _$SellerProductsModelFromJson(Map<String, dynamic> json) {
  return _SellerProductsModel.fromJson(json);
}

/// @nodoc
mixin _$SellerProductsModel {
  @JsonKey(name: "section_products")
  SectionProductsModel get sectionProducts =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'price_range')
  PriceRangeModel get priceRange => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SellerProductsModelCopyWith<SellerProductsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SellerProductsModelCopyWith<$Res> {
  factory $SellerProductsModelCopyWith(
          SellerProductsModel value, $Res Function(SellerProductsModel) then) =
      _$SellerProductsModelCopyWithImpl<$Res, SellerProductsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "section_products") SectionProductsModel sectionProducts,
      @JsonKey(name: 'price_range') PriceRangeModel priceRange});

  $SectionProductsModelCopyWith<$Res> get sectionProducts;
  $PriceRangeModelCopyWith<$Res> get priceRange;
}

/// @nodoc
class _$SellerProductsModelCopyWithImpl<$Res, $Val extends SellerProductsModel>
    implements $SellerProductsModelCopyWith<$Res> {
  _$SellerProductsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sectionProducts = null,
    Object? priceRange = null,
  }) {
    return _then(_value.copyWith(
      sectionProducts: null == sectionProducts
          ? _value.sectionProducts
          : sectionProducts // ignore: cast_nullable_to_non_nullable
              as SectionProductsModel,
      priceRange: null == priceRange
          ? _value.priceRange
          : priceRange // ignore: cast_nullable_to_non_nullable
              as PriceRangeModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SectionProductsModelCopyWith<$Res> get sectionProducts {
    return $SectionProductsModelCopyWith<$Res>(_value.sectionProducts, (value) {
      return _then(_value.copyWith(sectionProducts: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PriceRangeModelCopyWith<$Res> get priceRange {
    return $PriceRangeModelCopyWith<$Res>(_value.priceRange, (value) {
      return _then(_value.copyWith(priceRange: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SellerProductsModelCopyWith<$Res>
    implements $SellerProductsModelCopyWith<$Res> {
  factory _$$_SellerProductsModelCopyWith(_$_SellerProductsModel value,
          $Res Function(_$_SellerProductsModel) then) =
      __$$_SellerProductsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "section_products") SectionProductsModel sectionProducts,
      @JsonKey(name: 'price_range') PriceRangeModel priceRange});

  @override
  $SectionProductsModelCopyWith<$Res> get sectionProducts;
  @override
  $PriceRangeModelCopyWith<$Res> get priceRange;
}

/// @nodoc
class __$$_SellerProductsModelCopyWithImpl<$Res>
    extends _$SellerProductsModelCopyWithImpl<$Res, _$_SellerProductsModel>
    implements _$$_SellerProductsModelCopyWith<$Res> {
  __$$_SellerProductsModelCopyWithImpl(_$_SellerProductsModel _value,
      $Res Function(_$_SellerProductsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sectionProducts = null,
    Object? priceRange = null,
  }) {
    return _then(_$_SellerProductsModel(
      sectionProducts: null == sectionProducts
          ? _value.sectionProducts
          : sectionProducts // ignore: cast_nullable_to_non_nullable
              as SectionProductsModel,
      priceRange: null == priceRange
          ? _value.priceRange
          : priceRange // ignore: cast_nullable_to_non_nullable
              as PriceRangeModel,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_SellerProductsModel extends _SellerProductsModel {
  _$_SellerProductsModel(
      {@JsonKey(name: "section_products") required this.sectionProducts,
      @JsonKey(name: 'price_range') required this.priceRange})
      : super._();

  factory _$_SellerProductsModel.fromJson(Map<String, dynamic> json) =>
      _$$_SellerProductsModelFromJson(json);

  @override
  @JsonKey(name: "section_products")
  final SectionProductsModel sectionProducts;
  @override
  @JsonKey(name: 'price_range')
  final PriceRangeModel priceRange;

  @override
  String toString() {
    return 'SellerProductsModel(sectionProducts: $sectionProducts, priceRange: $priceRange)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SellerProductsModel &&
            (identical(other.sectionProducts, sectionProducts) ||
                other.sectionProducts == sectionProducts) &&
            (identical(other.priceRange, priceRange) ||
                other.priceRange == priceRange));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, sectionProducts, priceRange);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SellerProductsModelCopyWith<_$_SellerProductsModel> get copyWith =>
      __$$_SellerProductsModelCopyWithImpl<_$_SellerProductsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SellerProductsModelToJson(
      this,
    );
  }
}

abstract class _SellerProductsModel extends SellerProductsModel {
  factory _SellerProductsModel(
      {@JsonKey(name: "section_products")
      required final SectionProductsModel sectionProducts,
      @JsonKey(name: 'price_range')
      required final PriceRangeModel priceRange}) = _$_SellerProductsModel;
  _SellerProductsModel._() : super._();

  factory _SellerProductsModel.fromJson(Map<String, dynamic> json) =
      _$_SellerProductsModel.fromJson;

  @override
  @JsonKey(name: "section_products")
  SectionProductsModel get sectionProducts;
  @override
  @JsonKey(name: 'price_range')
  PriceRangeModel get priceRange;
  @override
  @JsonKey(ignore: true)
  _$$_SellerProductsModelCopyWith<_$_SellerProductsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

SectionProductsModel _$SectionProductsModelFromJson(Map<String, dynamic> json) {
  return _SectionProductsModel.fromJson(json);
}

/// @nodoc
mixin _$SectionProductsModel {
  SellerPaginationData get pagination => throw _privateConstructorUsedError;
  List<ProductCardModel> get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SectionProductsModelCopyWith<SectionProductsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SectionProductsModelCopyWith<$Res> {
  factory $SectionProductsModelCopyWith(SectionProductsModel value,
          $Res Function(SectionProductsModel) then) =
      _$SectionProductsModelCopyWithImpl<$Res, SectionProductsModel>;
  @useResult
  $Res call({SellerPaginationData pagination, List<ProductCardModel> products});

  $SellerPaginationDataCopyWith<$Res> get pagination;
}

/// @nodoc
class _$SectionProductsModelCopyWithImpl<$Res,
        $Val extends SectionProductsModel>
    implements $SectionProductsModelCopyWith<$Res> {
  _$SectionProductsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pagination = null,
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      pagination: null == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as SellerPaginationData,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductCardModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SellerPaginationDataCopyWith<$Res> get pagination {
    return $SellerPaginationDataCopyWith<$Res>(_value.pagination, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SectionProductsModelCopyWith<$Res>
    implements $SectionProductsModelCopyWith<$Res> {
  factory _$$_SectionProductsModelCopyWith(_$_SectionProductsModel value,
          $Res Function(_$_SectionProductsModel) then) =
      __$$_SectionProductsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SellerPaginationData pagination, List<ProductCardModel> products});

  @override
  $SellerPaginationDataCopyWith<$Res> get pagination;
}

/// @nodoc
class __$$_SectionProductsModelCopyWithImpl<$Res>
    extends _$SectionProductsModelCopyWithImpl<$Res, _$_SectionProductsModel>
    implements _$$_SectionProductsModelCopyWith<$Res> {
  __$$_SectionProductsModelCopyWithImpl(_$_SectionProductsModel _value,
      $Res Function(_$_SectionProductsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pagination = null,
    Object? products = null,
  }) {
    return _then(_$_SectionProductsModel(
      pagination: null == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as SellerPaginationData,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductCardModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_SectionProductsModel extends _SectionProductsModel {
  _$_SectionProductsModel(
      {required this.pagination,
      required final List<ProductCardModel> products})
      : _products = products,
        super._();

  factory _$_SectionProductsModel.fromJson(Map<String, dynamic> json) =>
      _$$_SectionProductsModelFromJson(json);

  @override
  final SellerPaginationData pagination;
  final List<ProductCardModel> _products;
  @override
  List<ProductCardModel> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'SectionProductsModel(pagination: $pagination, products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SectionProductsModel &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, pagination, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SectionProductsModelCopyWith<_$_SectionProductsModel> get copyWith =>
      __$$_SectionProductsModelCopyWithImpl<_$_SectionProductsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SectionProductsModelToJson(
      this,
    );
  }
}

abstract class _SectionProductsModel extends SectionProductsModel {
  factory _SectionProductsModel(
          {required final SellerPaginationData pagination,
          required final List<ProductCardModel> products}) =
      _$_SectionProductsModel;
  _SectionProductsModel._() : super._();

  factory _SectionProductsModel.fromJson(Map<String, dynamic> json) =
      _$_SectionProductsModel.fromJson;

  @override
  SellerPaginationData get pagination;
  @override
  List<ProductCardModel> get products;
  @override
  @JsonKey(ignore: true)
  _$$_SectionProductsModelCopyWith<_$_SectionProductsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

SellerPaginationData _$SellerPaginationDataFromJson(Map<String, dynamic> json) {
  return _SellerPaginationData.fromJson(json);
}

/// @nodoc
mixin _$SellerPaginationData {
  @JsonKey(name: "total_items")
  int get totalItems => throw _privateConstructorUsedError;
  @JsonKey(name: "count_items")
  int get countItems => throw _privateConstructorUsedError;
  @JsonKey(name: "per_page")
  int get perPage => throw _privateConstructorUsedError;
  @JsonKey(name: "total_pages")
  int get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: "current_page")
  int get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: "next_page_url")
  String get nextPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "perv_page_url")
  String get pervPageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SellerPaginationDataCopyWith<SellerPaginationData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SellerPaginationDataCopyWith<$Res> {
  factory $SellerPaginationDataCopyWith(SellerPaginationData value,
          $Res Function(SellerPaginationData) then) =
      _$SellerPaginationDataCopyWithImpl<$Res, SellerPaginationData>;
  @useResult
  $Res call(
      {@JsonKey(name: "total_items") int totalItems,
      @JsonKey(name: "count_items") int countItems,
      @JsonKey(name: "per_page") int perPage,
      @JsonKey(name: "total_pages") int totalPages,
      @JsonKey(name: "current_page") int currentPage,
      @JsonKey(name: "next_page_url") String nextPageUrl,
      @JsonKey(name: "perv_page_url") String pervPageUrl});
}

/// @nodoc
class _$SellerPaginationDataCopyWithImpl<$Res,
        $Val extends SellerPaginationData>
    implements $SellerPaginationDataCopyWith<$Res> {
  _$SellerPaginationDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalItems = null,
    Object? countItems = null,
    Object? perPage = null,
    Object? totalPages = null,
    Object? currentPage = null,
    Object? nextPageUrl = null,
    Object? pervPageUrl = null,
  }) {
    return _then(_value.copyWith(
      totalItems: null == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int,
      countItems: null == countItems
          ? _value.countItems
          : countItems // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      nextPageUrl: null == nextPageUrl
          ? _value.nextPageUrl
          : nextPageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      pervPageUrl: null == pervPageUrl
          ? _value.pervPageUrl
          : pervPageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SellerPaginationDataCopyWith<$Res>
    implements $SellerPaginationDataCopyWith<$Res> {
  factory _$$_SellerPaginationDataCopyWith(_$_SellerPaginationData value,
          $Res Function(_$_SellerPaginationData) then) =
      __$$_SellerPaginationDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "total_items") int totalItems,
      @JsonKey(name: "count_items") int countItems,
      @JsonKey(name: "per_page") int perPage,
      @JsonKey(name: "total_pages") int totalPages,
      @JsonKey(name: "current_page") int currentPage,
      @JsonKey(name: "next_page_url") String nextPageUrl,
      @JsonKey(name: "perv_page_url") String pervPageUrl});
}

/// @nodoc
class __$$_SellerPaginationDataCopyWithImpl<$Res>
    extends _$SellerPaginationDataCopyWithImpl<$Res, _$_SellerPaginationData>
    implements _$$_SellerPaginationDataCopyWith<$Res> {
  __$$_SellerPaginationDataCopyWithImpl(_$_SellerPaginationData _value,
      $Res Function(_$_SellerPaginationData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalItems = null,
    Object? countItems = null,
    Object? perPage = null,
    Object? totalPages = null,
    Object? currentPage = null,
    Object? nextPageUrl = null,
    Object? pervPageUrl = null,
  }) {
    return _then(_$_SellerPaginationData(
      totalItems: null == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int,
      countItems: null == countItems
          ? _value.countItems
          : countItems // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      nextPageUrl: null == nextPageUrl
          ? _value.nextPageUrl
          : nextPageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      pervPageUrl: null == pervPageUrl
          ? _value.pervPageUrl
          : pervPageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_SellerPaginationData extends _SellerPaginationData {
  _$_SellerPaginationData(
      {@JsonKey(name: "total_items") required this.totalItems,
      @JsonKey(name: "count_items") required this.countItems,
      @JsonKey(name: "per_page") required this.perPage,
      @JsonKey(name: "total_pages") required this.totalPages,
      @JsonKey(name: "current_page") required this.currentPage,
      @JsonKey(name: "next_page_url") required this.nextPageUrl,
      @JsonKey(name: "perv_page_url") required this.pervPageUrl})
      : super._();

  factory _$_SellerPaginationData.fromJson(Map<String, dynamic> json) =>
      _$$_SellerPaginationDataFromJson(json);

  @override
  @JsonKey(name: "total_items")
  final int totalItems;
  @override
  @JsonKey(name: "count_items")
  final int countItems;
  @override
  @JsonKey(name: "per_page")
  final int perPage;
  @override
  @JsonKey(name: "total_pages")
  final int totalPages;
  @override
  @JsonKey(name: "current_page")
  final int currentPage;
  @override
  @JsonKey(name: "next_page_url")
  final String nextPageUrl;
  @override
  @JsonKey(name: "perv_page_url")
  final String pervPageUrl;

  @override
  String toString() {
    return 'SellerPaginationData(totalItems: $totalItems, countItems: $countItems, perPage: $perPage, totalPages: $totalPages, currentPage: $currentPage, nextPageUrl: $nextPageUrl, pervPageUrl: $pervPageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SellerPaginationData &&
            (identical(other.totalItems, totalItems) ||
                other.totalItems == totalItems) &&
            (identical(other.countItems, countItems) ||
                other.countItems == countItems) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.nextPageUrl, nextPageUrl) ||
                other.nextPageUrl == nextPageUrl) &&
            (identical(other.pervPageUrl, pervPageUrl) ||
                other.pervPageUrl == pervPageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, totalItems, countItems, perPage,
      totalPages, currentPage, nextPageUrl, pervPageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SellerPaginationDataCopyWith<_$_SellerPaginationData> get copyWith =>
      __$$_SellerPaginationDataCopyWithImpl<_$_SellerPaginationData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SellerPaginationDataToJson(
      this,
    );
  }
}

abstract class _SellerPaginationData extends SellerPaginationData {
  factory _SellerPaginationData(
          {@JsonKey(name: "total_items") required final int totalItems,
          @JsonKey(name: "count_items") required final int countItems,
          @JsonKey(name: "per_page") required final int perPage,
          @JsonKey(name: "total_pages") required final int totalPages,
          @JsonKey(name: "current_page") required final int currentPage,
          @JsonKey(name: "next_page_url") required final String nextPageUrl,
          @JsonKey(name: "perv_page_url") required final String pervPageUrl}) =
      _$_SellerPaginationData;
  _SellerPaginationData._() : super._();

  factory _SellerPaginationData.fromJson(Map<String, dynamic> json) =
      _$_SellerPaginationData.fromJson;

  @override
  @JsonKey(name: "total_items")
  int get totalItems;
  @override
  @JsonKey(name: "count_items")
  int get countItems;
  @override
  @JsonKey(name: "per_page")
  int get perPage;
  @override
  @JsonKey(name: "total_pages")
  int get totalPages;
  @override
  @JsonKey(name: "current_page")
  int get currentPage;
  @override
  @JsonKey(name: "next_page_url")
  String get nextPageUrl;
  @override
  @JsonKey(name: "perv_page_url")
  String get pervPageUrl;
  @override
  @JsonKey(ignore: true)
  _$$_SellerPaginationDataCopyWith<_$_SellerPaginationData> get copyWith =>
      throw _privateConstructorUsedError;
}
