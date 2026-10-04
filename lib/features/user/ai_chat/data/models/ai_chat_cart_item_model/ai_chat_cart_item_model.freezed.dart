// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ai_chat_cart_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AiChatCartItemModel _$AiChatCartItemModelFromJson(Map<String, dynamic> json) {
  return _AiChatCartItemModel.fromJson(json);
}

/// @nodoc
mixin _$AiChatCartItemModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_id')
  int? get productId => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AiChatCartItemModelCopyWith<AiChatCartItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AiChatCartItemModelCopyWith<$Res> {
  factory $AiChatCartItemModelCopyWith(
          AiChatCartItemModel value, $Res Function(AiChatCartItemModel) then) =
      _$AiChatCartItemModelCopyWithImpl<$Res, AiChatCartItemModel>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'product_id') int? productId,
      int? quantity,
      String? name});
}

/// @nodoc
class _$AiChatCartItemModelCopyWithImpl<$Res, $Val extends AiChatCartItemModel>
    implements $AiChatCartItemModelCopyWith<$Res> {
  _$AiChatCartItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? productId = freezed,
    Object? quantity = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AiChatCartItemModelCopyWith<$Res>
    implements $AiChatCartItemModelCopyWith<$Res> {
  factory _$$_AiChatCartItemModelCopyWith(_$_AiChatCartItemModel value,
          $Res Function(_$_AiChatCartItemModel) then) =
      __$$_AiChatCartItemModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'product_id') int? productId,
      int? quantity,
      String? name});
}

/// @nodoc
class __$$_AiChatCartItemModelCopyWithImpl<$Res>
    extends _$AiChatCartItemModelCopyWithImpl<$Res, _$_AiChatCartItemModel>
    implements _$$_AiChatCartItemModelCopyWith<$Res> {
  __$$_AiChatCartItemModelCopyWithImpl(_$_AiChatCartItemModel _value,
      $Res Function(_$_AiChatCartItemModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? productId = freezed,
    Object? quantity = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_AiChatCartItemModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_AiChatCartItemModel extends _AiChatCartItemModel {
  const _$_AiChatCartItemModel(
      {this.id,
      @JsonKey(name: 'product_id') this.productId,
      this.quantity,
      this.name})
      : super._();

  factory _$_AiChatCartItemModel.fromJson(Map<String, dynamic> json) =>
      _$$_AiChatCartItemModelFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'product_id')
  final int? productId;
  @override
  final int? quantity;
  @override
  final String? name;

  @override
  String toString() {
    return 'AiChatCartItemModel(id: $id, productId: $productId, quantity: $quantity, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AiChatCartItemModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, productId, quantity, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AiChatCartItemModelCopyWith<_$_AiChatCartItemModel> get copyWith =>
      __$$_AiChatCartItemModelCopyWithImpl<_$_AiChatCartItemModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AiChatCartItemModelToJson(
      this,
    );
  }
}

abstract class _AiChatCartItemModel extends AiChatCartItemModel {
  const factory _AiChatCartItemModel(
      {final int? id,
      @JsonKey(name: 'product_id') final int? productId,
      final int? quantity,
      final String? name}) = _$_AiChatCartItemModel;
  const _AiChatCartItemModel._() : super._();

  factory _AiChatCartItemModel.fromJson(Map<String, dynamic> json) =
      _$_AiChatCartItemModel.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'product_id')
  int? get productId;
  @override
  int? get quantity;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_AiChatCartItemModelCopyWith<_$_AiChatCartItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}
