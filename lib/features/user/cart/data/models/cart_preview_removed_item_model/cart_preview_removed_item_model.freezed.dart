// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_preview_removed_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CartPreviewRemovedItemModel _$CartPreviewRemovedItemModelFromJson(
    Map<String, dynamic> json) {
  return _CartPreviewRemovedItemModel.fromJson(json);
}

/// @nodoc
mixin _$CartPreviewRemovedItemModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "product_id")
  int get productId => throw _privateConstructorUsedError;
  @JsonKey(name: "product_name")
  String get productName => throw _privateConstructorUsedError;
  String get reason => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartPreviewRemovedItemModelCopyWith<CartPreviewRemovedItemModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartPreviewRemovedItemModelCopyWith<$Res> {
  factory $CartPreviewRemovedItemModelCopyWith(
          CartPreviewRemovedItemModel value,
          $Res Function(CartPreviewRemovedItemModel) then) =
      _$CartPreviewRemovedItemModelCopyWithImpl<$Res,
          CartPreviewRemovedItemModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "product_id") int productId,
      @JsonKey(name: "product_name") String productName,
      String reason});
}

/// @nodoc
class _$CartPreviewRemovedItemModelCopyWithImpl<$Res,
        $Val extends CartPreviewRemovedItemModel>
    implements $CartPreviewRemovedItemModelCopyWith<$Res> {
  _$CartPreviewRemovedItemModelCopyWithImpl(this._value, this._then);

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
    Object? reason = null,
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
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CartPreviewRemovedItemModelCopyWith<$Res>
    implements $CartPreviewRemovedItemModelCopyWith<$Res> {
  factory _$$_CartPreviewRemovedItemModelCopyWith(
          _$_CartPreviewRemovedItemModel value,
          $Res Function(_$_CartPreviewRemovedItemModel) then) =
      __$$_CartPreviewRemovedItemModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "product_id") int productId,
      @JsonKey(name: "product_name") String productName,
      String reason});
}

/// @nodoc
class __$$_CartPreviewRemovedItemModelCopyWithImpl<$Res>
    extends _$CartPreviewRemovedItemModelCopyWithImpl<$Res,
        _$_CartPreviewRemovedItemModel>
    implements _$$_CartPreviewRemovedItemModelCopyWith<$Res> {
  __$$_CartPreviewRemovedItemModelCopyWithImpl(
      _$_CartPreviewRemovedItemModel _value,
      $Res Function(_$_CartPreviewRemovedItemModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productId = null,
    Object? productName = null,
    Object? reason = null,
  }) {
    return _then(_$_CartPreviewRemovedItemModel(
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
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_CartPreviewRemovedItemModel extends _CartPreviewRemovedItemModel {
  const _$_CartPreviewRemovedItemModel(
      {required this.id,
      @JsonKey(name: "product_id") required this.productId,
      @JsonKey(name: "product_name") required this.productName,
      required this.reason})
      : super._();

  factory _$_CartPreviewRemovedItemModel.fromJson(Map<String, dynamic> json) =>
      _$$_CartPreviewRemovedItemModelFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: "product_id")
  final int productId;
  @override
  @JsonKey(name: "product_name")
  final String productName;
  @override
  final String reason;

  @override
  String toString() {
    return 'CartPreviewRemovedItemModel(id: $id, productId: $productId, productName: $productName, reason: $reason)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartPreviewRemovedItemModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, productId, productName, reason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartPreviewRemovedItemModelCopyWith<_$_CartPreviewRemovedItemModel>
      get copyWith => __$$_CartPreviewRemovedItemModelCopyWithImpl<
          _$_CartPreviewRemovedItemModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartPreviewRemovedItemModelToJson(
      this,
    );
  }
}

abstract class _CartPreviewRemovedItemModel
    extends CartPreviewRemovedItemModel {
  const factory _CartPreviewRemovedItemModel(
      {required final int id,
      @JsonKey(name: "product_id") required final int productId,
      @JsonKey(name: "product_name") required final String productName,
      required final String reason}) = _$_CartPreviewRemovedItemModel;
  const _CartPreviewRemovedItemModel._() : super._();

  factory _CartPreviewRemovedItemModel.fromJson(Map<String, dynamic> json) =
      _$_CartPreviewRemovedItemModel.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: "product_id")
  int get productId;
  @override
  @JsonKey(name: "product_name")
  String get productName;
  @override
  String get reason;
  @override
  @JsonKey(ignore: true)
  _$$_CartPreviewRemovedItemModelCopyWith<_$_CartPreviewRemovedItemModel>
      get copyWith => throw _privateConstructorUsedError;
}
