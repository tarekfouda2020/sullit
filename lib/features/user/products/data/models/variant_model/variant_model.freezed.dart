// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'variant_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VariantModel _$VariantModelFromJson(Map<String, dynamic> json) {
  return _VariantModel.fromJson(json);
}

/// @nodoc
mixin _$VariantModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get sku => throw _privateConstructorUsedError;
  @JsonKey(name: "stroked_price")
  String get strokedPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "calculable_price")
  String get calculablePrice => throw _privateConstructorUsedError;
  @JsonKey(name: "main_price")
  String get mainPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "current_stock")
  int get currentStock => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_symbol")
  String get currencySymbol => throw _privateConstructorUsedError;
  @JsonKey(name: "has_discount")
  bool? get hasDiscount => throw _privateConstructorUsedError;
  @JsonKey(name: "original_price")
  String? get originalPrice => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get options => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VariantModelCopyWith<VariantModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariantModelCopyWith<$Res> {
  factory $VariantModelCopyWith(
          VariantModel value, $Res Function(VariantModel) then) =
      _$VariantModelCopyWithImpl<$Res, VariantModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      String sku,
      @JsonKey(name: "stroked_price") String strokedPrice,
      @JsonKey(name: "calculable_price") String calculablePrice,
      @JsonKey(name: "main_price") String mainPrice,
      @JsonKey(name: "current_stock") int currentStock,
      @JsonKey(name: "currency_symbol") String currencySymbol,
      @JsonKey(name: "has_discount") bool? hasDiscount,
      @JsonKey(name: "original_price") String? originalPrice,
      String image,
      String options});
}

/// @nodoc
class _$VariantModelCopyWithImpl<$Res, $Val extends VariantModel>
    implements $VariantModelCopyWith<$Res> {
  _$VariantModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? sku = null,
    Object? strokedPrice = null,
    Object? calculablePrice = null,
    Object? mainPrice = null,
    Object? currentStock = null,
    Object? currencySymbol = null,
    Object? hasDiscount = freezed,
    Object? originalPrice = freezed,
    Object? image = null,
    Object? options = null,
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
      sku: null == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String,
      strokedPrice: null == strokedPrice
          ? _value.strokedPrice
          : strokedPrice // ignore: cast_nullable_to_non_nullable
              as String,
      calculablePrice: null == calculablePrice
          ? _value.calculablePrice
          : calculablePrice // ignore: cast_nullable_to_non_nullable
              as String,
      mainPrice: null == mainPrice
          ? _value.mainPrice
          : mainPrice // ignore: cast_nullable_to_non_nullable
              as String,
      currentStock: null == currentStock
          ? _value.currentStock
          : currentStock // ignore: cast_nullable_to_non_nullable
              as int,
      currencySymbol: null == currencySymbol
          ? _value.currencySymbol
          : currencySymbol // ignore: cast_nullable_to_non_nullable
              as String,
      hasDiscount: freezed == hasDiscount
          ? _value.hasDiscount
          : hasDiscount // ignore: cast_nullable_to_non_nullable
              as bool?,
      originalPrice: freezed == originalPrice
          ? _value.originalPrice
          : originalPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VariantModelCopyWith<$Res>
    implements $VariantModelCopyWith<$Res> {
  factory _$$_VariantModelCopyWith(
          _$_VariantModel value, $Res Function(_$_VariantModel) then) =
      __$$_VariantModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String sku,
      @JsonKey(name: "stroked_price") String strokedPrice,
      @JsonKey(name: "calculable_price") String calculablePrice,
      @JsonKey(name: "main_price") String mainPrice,
      @JsonKey(name: "current_stock") int currentStock,
      @JsonKey(name: "currency_symbol") String currencySymbol,
      @JsonKey(name: "has_discount") bool? hasDiscount,
      @JsonKey(name: "original_price") String? originalPrice,
      String image,
      String options});
}

