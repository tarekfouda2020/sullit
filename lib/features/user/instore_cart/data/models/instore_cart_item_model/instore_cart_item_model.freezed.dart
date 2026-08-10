// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'instore_cart_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InstoreCartItemModel _$InstoreCartItemModelFromJson(Map<String, dynamic> json) {
  return _InstoreCartItemModel.fromJson(json);
}

/// @nodoc
mixin _$InstoreCartItemModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'variant_id')
  int get variantId => throw _privateConstructorUsedError;
  int get qnt => throw _privateConstructorUsedError;
  num get price => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_fresh')
  bool get isFresh => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_stock')
  int? get currentStock => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InstoreCartItemModelCopyWith<InstoreCartItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstoreCartItemModelCopyWith<$Res> {
  factory $InstoreCartItemModelCopyWith(InstoreCartItemModel value,
          $Res Function(InstoreCartItemModel) then) =
      _$InstoreCartItemModelCopyWithImpl<$Res, InstoreCartItemModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'variant_id') int variantId,
      int qnt,
      num price,
      String name,
      String image,
      @JsonKey(name: 'is_fresh') bool isFresh,
      @JsonKey(name: 'current_stock') int? currentStock});
}

/// @nodoc
class _$InstoreCartItemModelCopyWithImpl<$Res,
        $Val extends InstoreCartItemModel>
    implements $InstoreCartItemModelCopyWith<$Res> {
  _$InstoreCartItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? variantId = null,
    Object? qnt = null,
    Object? price = null,
    Object? name = null,
    Object? image = null,
    Object? isFresh = null,
    Object? currentStock = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      variantId: null == variantId
          ? _value.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as int,
      qnt: null == qnt
          ? _value.qnt
          : qnt // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      isFresh: null == isFresh
          ? _value.isFresh
          : isFresh // ignore: cast_nullable_to_non_nullable
              as bool,
      currentStock: freezed == currentStock
          ? _value.currentStock
          : currentStock // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InstoreCartItemModelCopyWith<$Res>
    implements $InstoreCartItemModelCopyWith<$Res> {
  factory _$$_InstoreCartItemModelCopyWith(_$_InstoreCartItemModel value,
          $Res Function(_$_InstoreCartItemModel) then) =
      __$$_InstoreCartItemModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'variant_id') int variantId,
      int qnt,
      num price,
      String name,
      String image,
      @JsonKey(name: 'is_fresh') bool isFresh,
      @JsonKey(name: 'current_stock') int? currentStock});
}

/// @nodoc
class __$$_InstoreCartItemModelCopyWithImpl<$Res>
    extends _$InstoreCartItemModelCopyWithImpl<$Res, _$_InstoreCartItemModel>
    implements _$$_InstoreCartItemModelCopyWith<$Res> {
  __$$_InstoreCartItemModelCopyWithImpl(_$_InstoreCartItemModel _value,
      $Res Function(_$_InstoreCartItemModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? variantId = null,
    Object? qnt = null,
    Object? price = null,
    Object? name = null,
    Object? image = null,
    Object? isFresh = null,
    Object? currentStock = freezed,
  }) {
    return _then(_$_InstoreCartItemModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      variantId: null == variantId
          ? _value.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as int,
      qnt: null == qnt
          ? _value.qnt
          : qnt // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      isFresh: null == isFresh
          ? _value.isFresh
          : isFresh // ignore: cast_nullable_to_non_nullable
              as bool,
      currentStock: freezed == currentStock
          ? _value.currentStock
          : currentStock // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InstoreCartItemModel extends _InstoreCartItemModel {
  const _$_InstoreCartItemModel(
      {required this.id,
      @JsonKey(name: 'variant_id') required this.variantId,
      required this.qnt,
      required this.price,
      required this.name,
      required this.image,
      @JsonKey(name: 'is_fresh') this.isFresh = false,
      @JsonKey(name: 'current_stock') this.currentStock})
      : super._();

  factory _$_InstoreCartItemModel.fromJson(Map<String, dynamic> json) =>
      _$$_InstoreCartItemModelFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'variant_id')
  final int variantId;
  @override
  final int qnt;
  @override
  final num price;
  @override
  final String name;
  @override
  final String image;
  @override
  @JsonKey(name: 'is_fresh')
  final bool isFresh;
  @override
  @JsonKey(name: 'current_stock')
  final int? currentStock;

  @override
  String toString() {
    return 'InstoreCartItemModel(id: $id, variantId: $variantId, qnt: $qnt, price: $price, name: $name, image: $image, isFresh: $isFresh, currentStock: $currentStock)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InstoreCartItemModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.variantId, variantId) ||
                other.variantId == variantId) &&
            (identical(other.qnt, qnt) || other.qnt == qnt) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.isFresh, isFresh) || other.isFresh == isFresh) &&
            (identical(other.currentStock, currentStock) ||
                other.currentStock == currentStock));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, variantId, qnt, price, name,
      image, isFresh, currentStock);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InstoreCartItemModelCopyWith<_$_InstoreCartItemModel> get copyWith =>
      __$$_InstoreCartItemModelCopyWithImpl<_$_InstoreCartItemModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InstoreCartItemModelToJson(
      this,
    );
  }
}

abstract class _InstoreCartItemModel extends InstoreCartItemModel {
  const factory _InstoreCartItemModel(
          {required final int id,
          @JsonKey(name: 'variant_id') required final int variantId,
          required final int qnt,
          required final num price,
          required final String name,
          required final String image,
          @JsonKey(name: 'is_fresh') final bool isFresh,
          @JsonKey(name: 'current_stock') final int? currentStock}) =
      _$_InstoreCartItemModel;
  const _InstoreCartItemModel._() : super._();

  factory _InstoreCartItemModel.fromJson(Map<String, dynamic> json) =
      _$_InstoreCartItemModel.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'variant_id')
  int get variantId;
  @override
  int get qnt;
  @override
  num get price;
  @override
  String get name;
  @override
  String get image;
  @override
  @JsonKey(name: 'is_fresh')
  bool get isFresh;
  @override
  @JsonKey(name: 'current_stock')
  int? get currentStock;
  @override
  @JsonKey(ignore: true)
  _$$_InstoreCartItemModelCopyWith<_$_InstoreCartItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}
