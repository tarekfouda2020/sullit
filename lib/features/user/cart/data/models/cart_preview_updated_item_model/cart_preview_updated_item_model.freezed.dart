// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_preview_updated_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CartPreviewUpdatedItemModel _$CartPreviewUpdatedItemModelFromJson(
    Map<String, dynamic> json) {
  return _CartPreviewUpdatedItemModel.fromJson(json);
}

/// @nodoc
mixin _$CartPreviewUpdatedItemModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "product_id")
  int get productId => throw _privateConstructorUsedError;
  @JsonKey(name: "product_name")
  String get productName => throw _privateConstructorUsedError;
  @JsonKey(name: "old_quantity")
  int get oldQuantity => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartPreviewUpdatedItemModelCopyWith<CartPreviewUpdatedItemModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartPreviewUpdatedItemModelCopyWith<$Res> {
  factory $CartPreviewUpdatedItemModelCopyWith(
          CartPreviewUpdatedItemModel value,
          $Res Function(CartPreviewUpdatedItemModel) then) =
      _$CartPreviewUpdatedItemModelCopyWithImpl<$Res,
          CartPreviewUpdatedItemModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "product_id") int productId,
      @JsonKey(name: "product_name") String productName,
      @JsonKey(name: "old_quantity") int oldQuantity,
      int quantity});
}

/// @nodoc
class _$CartPreviewUpdatedItemModelCopyWithImpl<$Res,
        $Val extends CartPreviewUpdatedItemModel>
    implements $CartPreviewUpdatedItemModelCopyWith<$Res> {
  _$CartPreviewUpdatedItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productId = null,
    Object? productName = null,
    Object? oldQuantity = null,
    Object? quantity = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      oldQuantity: null == oldQuantity
          ? _value.oldQuantity
          : oldQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CartPreviewUpdatedItemModelCopyWith<$Res>
    implements $CartPreviewUpdatedItemModelCopyWith<$Res> {
  factory _$$_CartPreviewUpdatedItemModelCopyWith(
          _$_CartPreviewUpdatedItemModel value,
          $Res Function(_$_CartPreviewUpdatedItemModel) then) =
      __$$_CartPreviewUpdatedItemModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "product_id") int productId,
      @JsonKey(name: "product_name") String productName,
      @JsonKey(name: "old_quantity") int oldQuantity,
      int quantity});
}

/// @nodoc
class __$$_CartPreviewUpdatedItemModelCopyWithImpl<$Res>
    extends _$CartPreviewUpdatedItemModelCopyWithImpl<$Res,
        _$_CartPreviewUpdatedItemModel>
    implements _$$_CartPreviewUpdatedItemModelCopyWith<$Res> {
  __$$_CartPreviewUpdatedItemModelCopyWithImpl(
      _$_CartPreviewUpdatedItemModel _value,
      $Res Function(_$_CartPreviewUpdatedItemModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productId = null,
    Object? productName = null,
    Object? oldQuantity = null,
    Object? quantity = null,
  }) {
    return _then(_$_CartPreviewUpdatedItemModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      oldQuantity: null == oldQuantity
          ? _value.oldQuantity
          : oldQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_CartPreviewUpdatedItemModel extends _CartPreviewUpdatedItemModel {
  const _$_CartPreviewUpdatedItemModel(
      {required this.id,
      @JsonKey(name: "product_id") required this.productId,
      @JsonKey(name: "product_name") required this.productName,
      @JsonKey(name: "old_quantity") required this.oldQuantity,
      required this.quantity})
      : super._();

  factory _$_CartPreviewUpdatedItemModel.fromJson(Map<String, dynamic> json) =>
      _$$_CartPreviewUpdatedItemModelFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: "product_id")
  final int productId;
  @override
  @JsonKey(name: "product_name")
  final String productName;
  @override
  @JsonKey(name: "old_quantity")
  final int oldQuantity;
  @override
  final int quantity;

  @override
  String toString() {
    return 'CartPreviewUpdatedItemModel(id: $id, productId: $productId, productName: $productName, oldQuantity: $oldQuantity, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartPreviewUpdatedItemModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.oldQuantity, oldQuantity) ||
                other.oldQuantity == oldQuantity) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, productId, productName, oldQuantity, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartPreviewUpdatedItemModelCopyWith<_$_CartPreviewUpdatedItemModel>
      get copyWith => __$$_CartPreviewUpdatedItemModelCopyWithImpl<
          _$_CartPreviewUpdatedItemModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartPreviewUpdatedItemModelToJson(
      this,
    );
  }
}

abstract class _CartPreviewUpdatedItemModel
    extends CartPreviewUpdatedItemModel {
  const factory _CartPreviewUpdatedItemModel(
      {required final int id,
      @JsonKey(name: "product_id") required final int productId,
      @JsonKey(name: "product_name") required final String productName,
      @JsonKey(name: "old_quantity") required final int oldQuantity,
      required final int quantity}) = _$_CartPreviewUpdatedItemModel;
  const _CartPreviewUpdatedItemModel._() : super._();

  factory _CartPreviewUpdatedItemModel.fromJson(Map<String, dynamic> json) =
      _$_CartPreviewUpdatedItemModel.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: "product_id")
  int get productId;
  @override
  @JsonKey(name: "product_name")
  String get productName;
  @override
  @JsonKey(name: "old_quantity")
  int get oldQuantity;
  @override
  int get quantity;
  @override
  @JsonKey(ignore: true)
  _$$_CartPreviewUpdatedItemModelCopyWith<_$_CartPreviewUpdatedItemModel>
      get copyWith => throw _privateConstructorUsedError;
}
