// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'min_amount_seller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MinAmountSeller _$MinAmountSellerFromJson(Map<String, dynamic> json) {
  return _MinAmountSeller.fromJson(json);
}

/// @nodoc
mixin _$MinAmountSeller {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "minimum_order_amount")
  double get minOrderAmount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MinAmountSellerCopyWith<MinAmountSeller> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MinAmountSellerCopyWith<$Res> {
  factory $MinAmountSellerCopyWith(
          MinAmountSeller value, $Res Function(MinAmountSeller) then) =
      _$MinAmountSellerCopyWithImpl<$Res, MinAmountSeller>;
  @useResult
  $Res call(
      {int id,
      String name,
      String message,
      @JsonKey(name: "minimum_order_amount") double minOrderAmount});
}

/// @nodoc
class _$MinAmountSellerCopyWithImpl<$Res, $Val extends MinAmountSeller>
    implements $MinAmountSellerCopyWith<$Res> {
  _$MinAmountSellerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? message = null,
    Object? minOrderAmount = null,
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
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      minOrderAmount: null == minOrderAmount
          ? _value.minOrderAmount
          : minOrderAmount // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MinAmountSellerCopyWith<$Res>
    implements $MinAmountSellerCopyWith<$Res> {
  factory _$$_MinAmountSellerCopyWith(
          _$_MinAmountSeller value, $Res Function(_$_MinAmountSeller) then) =
      __$$_MinAmountSellerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String message,
      @JsonKey(name: "minimum_order_amount") double minOrderAmount});
}

/// @nodoc
class __$$_MinAmountSellerCopyWithImpl<$Res>
    extends _$MinAmountSellerCopyWithImpl<$Res, _$_MinAmountSeller>
    implements _$$_MinAmountSellerCopyWith<$Res> {
  __$$_MinAmountSellerCopyWithImpl(
      _$_MinAmountSeller _value, $Res Function(_$_MinAmountSeller) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? message = null,
    Object? minOrderAmount = null,
  }) {
    return _then(_$_MinAmountSeller(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      minOrderAmount: null == minOrderAmount
          ? _value.minOrderAmount
          : minOrderAmount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_MinAmountSeller extends _MinAmountSeller {
  _$_MinAmountSeller(
      {required this.id,
      required this.name,
      required this.message,
      @JsonKey(name: "minimum_order_amount") required this.minOrderAmount})
      : super._();

  factory _$_MinAmountSeller.fromJson(Map<String, dynamic> json) =>
      _$$_MinAmountSellerFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String message;
  @override
  @JsonKey(name: "minimum_order_amount")
  final double minOrderAmount;

  @override
  String toString() {
    return 'MinAmountSeller(id: $id, name: $name, message: $message, minOrderAmount: $minOrderAmount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MinAmountSeller &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.minOrderAmount, minOrderAmount) ||
                other.minOrderAmount == minOrderAmount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, message, minOrderAmount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MinAmountSellerCopyWith<_$_MinAmountSeller> get copyWith =>
      __$$_MinAmountSellerCopyWithImpl<_$_MinAmountSeller>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MinAmountSellerToJson(
      this,
    );
  }
}

abstract class _MinAmountSeller extends MinAmountSeller {
  factory _MinAmountSeller(
      {required final int id,
      required final String name,
      required final String message,
      @JsonKey(name: "minimum_order_amount")
      required final double minOrderAmount}) = _$_MinAmountSeller;
  _MinAmountSeller._() : super._();

  factory _MinAmountSeller.fromJson(Map<String, dynamic> json) =
      _$_MinAmountSeller.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get message;
  @override
  @JsonKey(name: "minimum_order_amount")
  double get minOrderAmount;
  @override
  @JsonKey(ignore: true)
  _$$_MinAmountSellerCopyWith<_$_MinAmountSeller> get copyWith =>
      throw _privateConstructorUsedError;
}
