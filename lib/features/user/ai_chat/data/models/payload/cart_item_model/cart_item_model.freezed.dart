// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CartItemModel _$CartItemModelFromJson(Map<String, dynamic> json) {
  return _CartItemModel.fromJson(json);
}

/// @nodoc
mixin _$CartItemModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumbnail_image')
  String? get thumbnailImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_id')
  int? get productId => throw _privateConstructorUsedError;
  String? get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'currency_symbol')
  String? get currencySymbol => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartItemModelCopyWith<CartItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartItemModelCopyWith<$Res> {
  factory $CartItemModelCopyWith(
          CartItemModel value, $Res Function(CartItemModel) then) =
      _$CartItemModelCopyWithImpl<$Res, CartItemModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      int? quantity,
      String? price,
      @JsonKey(name: 'thumbnail_image') String? thumbnailImage,
      @JsonKey(name: 'product_id') int? productId,
      String? total,
      @JsonKey(name: 'currency_symbol') String? currencySymbol});
}

/// @nodoc
class _$CartItemModelCopyWithImpl<$Res, $Val extends CartItemModel>
    implements $CartItemModelCopyWith<$Res> {
  _$CartItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? quantity = freezed,
    Object? price = freezed,
    Object? thumbnailImage = freezed,
    Object? productId = freezed,
    Object? total = freezed,
    Object? currencySymbol = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailImage: freezed == thumbnailImage
          ? _value.thumbnailImage
          : thumbnailImage // ignore: cast_nullable_to_non_nullable
              as String?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String?,
      currencySymbol: freezed == currencySymbol
          ? _value.currencySymbol
          : currencySymbol // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CartItemModelCopyWith<$Res>
    implements $CartItemModelCopyWith<$Res> {
  factory _$$_CartItemModelCopyWith(
          _$_CartItemModel value, $Res Function(_$_CartItemModel) then) =
      __$$_CartItemModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      int? quantity,
      String? price,
      @JsonKey(name: 'thumbnail_image') String? thumbnailImage,
      @JsonKey(name: 'product_id') int? productId,
      String? total,
      @JsonKey(name: 'currency_symbol') String? currencySymbol});
}

/// @nodoc
class __$$_CartItemModelCopyWithImpl<$Res>
    extends _$CartItemModelCopyWithImpl<$Res, _$_CartItemModel>
    implements _$$_CartItemModelCopyWith<$Res> {
  __$$_CartItemModelCopyWithImpl(
      _$_CartItemModel _value, $Res Function(_$_CartItemModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? quantity = freezed,
    Object? price = freezed,
    Object? thumbnailImage = freezed,
    Object? productId = freezed,
    Object? total = freezed,
    Object? currencySymbol = freezed,
  }) {
    return _then(_$_CartItemModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailImage: freezed == thumbnailImage
          ? _value.thumbnailImage
          : thumbnailImage // ignore: cast_nullable_to_non_nullable
              as String?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String?,
      currencySymbol: freezed == currencySymbol
          ? _value.currencySymbol
          : currencySymbol // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_CartItemModel extends _CartItemModel {
  const _$_CartItemModel(
      {this.id,
      this.name,
      this.quantity,
      this.price,
      @JsonKey(name: 'thumbnail_image') this.thumbnailImage,
      @JsonKey(name: 'product_id') this.productId,
      this.total,
      @JsonKey(name: 'currency_symbol') this.currencySymbol})
      : super._();

  factory _$_CartItemModel.fromJson(Map<String, dynamic> json) =>
      _$$_CartItemModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final int? quantity;
  @override
  final String? price;
  @override
  @JsonKey(name: 'thumbnail_image')
  final String? thumbnailImage;
  @override
  @JsonKey(name: 'product_id')
  final int? productId;
  @override
  final String? total;
  @override
  @JsonKey(name: 'currency_symbol')
  final String? currencySymbol;

  @override
  String toString() {
    return 'CartItemModel(id: $id, name: $name, quantity: $quantity, price: $price, thumbnailImage: $thumbnailImage, productId: $productId, total: $total, currencySymbol: $currencySymbol)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartItemModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.thumbnailImage, thumbnailImage) ||
                other.thumbnailImage == thumbnailImage) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.currencySymbol, currencySymbol) ||
                other.currencySymbol == currencySymbol));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, quantity, price,
      thumbnailImage, productId, total, currencySymbol);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartItemModelCopyWith<_$_CartItemModel> get copyWith =>
      __$$_CartItemModelCopyWithImpl<_$_CartItemModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartItemModelToJson(
      this,
    );
  }
}

abstract class _CartItemModel extends CartItemModel {
  const factory _CartItemModel(
          {final int? id,
          final String? name,
          final int? quantity,
          final String? price,
          @JsonKey(name: 'thumbnail_image') final String? thumbnailImage,
          @JsonKey(name: 'product_id') final int? productId,
          final String? total,
          @JsonKey(name: 'currency_symbol') final String? currencySymbol}) =
      _$_CartItemModel;
  const _CartItemModel._() : super._();

  factory _CartItemModel.fromJson(Map<String, dynamic> json) =
      _$_CartItemModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  int? get quantity;
  @override
  String? get price;
  @override
  @JsonKey(name: 'thumbnail_image')
  String? get thumbnailImage;
  @override
  @JsonKey(name: 'product_id')
  int? get productId;
  @override
  String? get total;
  @override
  @JsonKey(name: 'currency_symbol')
  String? get currencySymbol;
  @override
  @JsonKey(ignore: true)
  _$$_CartItemModelCopyWith<_$_CartItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}
