// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_sections_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductSectionsModel _$ProductSectionsModelFromJson(Map<String, dynamic> json) {
  return _ProductSectionsModel.fromJson(json);
}

/// @nodoc
mixin _$ProductSectionsModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<ProductModel> get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductSectionsModelCopyWith<ProductSectionsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductSectionsModelCopyWith<$Res> {
  factory $ProductSectionsModelCopyWith(ProductSectionsModel value,
          $Res Function(ProductSectionsModel) then) =
      _$ProductSectionsModelCopyWithImpl<$Res, ProductSectionsModel>;
  @useResult
  $Res call(
      {int id, String name, String description, List<ProductModel> products});
}

/// @nodoc
class _$ProductSectionsModelCopyWithImpl<$Res,
        $Val extends ProductSectionsModel>
    implements $ProductSectionsModelCopyWith<$Res> {
  _$ProductSectionsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? products = null,
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductSectionsModelCopyWith<$Res>
    implements $ProductSectionsModelCopyWith<$Res> {
  factory _$$_ProductSectionsModelCopyWith(_$_ProductSectionsModel value,
          $Res Function(_$_ProductSectionsModel) then) =
      __$$_ProductSectionsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, String name, String description, List<ProductModel> products});
}

/// @nodoc
class __$$_ProductSectionsModelCopyWithImpl<$Res>
    extends _$ProductSectionsModelCopyWithImpl<$Res, _$_ProductSectionsModel>
    implements _$$_ProductSectionsModelCopyWith<$Res> {
  __$$_ProductSectionsModelCopyWithImpl(_$_ProductSectionsModel _value,
      $Res Function(_$_ProductSectionsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? products = null,
  }) {
    return _then(_$_ProductSectionsModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ProductSectionsModel extends _ProductSectionsModel {
  const _$_ProductSectionsModel(
      {required this.id,
      required this.name,
      required this.description,
      required final List<ProductModel> products})
      : _products = products,
        super._();

  factory _$_ProductSectionsModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProductSectionsModelFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String description;
  final List<ProductModel> _products;
  @override
  List<ProductModel> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'ProductSectionsModel(id: $id, name: $name, description: $description, products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductSectionsModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description,
      const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductSectionsModelCopyWith<_$_ProductSectionsModel> get copyWith =>
      __$$_ProductSectionsModelCopyWithImpl<_$_ProductSectionsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductSectionsModelToJson(
      this,
    );
  }
}

abstract class _ProductSectionsModel extends ProductSectionsModel {
  const factory _ProductSectionsModel(
      {required final int id,
      required final String name,
      required final String description,
      required final List<ProductModel> products}) = _$_ProductSectionsModel;
  const _ProductSectionsModel._() : super._();

  factory _ProductSectionsModel.fromJson(Map<String, dynamic> json) =
      _$_ProductSectionsModel.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get description;
  @override
  List<ProductModel> get products;
  @override
  @JsonKey(ignore: true)
  _$$_ProductSectionsModelCopyWith<_$_ProductSectionsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
