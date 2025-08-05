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
  ShopModel get shop => throw _privateConstructorUsedError;
  @JsonKey(name: "section_products")
  SectionProductsModel get sectionProducts =>
      throw _privateConstructorUsedError;

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
      {ShopModel shop,
      @JsonKey(name: "section_products") SectionProductsModel sectionProducts});

  $ShopModelCopyWith<$Res> get shop;
  $SectionProductsModelCopyWith<$Res> get sectionProducts;
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
    Object? shop = null,
    Object? sectionProducts = null,
  }) {
    return _then(_value.copyWith(
      shop: null == shop
          ? _value.shop
          : shop // ignore: cast_nullable_to_non_nullable
              as ShopModel,
      sectionProducts: null == sectionProducts
          ? _value.sectionProducts
          : sectionProducts // ignore: cast_nullable_to_non_nullable
              as SectionProductsModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ShopModelCopyWith<$Res> get shop {
    return $ShopModelCopyWith<$Res>(_value.shop, (value) {
      return _then(_value.copyWith(shop: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SectionProductsModelCopyWith<$Res> get sectionProducts {
    return $SectionProductsModelCopyWith<$Res>(_value.sectionProducts, (value) {
      return _then(_value.copyWith(sectionProducts: value) as $Val);
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
      {ShopModel shop,
      @JsonKey(name: "section_products") SectionProductsModel sectionProducts});

  @override
  $ShopModelCopyWith<$Res> get shop;
  @override
  $SectionProductsModelCopyWith<$Res> get sectionProducts;
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
    Object? shop = null,
    Object? sectionProducts = null,
  }) {
    return _then(_$_SellerProductsModel(
      shop: null == shop
          ? _value.shop
          : shop // ignore: cast_nullable_to_non_nullable
              as ShopModel,
      sectionProducts: null == sectionProducts
          ? _value.sectionProducts
          : sectionProducts // ignore: cast_nullable_to_non_nullable
              as SectionProductsModel,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_SellerProductsModel extends _SellerProductsModel {
  _$_SellerProductsModel(
      {required this.shop,
      @JsonKey(name: "section_products") required this.sectionProducts})
      : super._();

  factory _$_SellerProductsModel.fromJson(Map<String, dynamic> json) =>
      _$$_SellerProductsModelFromJson(json);

  @override
  final ShopModel shop;
  @override
  @JsonKey(name: "section_products")
  final SectionProductsModel sectionProducts;

  @override
  String toString() {
    return 'SellerProductsModel(shop: $shop, sectionProducts: $sectionProducts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SellerProductsModel &&
            (identical(other.shop, shop) || other.shop == shop) &&
            (identical(other.sectionProducts, sectionProducts) ||
                other.sectionProducts == sectionProducts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, shop, sectionProducts);

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
          {required final ShopModel shop,
          @JsonKey(name: "section_products")
          required final SectionProductsModel sectionProducts}) =
      _$_SellerProductsModel;
  _SellerProductsModel._() : super._();

  factory _SellerProductsModel.fromJson(Map<String, dynamic> json) =
      _$_SellerProductsModel.fromJson;

  @override
  ShopModel get shop;
  @override
  @JsonKey(name: "section_products")
  SectionProductsModel get sectionProducts;
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
  PaginationModel get pagination => throw _privateConstructorUsedError;
  List<ProductModel> get products => throw _privateConstructorUsedError;

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
  $Res call({PaginationModel pagination, List<ProductModel> products});

  $PaginationModelCopyWith<$Res> get pagination;
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
              as PaginationModel,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginationModelCopyWith<$Res> get pagination {
    return $PaginationModelCopyWith<$Res>(_value.pagination, (value) {
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
  $Res call({PaginationModel pagination, List<ProductModel> products});

  @override
  $PaginationModelCopyWith<$Res> get pagination;
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
              as PaginationModel,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_SectionProductsModel extends _SectionProductsModel {
  _$_SectionProductsModel(
      {required this.pagination, required final List<ProductModel> products})
      : _products = products,
        super._();

  factory _$_SectionProductsModel.fromJson(Map<String, dynamic> json) =>
      _$$_SectionProductsModelFromJson(json);

  @override
  final PaginationModel pagination;
  final List<ProductModel> _products;
  @override
  List<ProductModel> get products {
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
      {required final PaginationModel pagination,
      required final List<ProductModel> products}) = _$_SectionProductsModel;
  _SectionProductsModel._() : super._();

  factory _SectionProductsModel.fromJson(Map<String, dynamic> json) =
      _$_SectionProductsModel.fromJson;

  @override
  PaginationModel get pagination;
  @override
  List<ProductModel> get products;
  @override
  @JsonKey(ignore: true)
  _$$_SectionProductsModelCopyWith<_$_SectionProductsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
