// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_product_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CustomerProductDetailsModel _$CustomerProductDetailsModelFromJson(
    Map<String, dynamic> json) {
  return _CustomerProductDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$CustomerProductDetailsModel {
  @JsonKey(name: "customer_product")
  CustomerProductModel get customerProduct =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "related_customer_products")
  List<CustomerProductModel> get relatedProducts =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerProductDetailsModelCopyWith<CustomerProductDetailsModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerProductDetailsModelCopyWith<$Res> {
  factory $CustomerProductDetailsModelCopyWith(
          CustomerProductDetailsModel value,
          $Res Function(CustomerProductDetailsModel) then) =
      _$CustomerProductDetailsModelCopyWithImpl<$Res,
          CustomerProductDetailsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "customer_product") CustomerProductModel customerProduct,
      @JsonKey(name: "related_customer_products")
      List<CustomerProductModel> relatedProducts});

  $CustomerProductModelCopyWith<$Res> get customerProduct;
}

/// @nodoc
class _$CustomerProductDetailsModelCopyWithImpl<$Res,
        $Val extends CustomerProductDetailsModel>
    implements $CustomerProductDetailsModelCopyWith<$Res> {
  _$CustomerProductDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerProduct = null,
    Object? relatedProducts = null,
  }) {
    return _then(_value.copyWith(
      customerProduct: null == customerProduct
          ? _value.customerProduct
          : customerProduct // ignore: cast_nullable_to_non_nullable
              as CustomerProductModel,
      relatedProducts: null == relatedProducts
          ? _value.relatedProducts
          : relatedProducts // ignore: cast_nullable_to_non_nullable
              as List<CustomerProductModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CustomerProductModelCopyWith<$Res> get customerProduct {
    return $CustomerProductModelCopyWith<$Res>(_value.customerProduct, (value) {
      return _then(_value.copyWith(customerProduct: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CustomerProductDetailsModelCopyWith<$Res>
    implements $CustomerProductDetailsModelCopyWith<$Res> {
  factory _$$_CustomerProductDetailsModelCopyWith(
          _$_CustomerProductDetailsModel value,
          $Res Function(_$_CustomerProductDetailsModel) then) =
      __$$_CustomerProductDetailsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "customer_product") CustomerProductModel customerProduct,
      @JsonKey(name: "related_customer_products")
      List<CustomerProductModel> relatedProducts});

  @override
  $CustomerProductModelCopyWith<$Res> get customerProduct;
}

/// @nodoc
class __$$_CustomerProductDetailsModelCopyWithImpl<$Res>
    extends _$CustomerProductDetailsModelCopyWithImpl<$Res,
        _$_CustomerProductDetailsModel>
    implements _$$_CustomerProductDetailsModelCopyWith<$Res> {
  __$$_CustomerProductDetailsModelCopyWithImpl(
      _$_CustomerProductDetailsModel _value,
      $Res Function(_$_CustomerProductDetailsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerProduct = null,
    Object? relatedProducts = null,
  }) {
    return _then(_$_CustomerProductDetailsModel(
      customerProduct: null == customerProduct
          ? _value.customerProduct
          : customerProduct // ignore: cast_nullable_to_non_nullable
              as CustomerProductModel,
      relatedProducts: null == relatedProducts
          ? _value._relatedProducts
          : relatedProducts // ignore: cast_nullable_to_non_nullable
              as List<CustomerProductModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_CustomerProductDetailsModel extends _CustomerProductDetailsModel {
  const _$_CustomerProductDetailsModel(
      {@JsonKey(name: "customer_product") required this.customerProduct,
      @JsonKey(name: "related_customer_products")
      required final List<CustomerProductModel> relatedProducts})
      : _relatedProducts = relatedProducts,
        super._();

  factory _$_CustomerProductDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$$_CustomerProductDetailsModelFromJson(json);

  @override
  @JsonKey(name: "customer_product")
  final CustomerProductModel customerProduct;
  final List<CustomerProductModel> _relatedProducts;
  @override
  @JsonKey(name: "related_customer_products")
  List<CustomerProductModel> get relatedProducts {
    if (_relatedProducts is EqualUnmodifiableListView) return _relatedProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relatedProducts);
  }

  @override
  String toString() {
    return 'CustomerProductDetailsModel(customerProduct: $customerProduct, relatedProducts: $relatedProducts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomerProductDetailsModel &&
            (identical(other.customerProduct, customerProduct) ||
                other.customerProduct == customerProduct) &&
            const DeepCollectionEquality()
                .equals(other._relatedProducts, _relatedProducts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, customerProduct,
      const DeepCollectionEquality().hash(_relatedProducts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CustomerProductDetailsModelCopyWith<_$_CustomerProductDetailsModel>
      get copyWith => __$$_CustomerProductDetailsModelCopyWithImpl<
          _$_CustomerProductDetailsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomerProductDetailsModelToJson(
      this,
    );
  }
}

abstract class _CustomerProductDetailsModel
    extends CustomerProductDetailsModel {
  const factory _CustomerProductDetailsModel(
          {@JsonKey(name: "customer_product")
          required final CustomerProductModel customerProduct,
          @JsonKey(name: "related_customer_products")
          required final List<CustomerProductModel> relatedProducts}) =
      _$_CustomerProductDetailsModel;
  const _CustomerProductDetailsModel._() : super._();

  factory _CustomerProductDetailsModel.fromJson(Map<String, dynamic> json) =
      _$_CustomerProductDetailsModel.fromJson;

  @override
  @JsonKey(name: "customer_product")
  CustomerProductModel get customerProduct;
  @override
  @JsonKey(name: "related_customer_products")
  List<CustomerProductModel> get relatedProducts;
  @override
  @JsonKey(ignore: true)
  _$$_CustomerProductDetailsModelCopyWith<_$_CustomerProductDetailsModel>
      get copyWith => throw _privateConstructorUsedError;
}
