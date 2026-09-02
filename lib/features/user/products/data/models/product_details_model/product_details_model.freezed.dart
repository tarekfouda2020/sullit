// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductDetailsModel _$ProductDetailsModelFromJson(Map<String, dynamic> json) {
  return _ProductDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$ProductDetailsModel {
  ProductModel get product => throw _privateConstructorUsedError;
  @JsonKey(name: 'branch')
  PharmacyBranchModel? get branch => throw _privateConstructorUsedError;
  @JsonKey(name: 'related_products')
  List<ProductCardModel> get relatedProducts =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'top_products')
  List<ProductCardModel> get topProducts => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_queries')
  ProductQueriesModel get productQueries => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDetailsModelCopyWith<ProductDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailsModelCopyWith<$Res> {
  factory $ProductDetailsModelCopyWith(
          ProductDetailsModel value, $Res Function(ProductDetailsModel) then) =
      _$ProductDetailsModelCopyWithImpl<$Res, ProductDetailsModel>;
  @useResult
  $Res call(
      {ProductModel product,
      @JsonKey(name: 'branch') PharmacyBranchModel? branch,
      @JsonKey(name: 'related_products') List<ProductCardModel> relatedProducts,
      @JsonKey(name: 'top_products') List<ProductCardModel> topProducts,
      @JsonKey(name: 'product_queries') ProductQueriesModel productQueries});

  $ProductModelCopyWith<$Res> get product;
  $PharmacyBranchModelCopyWith<$Res>? get branch;
  $ProductQueriesModelCopyWith<$Res> get productQueries;
}

