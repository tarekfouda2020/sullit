// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sale_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SaleDetailsModel _$SaleDetailsModelFromJson(Map<String, dynamic> json) {
  return _SaleDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$SaleDetailsModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  String get banner => throw _privateConstructorUsedError;
  List<ProductCardModel> get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaleDetailsModelCopyWith<SaleDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaleDetailsModelCopyWith<$Res> {
  factory $SaleDetailsModelCopyWith(
          SaleDetailsModel value, $Res Function(SaleDetailsModel) then) =
      _$SaleDetailsModelCopyWithImpl<$Res, SaleDetailsModel>;
  @useResult
  $Res call(
      {int id,
      String title,
      DateTime date,
      String banner,
      List<ProductCardModel> products});
}

/// @nodoc
class _$SaleDetailsModelCopyWithImpl<$Res, $Val extends SaleDetailsModel>
    implements $SaleDetailsModelCopyWith<$Res> {
  _$SaleDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? date = null,
    Object? banner = null,
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      banner: null == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as String,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductCardModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SaleDetailsModelCopyWith<$Res>
    implements $SaleDetailsModelCopyWith<$Res> {
  factory _$$_SaleDetailsModelCopyWith(
          _$_SaleDetailsModel value, $Res Function(_$_SaleDetailsModel) then) =
      __$$_SaleDetailsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      DateTime date,
      String banner,
      List<ProductCardModel> products});
}

/// @nodoc
class __$$_SaleDetailsModelCopyWithImpl<$Res>
    extends _$SaleDetailsModelCopyWithImpl<$Res, _$_SaleDetailsModel>
    implements _$$_SaleDetailsModelCopyWith<$Res> {
  __$$_SaleDetailsModelCopyWithImpl(
      _$_SaleDetailsModel _value, $Res Function(_$_SaleDetailsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? date = null,
    Object? banner = null,
    Object? products = null,
  }) {
    return _then(_$_SaleDetailsModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      banner: null == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as String,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductCardModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_SaleDetailsModel extends _SaleDetailsModel {
  const _$_SaleDetailsModel(
      {required this.id,
      required this.title,
      required this.date,
      required this.banner,
      required final List<ProductCardModel> products})
      : _products = products,
        super._();

  factory _$_SaleDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$$_SaleDetailsModelFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final DateTime date;
  @override
  final String banner;
  final List<ProductCardModel> _products;
  @override
  List<ProductCardModel> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'SaleDetailsModel(id: $id, title: $title, date: $date, banner: $banner, products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SaleDetailsModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.banner, banner) || other.banner == banner) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, date, banner,
      const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SaleDetailsModelCopyWith<_$_SaleDetailsModel> get copyWith =>
      __$$_SaleDetailsModelCopyWithImpl<_$_SaleDetailsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SaleDetailsModelToJson(
      this,
    );
  }
}

abstract class _SaleDetailsModel extends SaleDetailsModel {
  const factory _SaleDetailsModel(
      {required final int id,
      required final String title,
      required final DateTime date,
      required final String banner,
      required final List<ProductCardModel> products}) = _$_SaleDetailsModel;
  const _SaleDetailsModel._() : super._();

  factory _SaleDetailsModel.fromJson(Map<String, dynamic> json) =
      _$_SaleDetailsModel.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  DateTime get date;
  @override
  String get banner;
  @override
  List<ProductCardModel> get products;
  @override
  @JsonKey(ignore: true)
  _$$_SaleDetailsModelCopyWith<_$_SaleDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
