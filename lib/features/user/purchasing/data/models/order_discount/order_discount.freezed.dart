// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_discount.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderDiscount _$OrderDiscountFromJson(Map<String, dynamic> json) {
  return _OrderDiscount.fromJson(json);
}

/// @nodoc
mixin _$OrderDiscount {
  int get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get discount => throw _privateConstructorUsedError;
  @JsonKey(name: "type_label")
  String get typeLabel => throw _privateConstructorUsedError;
  @JsonKey(name: "type_description")
  String get typeDescription => throw _privateConstructorUsedError;
  @JsonKey(name: "discount_value")
  String get discountValue => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderDiscountCopyWith<OrderDiscount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDiscountCopyWith<$Res> {
  factory $OrderDiscountCopyWith(
          OrderDiscount value, $Res Function(OrderDiscount) then) =
      _$OrderDiscountCopyWithImpl<$Res, OrderDiscount>;
  @useResult
  $Res call(
      {int id,
      String type,
      String discount,
      @JsonKey(name: "type_label") String typeLabel,
      @JsonKey(name: "type_description") String typeDescription,
      @JsonKey(name: "discount_value") String discountValue});
}

/// @nodoc
class _$OrderDiscountCopyWithImpl<$Res, $Val extends OrderDiscount>
    implements $OrderDiscountCopyWith<$Res> {
  _$OrderDiscountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? discount = null,
    Object? typeLabel = null,
    Object? typeDescription = null,
    Object? discountValue = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String,
      typeLabel: null == typeLabel
          ? _value.typeLabel
          : typeLabel // ignore: cast_nullable_to_non_nullable
              as String,
      typeDescription: null == typeDescription
          ? _value.typeDescription
          : typeDescription // ignore: cast_nullable_to_non_nullable
              as String,
      discountValue: null == discountValue
          ? _value.discountValue
          : discountValue // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrderDiscountCopyWith<$Res>
    implements $OrderDiscountCopyWith<$Res> {
  factory _$$_OrderDiscountCopyWith(
          _$_OrderDiscount value, $Res Function(_$_OrderDiscount) then) =
      __$$_OrderDiscountCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String type,
      String discount,
      @JsonKey(name: "type_label") String typeLabel,
      @JsonKey(name: "type_description") String typeDescription,
      @JsonKey(name: "discount_value") String discountValue});
}

/// @nodoc
class __$$_OrderDiscountCopyWithImpl<$Res>
    extends _$OrderDiscountCopyWithImpl<$Res, _$_OrderDiscount>
    implements _$$_OrderDiscountCopyWith<$Res> {
  __$$_OrderDiscountCopyWithImpl(
      _$_OrderDiscount _value, $Res Function(_$_OrderDiscount) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? discount = null,
    Object? typeLabel = null,
    Object? typeDescription = null,
    Object? discountValue = null,
  }) {
    return _then(_$_OrderDiscount(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String,
      typeLabel: null == typeLabel
          ? _value.typeLabel
          : typeLabel // ignore: cast_nullable_to_non_nullable
              as String,
      typeDescription: null == typeDescription
          ? _value.typeDescription
          : typeDescription // ignore: cast_nullable_to_non_nullable
              as String,
      discountValue: null == discountValue
          ? _value.discountValue
          : discountValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_OrderDiscount extends _OrderDiscount {
  _$_OrderDiscount(
      {required this.id,
      required this.type,
      required this.discount,
      @JsonKey(name: "type_label") required this.typeLabel,
      @JsonKey(name: "type_description") required this.typeDescription,
      @JsonKey(name: "discount_value") required this.discountValue})
      : super._();

  factory _$_OrderDiscount.fromJson(Map<String, dynamic> json) =>
      _$$_OrderDiscountFromJson(json);

  @override
  final int id;
  @override
  final String type;
  @override
  final String discount;
  @override
  @JsonKey(name: "type_label")
  final String typeLabel;
  @override
  @JsonKey(name: "type_description")
  final String typeDescription;
  @override
  @JsonKey(name: "discount_value")
  final String discountValue;

  @override
  String toString() {
    return 'OrderDiscount(id: $id, type: $type, discount: $discount, typeLabel: $typeLabel, typeDescription: $typeDescription, discountValue: $discountValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderDiscount &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.typeLabel, typeLabel) ||
                other.typeLabel == typeLabel) &&
            (identical(other.typeDescription, typeDescription) ||
                other.typeDescription == typeDescription) &&
            (identical(other.discountValue, discountValue) ||
                other.discountValue == discountValue));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, type, discount, typeLabel,
      typeDescription, discountValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderDiscountCopyWith<_$_OrderDiscount> get copyWith =>
      __$$_OrderDiscountCopyWithImpl<_$_OrderDiscount>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderDiscountToJson(
      this,
    );
  }
}

abstract class _OrderDiscount extends OrderDiscount {
  factory _OrderDiscount(
      {required final int id,
      required final String type,
      required final String discount,
      @JsonKey(name: "type_label") required final String typeLabel,
      @JsonKey(name: "type_description") required final String typeDescription,
      @JsonKey(name: "discount_value")
      required final String discountValue}) = _$_OrderDiscount;
  _OrderDiscount._() : super._();

  factory _OrderDiscount.fromJson(Map<String, dynamic> json) =
      _$_OrderDiscount.fromJson;

  @override
  int get id;
  @override
  String get type;
  @override
  String get discount;
  @override
  @JsonKey(name: "type_label")
  String get typeLabel;
  @override
  @JsonKey(name: "type_description")
  String get typeDescription;
  @override
  @JsonKey(name: "discount_value")
  String get discountValue;
  @override
  @JsonKey(ignore: true)
  _$$_OrderDiscountCopyWith<_$_OrderDiscount> get copyWith =>
      throw _privateConstructorUsedError;
}