/// @nodoc
class _$ProductDetailsModelCopyWithImpl<$Res, $Val extends ProductDetailsModel>
    implements $ProductDetailsModelCopyWith<$Res> {
  _$ProductDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? branch = freezed,
    Object? relatedProducts = null,
    Object? topProducts = null,
    Object? productQueries = null,
  }) {
    return _then(_value.copyWith(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
      branch: freezed == branch
          ? _value.branch
          : branch // ignore: cast_nullable_to_non_nullable
              as PharmacyBranchModel?,
      relatedProducts: null == relatedProducts
          ? _value.relatedProducts
          : relatedProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductCardModel>,
      topProducts: null == topProducts
          ? _value.topProducts
          : topProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductCardModel>,
      productQueries: null == productQueries
          ? _value.productQueries
          : productQueries // ignore: cast_nullable_to_non_nullable
              as ProductQueriesModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductModelCopyWith<$Res> get product {
    return $ProductModelCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
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

  @override
  @pragma('vm:prefer-inline')
  $ProductQueriesModelCopyWith<$Res> get productQueries {
    return $ProductQueriesModelCopyWith<$Res>(_value.productQueries, (value) {
      return _then(_value.copyWith(productQueries: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProductDetailsModelCopyWith<$Res>
    implements $ProductDetailsModelCopyWith<$Res> {
  factory _$$_ProductDetailsModelCopyWith(_$_ProductDetailsModel value,
          $Res Function(_$_ProductDetailsModel) then) =
      __$$_ProductDetailsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ProductModel product,
      @JsonKey(name: 'branch') PharmacyBranchModel? branch,
      @JsonKey(name: 'related_products') List<ProductCardModel> relatedProducts,
      @JsonKey(name: 'top_products') List<ProductCardModel> topProducts,
      @JsonKey(name: 'product_queries') ProductQueriesModel productQueries});

  @override
  $ProductModelCopyWith<$Res> get product;
  @override
  $PharmacyBranchModelCopyWith<$Res>? get branch;
  @override
  $ProductQueriesModelCopyWith<$Res> get productQueries;
}

/// @nodoc
class __$$_ProductDetailsModelCopyWithImpl<$Res>
    extends _$ProductDetailsModelCopyWithImpl<$Res, _$_ProductDetailsModel>
    implements _$$_ProductDetailsModelCopyWith<$Res> {
  __$$_ProductDetailsModelCopyWithImpl(_$_ProductDetailsModel _value,
      $Res Function(_$_ProductDetailsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? branch = freezed,
    Object? relatedProducts = null,
    Object? topProducts = null,
    Object? productQueries = null,
  }) {
    return _then(_$_ProductDetailsModel(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
      branch: freezed == branch
          ? _value.branch
          : branch // ignore: cast_nullable_to_non_nullable
              as PharmacyBranchModel?,
      relatedProducts: null == relatedProducts
          ? _value._relatedProducts
          : relatedProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductCardModel>,
      topProducts: null == topProducts
          ? _value._topProducts
          : topProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductCardModel>,
      productQueries: null == productQueries
          ? _value.productQueries
          : productQueries // ignore: cast_nullable_to_non_nullable
              as ProductQueriesModel,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ProductDetailsModel extends _ProductDetailsModel {
  const _$_ProductDetailsModel(
      {required this.product,
      @JsonKey(name: 'branch') this.branch,
      @JsonKey(name: 'related_products')
      required final List<ProductCardModel> relatedProducts,
      @JsonKey(name: 'top_products')
      required final List<ProductCardModel> topProducts,
      @JsonKey(name: 'product_queries') required this.productQueries})
      : _relatedProducts = relatedProducts,
        _topProducts = topProducts,
        super._();

  factory _$_ProductDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProductDetailsModelFromJson(json);

  @override
  final ProductModel product;
  @override
  @JsonKey(name: 'branch')
  final PharmacyBranchModel? branch;
  final List<ProductCardModel> _relatedProducts;
  @override
  @JsonKey(name: 'related_products')
  List<ProductCardModel> get relatedProducts {
    if (_relatedProducts is EqualUnmodifiableListView) return _relatedProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relatedProducts);
  }

  final List<ProductCardModel> _topProducts;
  @override
  @JsonKey(name: 'top_products')
  List<ProductCardModel> get topProducts {
    if (_topProducts is EqualUnmodifiableListView) return _topProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topProducts);
  }

  @override
  @JsonKey(name: 'product_queries')
  final ProductQueriesModel productQueries;

  @override
  String toString() {
    return 'ProductDetailsModel(product: $product, branch: $branch, relatedProducts: $relatedProducts, topProducts: $topProducts, productQueries: $productQueries)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductDetailsModel &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.branch, branch) || other.branch == branch) &&
            const DeepCollectionEquality()
                .equals(other._relatedProducts, _relatedProducts) &&
            const DeepCollectionEquality()
                .equals(other._topProducts, _topProducts) &&
            (identical(other.productQueries, productQueries) ||
                other.productQueries == productQueries));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      product,
      branch,
      const DeepCollectionEquality().hash(_relatedProducts),
      const DeepCollectionEquality().hash(_topProducts),
      productQueries);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductDetailsModelCopyWith<_$_ProductDetailsModel> get copyWith =>
      __$$_ProductDetailsModelCopyWithImpl<_$_ProductDetailsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductDetailsModelToJson(
      this,
    );
  }
}

abstract class _ProductDetailsModel extends ProductDetailsModel {
  const factory _ProductDetailsModel(
          {required final ProductModel product,
          @JsonKey(name: 'branch') final PharmacyBranchModel? branch,
          @JsonKey(name: 'related_products')
          required final List<ProductCardModel> relatedProducts,
          @JsonKey(name: 'top_products')
          required final List<ProductCardModel> topProducts,
          @JsonKey(name: 'product_queries')
          required final ProductQueriesModel productQueries}) =
      _$_ProductDetailsModel;
  const _ProductDetailsModel._() : super._();

  factory _ProductDetailsModel.fromJson(Map<String, dynamic> json) =
      _$_ProductDetailsModel.fromJson;

  @override
  ProductModel get product;
  @override
  @JsonKey(name: 'branch')
  PharmacyBranchModel? get branch;
  @override
  @JsonKey(name: 'related_products')
  List<ProductCardModel> get relatedProducts;
  @override
  @JsonKey(name: 'top_products')
  List<ProductCardModel> get topProducts;
  @override
  @JsonKey(name: 'product_queries')
  ProductQueriesModel get productQueries;
  @override
  @JsonKey(ignore: true)
  _$$_ProductDetailsModelCopyWith<_$_ProductDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
