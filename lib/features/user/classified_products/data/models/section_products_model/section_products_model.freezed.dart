// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'section_products_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SectionProductsModel _$SectionProductsModelFromJson(Map<String, dynamic> json) {
  return _SectionProductsModel.fromJson(json);
}

/// @nodoc
mixin _$SectionProductsModel {
  List<CusProductModel> get products => throw _privateConstructorUsedError;

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
  $Res call({List<CusProductModel> products});
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
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<CusProductModel>,
    ) as $Val);
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
  $Res call({List<CusProductModel> products});
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
    Object? products = null,
  }) {
    return _then(_$_SectionProductsModel(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<CusProductModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_SectionProductsModel extends _SectionProductsModel {
  const _$_SectionProductsModel({required final List<CusProductModel> products})
      : _products = products,
        super._();

  factory _$_SectionProductsModel.fromJson(Map<String, dynamic> json) =>
      _$$_SectionProductsModelFromJson(json);

  final List<CusProductModel> _products;
  @override
  List<CusProductModel> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'SectionProductsModel(products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SectionProductsModel &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

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
  const factory _SectionProductsModel(
          {required final List<CusProductModel> products}) =
      _$_SectionProductsModel;
  const _SectionProductsModel._() : super._();

  factory _SectionProductsModel.fromJson(Map<String, dynamic> json) =
      _$_SectionProductsModel.fromJson;

  @override
  List<CusProductModel> get products;
  @override
  @JsonKey(ignore: true)
  _$$_SectionProductsModelCopyWith<_$_SectionProductsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