/// @nodoc
class __$$_VariantModelCopyWithImpl<$Res>
    extends _$VariantModelCopyWithImpl<$Res, _$_VariantModel>
    implements _$$_VariantModelCopyWith<$Res> {
  __$$_VariantModelCopyWithImpl(
      _$_VariantModel _value, $Res Function(_$_VariantModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? sku = null,
    Object? strokedPrice = null,
    Object? calculablePrice = null,
    Object? mainPrice = null,
    Object? currentStock = null,
    Object? currencySymbol = null,
    Object? hasDiscount = freezed,
    Object? originalPrice = freezed,
    Object? image = null,
    Object? options = null,
  }) {
    return _then(_$_VariantModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      sku: null == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String,
      strokedPrice: null == strokedPrice
          ? _value.strokedPrice
          : strokedPrice // ignore: cast_nullable_to_non_nullable
              as String,
      calculablePrice: null == calculablePrice
          ? _value.calculablePrice
          : calculablePrice // ignore: cast_nullable_to_non_nullable
              as String,
      mainPrice: null == mainPrice
          ? _value.mainPrice
          : mainPrice // ignore: cast_nullable_to_non_nullable
              as String,
      currentStock: null == currentStock
          ? _value.currentStock
          : currentStock // ignore: cast_nullable_to_non_nullable
              as int,
      currencySymbol: null == currencySymbol
          ? _value.currencySymbol
          : currencySymbol // ignore: cast_nullable_to_non_nullable
              as String,
      hasDiscount: freezed == hasDiscount
          ? _value.hasDiscount
          : hasDiscount // ignore: cast_nullable_to_non_nullable
              as bool?,
      originalPrice: freezed == originalPrice
          ? _value.originalPrice
          : originalPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_VariantModel extends _VariantModel {
  const _$_VariantModel(
      {required this.id,
      required this.name,
      required this.sku,
      @JsonKey(name: "stroked_price") required this.strokedPrice,
      @JsonKey(name: "calculable_price") required this.calculablePrice,
      @JsonKey(name: "main_price") required this.mainPrice,
      @JsonKey(name: "current_stock") required this.currentStock,
      @JsonKey(name: "currency_symbol") required this.currencySymbol,
      @JsonKey(name: "has_discount") this.hasDiscount,
      @JsonKey(name: "original_price") this.originalPrice,
      required this.image,
      required this.options})
      : super._();

  factory _$_VariantModel.fromJson(Map<String, dynamic> json) =>
      _$$_VariantModelFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String sku;
  @override
  @JsonKey(name: "stroked_price")
  final String strokedPrice;
  @override
  @JsonKey(name: "calculable_price")
  final String calculablePrice;
  @override
  @JsonKey(name: "main_price")
  final String mainPrice;
  @override
  @JsonKey(name: "current_stock")
  final int currentStock;
  @override
  @JsonKey(name: "currency_symbol")
  final String currencySymbol;
  @override
  @JsonKey(name: "has_discount")
  final bool? hasDiscount;
  @override
  @JsonKey(name: "original_price")
  final String? originalPrice;
  @override
  final String image;
  @override
  final String options;

  @override
  String toString() {
    return 'VariantModel(id: $id, name: $name, sku: $sku, strokedPrice: $strokedPrice, calculablePrice: $calculablePrice, mainPrice: $mainPrice, currentStock: $currentStock, currencySymbol: $currencySymbol, hasDiscount: $hasDiscount, originalPrice: $originalPrice, image: $image, options: $options)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VariantModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.sku, sku) || other.sku == sku) &&
            (identical(other.strokedPrice, strokedPrice) ||
                other.strokedPrice == strokedPrice) &&
            (identical(other.calculablePrice, calculablePrice) ||
                other.calculablePrice == calculablePrice) &&
            (identical(other.mainPrice, mainPrice) ||
                other.mainPrice == mainPrice) &&
            (identical(other.currentStock, currentStock) ||
                other.currentStock == currentStock) &&
            (identical(other.currencySymbol, currencySymbol) ||
                other.currencySymbol == currencySymbol) &&
            (identical(other.hasDiscount, hasDiscount) ||
                other.hasDiscount == hasDiscount) &&
            (identical(other.originalPrice, originalPrice) ||
                other.originalPrice == originalPrice) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.options, options) || other.options == options));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      sku,
      strokedPrice,
      calculablePrice,
      mainPrice,
      currentStock,
      currencySymbol,
      hasDiscount,
      originalPrice,
      image,
      options);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VariantModelCopyWith<_$_VariantModel> get copyWith =>
      __$$_VariantModelCopyWithImpl<_$_VariantModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VariantModelToJson(
      this,
    );
  }
}

abstract class _VariantModel extends VariantModel {
  const factory _VariantModel(
      {required final int id,
      required final String name,
      required final String sku,
      @JsonKey(name: "stroked_price") required final String strokedPrice,
      @JsonKey(name: "calculable_price") required final String calculablePrice,
      @JsonKey(name: "main_price") required final String mainPrice,
      @JsonKey(name: "current_stock") required final int currentStock,
      @JsonKey(name: "currency_symbol") required final String currencySymbol,
      @JsonKey(name: "has_discount") final bool? hasDiscount,
      @JsonKey(name: "original_price") final String? originalPrice,
      required final String image,
      required final String options}) = _$_VariantModel;
  const _VariantModel._() : super._();

  factory _VariantModel.fromJson(Map<String, dynamic> json) =
      _$_VariantModel.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get sku;
  @override
  @JsonKey(name: "stroked_price")
  String get strokedPrice;
  @override
  @JsonKey(name: "calculable_price")
  String get calculablePrice;
  @override
  @JsonKey(name: "main_price")
  String get mainPrice;
  @override
  @JsonKey(name: "current_stock")
  int get currentStock;
  @override
  @JsonKey(name: "currency_symbol")
  String get currencySymbol;
  @override
  @JsonKey(name: "has_discount")
  bool? get hasDiscount;
  @override
  @JsonKey(name: "original_price")
  String? get originalPrice;
  @override
  String get image;
  @override
  String get options;
  @override
  @JsonKey(ignore: true)
  _$$_VariantModelCopyWith<_$_VariantModel> get copyWith =>
      throw _privateConstructorUsedError;
}
