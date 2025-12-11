// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_summary_discount_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderSummaryDiscountModel _$OrderSummaryDiscountModelFromJson(
    Map<String, dynamic> json) {
  return _OrderSummaryDiscountModel.fromJson(json);
}

/// @nodoc
mixin _$OrderSummaryDiscountModel {
  String get type => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  String get discount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderSummaryDiscountModelCopyWith<OrderSummaryDiscountModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderSummaryDiscountModelCopyWith<$Res> {
  factory $OrderSummaryDiscountModelCopyWith(OrderSummaryDiscountModel value,
          $Res Function(OrderSummaryDiscountModel) then) =
      _$OrderSummaryDiscountModelCopyWithImpl<$Res, OrderSummaryDiscountModel>;
  @useResult
  $Res call({String type, String label, String discount});
}

/// @nodoc
class _$OrderSummaryDiscountModelCopyWithImpl<$Res,
        $Val extends OrderSummaryDiscountModel>
    implements $OrderSummaryDiscountModelCopyWith<$Res> {
  _$OrderSummaryDiscountModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_OrderSummaryDiscountModelCopyWith<$Res>
    implements $OrderSummaryDiscountModelCopyWith<$Res> {
  factory _$$_OrderSummaryDiscountModelCopyWith(
          _$_OrderSummaryDiscountModel value,
          $Res Function(_$_OrderSummaryDiscountModel) then) =
      __$$_OrderSummaryDiscountModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, String label, String discount});
}

/// @nodoc
class __$$_OrderSummaryDiscountModelCopyWithImpl<$Res>
    extends _$OrderSummaryDiscountModelCopyWithImpl<$Res,
        _$_OrderSummaryDiscountModel>
    implements _$$_OrderSummaryDiscountModelCopyWith<$Res> {
  __$$_OrderSummaryDiscountModelCopyWithImpl(
      _$_OrderSummaryDiscountModel _value,
      $Res Function(_$_OrderSummaryDiscountModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? label = null,
    Object? discount = null,
  }) {
    return _then(_$_OrderSummaryDiscountModel(
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
class _$_OrderSummaryDiscountModel extends _OrderSummaryDiscountModel {
  _$_OrderSummaryDiscountModel(
      {required this.type, required this.label, required this.discount})
      : super._();

  factory _$_OrderSummaryDiscountModel.fromJson(Map<String, dynamic> json) =>
      _$$_OrderSummaryDiscountModelFromJson(json);

  @override
  final String type;
  @override
  final String label;
  @override
  final String discount;

  @override
  String toString() {
    return 'OrderSummaryDiscountModel(type: $type, label: $label, discount: $discount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderSummaryDiscountModel &&
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
  _$$_OrderSummaryDiscountModelCopyWith<_$_OrderSummaryDiscountModel>
      get copyWith => __$$_OrderSummaryDiscountModelCopyWithImpl<
          _$_OrderSummaryDiscountModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderSummaryDiscountModelToJson(
      this,
    );
  }
}

abstract class _OrderSummaryDiscountModel extends OrderSummaryDiscountModel {
  factory _OrderSummaryDiscountModel(
      {required final String type,
      required final String label,
      required final String discount}) = _$_OrderSummaryDiscountModel;
  _OrderSummaryDiscountModel._() : super._();

  factory _OrderSummaryDiscountModel.fromJson(Map<String, dynamic> json) =
      _$_OrderSummaryDiscountModel.fromJson;

  @override
  String get type;
  @override
  String get label;
  @override
  String get discount;
  @override
  @JsonKey(ignore: true)
  _$$_OrderSummaryDiscountModelCopyWith<_$_OrderSummaryDiscountModel>
      get copyWith => throw _privateConstructorUsedError;
}
