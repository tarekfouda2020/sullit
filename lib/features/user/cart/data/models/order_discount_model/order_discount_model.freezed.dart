// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_discount_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderDiscountModel _$OrderDiscountModelFromJson(Map<String, dynamic> json) {
  return _OrderDiscountModel.fromJson(json);
}

/// @nodoc
mixin _$OrderDiscountModel {
  String get type => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  String get discount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderDiscountModelCopyWith<OrderDiscountModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDiscountModelCopyWith<$Res> {
  factory $OrderDiscountModelCopyWith(
          OrderDiscountModel value, $Res Function(OrderDiscountModel) then) =
      _$OrderDiscountModelCopyWithImpl<$Res, OrderDiscountModel>;
  @useResult
  $Res call({String type, String label, String discount});
}

/// @nodoc
class _$OrderDiscountModelCopyWithImpl<$Res, $Val extends OrderDiscountModel>
    implements $OrderDiscountModelCopyWith<$Res> {
  _$OrderDiscountModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? label = null,
    Object? discount = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrderDiscountModelCopyWith<$Res>
    implements $OrderDiscountModelCopyWith<$Res> {
  factory _$$_OrderDiscountModelCopyWith(_$_OrderDiscountModel value,
          $Res Function(_$_OrderDiscountModel) then) =
      __$$_OrderDiscountModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, String label, String discount});
}

/// @nodoc
class __$$_OrderDiscountModelCopyWithImpl<$Res>
    extends _$OrderDiscountModelCopyWithImpl<$Res, _$_OrderDiscountModel>
    implements _$$_OrderDiscountModelCopyWith<$Res> {
  __$$_OrderDiscountModelCopyWithImpl(
      _$_OrderDiscountModel _value, $Res Function(_$_OrderDiscountModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? label = null,
    Object? discount = null,
  }) {
    return _then(_$_OrderDiscountModel(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_OrderDiscountModel extends _OrderDiscountModel {
  _$_OrderDiscountModel(
      {required this.type, required this.label, required this.discount})
      : super._();

  factory _$_OrderDiscountModel.fromJson(Map<String, dynamic> json) =>
      _$$_OrderDiscountModelFromJson(json);

  @override
  final String type;
  @override
  final String label;
  @override
  final String discount;

  @override
  String toString() {
    return 'OrderDiscountModel(type: $type, label: $label, discount: $discount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderDiscountModel &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.discount, discount) ||
                other.discount == discount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, label, discount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderDiscountModelCopyWith<_$_OrderDiscountModel> get copyWith =>
      __$$_OrderDiscountModelCopyWithImpl<_$_OrderDiscountModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderDiscountModelToJson(
      this,
    );
  }
}

abstract class _OrderDiscountModel extends OrderDiscountModel {
  factory _OrderDiscountModel(
      {required final String type,
      required final String label,
      required final String discount}) = _$_OrderDiscountModel;
  _OrderDiscountModel._() : super._();

  factory _OrderDiscountModel.fromJson(Map<String, dynamic> json) =
      _$_OrderDiscountModel.fromJson;

  @override
  String get type;
  @override
  String get label;
  @override
  String get discount;
  @override
  @JsonKey(ignore: true)
  _$$_OrderDiscountModelCopyWith<_$_OrderDiscountModel> get copyWith =>
      throw _privateConstructorUsedError;
}
