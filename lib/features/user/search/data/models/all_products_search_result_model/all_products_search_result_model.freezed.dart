// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_products_search_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AllProductsSearchResultModel _$AllProductsSearchResultModelFromJson(
    Map<String, dynamic> json) {
  return _AllProductsSearchResultModel.fromJson(json);
}

/// @nodoc
mixin _$AllProductsSearchResultModel {
  List<ProductModel> get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AllProductsSearchResultModelCopyWith<AllProductsSearchResultModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllProductsSearchResultModelCopyWith<$Res> {
  factory $AllProductsSearchResultModelCopyWith(
          AllProductsSearchResultModel value,
          $Res Function(AllProductsSearchResultModel) then) =
      _$AllProductsSearchResultModelCopyWithImpl<$Res,
          AllProductsSearchResultModel>;
  @useResult
  $Res call({List<ProductModel> products});
}

/// @nodoc
class _$AllProductsSearchResultModelCopyWithImpl<$Res,
        $Val extends AllProductsSearchResultModel>
    implements $AllProductsSearchResultModelCopyWith<$Res> {
  _$AllProductsSearchResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AllProductsSearchResultModelCopyWith<$Res>
    implements $AllProductsSearchResultModelCopyWith<$Res> {
  factory _$$_AllProductsSearchResultModelCopyWith(
          _$_AllProductsSearchResultModel value,
          $Res Function(_$_AllProductsSearchResultModel) then) =
      __$$_AllProductsSearchResultModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ProductModel> products});
}

/// @nodoc
class __$$_AllProductsSearchResultModelCopyWithImpl<$Res>
    extends _$AllProductsSearchResultModelCopyWithImpl<$Res,
        _$_AllProductsSearchResultModel>
    implements _$$_AllProductsSearchResultModelCopyWith<$Res> {
  __$$_AllProductsSearchResultModelCopyWithImpl(
      _$_AllProductsSearchResultModel _value,
      $Res Function(_$_AllProductsSearchResultModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_$_AllProductsSearchResultModel(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_AllProductsSearchResultModel extends _AllProductsSearchResultModel {
  _$_AllProductsSearchResultModel({required final List<ProductModel> products})
      : _products = products,
        super._();

  factory _$_AllProductsSearchResultModel.fromJson(Map<String, dynamic> json) =>
      _$$_AllProductsSearchResultModelFromJson(json);

  final List<ProductModel> _products;
  @override
  List<ProductModel> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'AllProductsSearchResultModel(products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AllProductsSearchResultModel &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AllProductsSearchResultModelCopyWith<_$_AllProductsSearchResultModel>
      get copyWith => __$$_AllProductsSearchResultModelCopyWithImpl<
          _$_AllProductsSearchResultModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AllProductsSearchResultModelToJson(
      this,
    );
  }
}

abstract class _AllProductsSearchResultModel
    extends AllProductsSearchResultModel {
  factory _AllProductsSearchResultModel(
          {required final List<ProductModel> products}) =
      _$_AllProductsSearchResultModel;
  _AllProductsSearchResultModel._() : super._();

  factory _AllProductsSearchResultModel.fromJson(Map<String, dynamic> json) =
      _$_AllProductsSearchResultModel.fromJson;

  @override
  List<ProductModel> get products;
  @override
  @JsonKey(ignore: true)
  _$$_AllProductsSearchResultModelCopyWith<_$_AllProductsSearchResultModel>
      get copyWith => throw _privateConstructorUsedError;
}
