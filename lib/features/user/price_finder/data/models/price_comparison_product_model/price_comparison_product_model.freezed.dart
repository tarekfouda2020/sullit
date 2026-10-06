// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'price_comparison_product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PriceComparisonProductModel _$PriceComparisonProductModelFromJson(
    Map<String, dynamic> json) {
  return _PriceComparisonProductModel.fromJson(json);
}

/// @nodoc
mixin _$PriceComparisonProductModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumbnail_image')
  String get thumbnailImage => throw _privateConstructorUsedError;
  String get barcode => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_name')
  String get categoryName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PriceComparisonProductModelCopyWith<PriceComparisonProductModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceComparisonProductModelCopyWith<$Res> {
  factory $PriceComparisonProductModelCopyWith(
          PriceComparisonProductModel value,
          $Res Function(PriceComparisonProductModel) then) =
      _$PriceComparisonProductModelCopyWithImpl<$Res,
          PriceComparisonProductModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      String unit,
      @JsonKey(name: 'thumbnail_image') String thumbnailImage,
      String barcode,
      @JsonKey(name: 'category_name') String categoryName});
}

/// @nodoc
class _$PriceComparisonProductModelCopyWithImpl<$Res,
        $Val extends PriceComparisonProductModel>
    implements $PriceComparisonProductModelCopyWith<$Res> {
  _$PriceComparisonProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? unit = null,
    Object? thumbnailImage = null,
    Object? barcode = null,
    Object? categoryName = null,
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
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailImage: null == thumbnailImage
          ? _value.thumbnailImage
          : thumbnailImage // ignore: cast_nullable_to_non_nullable
              as String,
      barcode: null == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PriceComparisonProductModelCopyWith<$Res>
    implements $PriceComparisonProductModelCopyWith<$Res> {
  factory _$$_PriceComparisonProductModelCopyWith(
          _$_PriceComparisonProductModel value,
          $Res Function(_$_PriceComparisonProductModel) then) =
      __$$_PriceComparisonProductModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String unit,
      @JsonKey(name: 'thumbnail_image') String thumbnailImage,
      String barcode,
      @JsonKey(name: 'category_name') String categoryName});
}

/// @nodoc
class __$$_PriceComparisonProductModelCopyWithImpl<$Res>
    extends _$PriceComparisonProductModelCopyWithImpl<$Res,
        _$_PriceComparisonProductModel>
    implements _$$_PriceComparisonProductModelCopyWith<$Res> {
  __$$_PriceComparisonProductModelCopyWithImpl(
      _$_PriceComparisonProductModel _value,
      $Res Function(_$_PriceComparisonProductModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? unit = null,
    Object? thumbnailImage = null,
    Object? barcode = null,
    Object? categoryName = null,
  }) {
    return _then(_$_PriceComparisonProductModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailImage: null == thumbnailImage
          ? _value.thumbnailImage
          : thumbnailImage // ignore: cast_nullable_to_non_nullable
              as String,
      barcode: null == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PriceComparisonProductModel extends _PriceComparisonProductModel {
  const _$_PriceComparisonProductModel(
      {required this.id,
      required this.name,
      required this.unit,
      @JsonKey(name: 'thumbnail_image') required this.thumbnailImage,
      required this.barcode,
      @JsonKey(name: 'category_name') required this.categoryName})
      : super._();

  factory _$_PriceComparisonProductModel.fromJson(Map<String, dynamic> json) =>
      _$$_PriceComparisonProductModelFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String unit;
  @override
  @JsonKey(name: 'thumbnail_image')
  final String thumbnailImage;
  @override
  final String barcode;
  @override
  @JsonKey(name: 'category_name')
  final String categoryName;

  @override
  String toString() {
    return 'PriceComparisonProductModel(id: $id, name: $name, unit: $unit, thumbnailImage: $thumbnailImage, barcode: $barcode, categoryName: $categoryName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PriceComparisonProductModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.thumbnailImage, thumbnailImage) ||
                other.thumbnailImage == thumbnailImage) &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, unit, thumbnailImage, barcode, categoryName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PriceComparisonProductModelCopyWith<_$_PriceComparisonProductModel>
      get copyWith => __$$_PriceComparisonProductModelCopyWithImpl<
          _$_PriceComparisonProductModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PriceComparisonProductModelToJson(
      this,
    );
  }
}

abstract class _PriceComparisonProductModel
    extends PriceComparisonProductModel {
  const factory _PriceComparisonProductModel(
      {required final int id,
      required final String name,
      required final String unit,
      @JsonKey(name: 'thumbnail_image') required final String thumbnailImage,
      required final String barcode,
      @JsonKey(name: 'category_name')
      required final String categoryName}) = _$_PriceComparisonProductModel;
  const _PriceComparisonProductModel._() : super._();

  factory _PriceComparisonProductModel.fromJson(Map<String, dynamic> json) =
      _$_PriceComparisonProductModel.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get unit;
  @override
  @JsonKey(name: 'thumbnail_image')
  String get thumbnailImage;
  @override
  String get barcode;
  @override
  @JsonKey(name: 'category_name')
  String get categoryName;
  @override
  @JsonKey(ignore: true)
  _$$_PriceComparisonProductModelCopyWith<_$_PriceComparisonProductModel>
      get copyWith => throw _privateConstructorUsedError;
}
