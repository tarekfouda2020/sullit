// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_payload_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CartPayloadModel _$CartPayloadModelFromJson(Map<String, dynamic> json) {
  return _CartPayloadModel.fromJson(json);
}

/// @nodoc
mixin _$CartPayloadModel {
  String? get action => throw _privateConstructorUsedError;
  List<CartItemModel> get items => throw _privateConstructorUsedError;
  @JsonKey(name: 'sub_total')
  String? get subTotal => throw _privateConstructorUsedError;
  @JsonKey(name: 'calculable_total')
  num? get calculableTotal => throw _privateConstructorUsedError;
  @JsonKey(name: 'currency_symbol')
  String? get currencySymbol => throw _privateConstructorUsedError;
  int? get returned => throw _privateConstructorUsedError;
  @JsonKey(name: 'minimum_order_amount_msg')
  String? get minimumOrderAmountMsg => throw _privateConstructorUsedError;
  @JsonKey(name: 'minimum_order_amount_status')
  bool get minimumOrderAmountStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartPayloadModelCopyWith<CartPayloadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartPayloadModelCopyWith<$Res> {
  factory $CartPayloadModelCopyWith(
          CartPayloadModel value, $Res Function(CartPayloadModel) then) =
      _$CartPayloadModelCopyWithImpl<$Res, CartPayloadModel>;
  @useResult
  $Res call(
      {String? action,
      List<CartItemModel> items,
      @JsonKey(name: 'sub_total') String? subTotal,
      @JsonKey(name: 'calculable_total') num? calculableTotal,
      @JsonKey(name: 'currency_symbol') String? currencySymbol,
      int? returned,
      @JsonKey(name: 'minimum_order_amount_msg') String? minimumOrderAmountMsg,
      @JsonKey(name: 'minimum_order_amount_status')
      bool minimumOrderAmountStatus});
}

/// @nodoc
class _$CartPayloadModelCopyWithImpl<$Res, $Val extends CartPayloadModel>
    implements $CartPayloadModelCopyWith<$Res> {
  _$CartPayloadModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = freezed,
    Object? items = null,
    Object? subTotal = freezed,
    Object? calculableTotal = freezed,
    Object? currencySymbol = freezed,
    Object? returned = freezed,
    Object? minimumOrderAmountMsg = freezed,
    Object? minimumOrderAmountStatus = null,
  }) {
    return _then(_value.copyWith(
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CartItemModel>,
      subTotal: freezed == subTotal
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as String?,
      calculableTotal: freezed == calculableTotal
          ? _value.calculableTotal
          : calculableTotal // ignore: cast_nullable_to_non_nullable
              as num?,
      currencySymbol: freezed == currencySymbol
          ? _value.currencySymbol
          : currencySymbol // ignore: cast_nullable_to_non_nullable
              as String?,
      returned: freezed == returned
          ? _value.returned
          : returned // ignore: cast_nullable_to_non_nullable
              as int?,
      minimumOrderAmountMsg: freezed == minimumOrderAmountMsg
          ? _value.minimumOrderAmountMsg
          : minimumOrderAmountMsg // ignore: cast_nullable_to_non_nullable
              as String?,
      minimumOrderAmountStatus: null == minimumOrderAmountStatus
          ? _value.minimumOrderAmountStatus
          : minimumOrderAmountStatus // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CartPayloadModelCopyWith<$Res>
    implements $CartPayloadModelCopyWith<$Res> {
  factory _$$_CartPayloadModelCopyWith(
          _$_CartPayloadModel value, $Res Function(_$_CartPayloadModel) then) =
      __$$_CartPayloadModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? action,
      List<CartItemModel> items,
      @JsonKey(name: 'sub_total') String? subTotal,
      @JsonKey(name: 'calculable_total') num? calculableTotal,
      @JsonKey(name: 'currency_symbol') String? currencySymbol,
      int? returned,
      @JsonKey(name: 'minimum_order_amount_msg') String? minimumOrderAmountMsg,
      @JsonKey(name: 'minimum_order_amount_status')
      bool minimumOrderAmountStatus});
}

/// @nodoc
class __$$_CartPayloadModelCopyWithImpl<$Res>
    extends _$CartPayloadModelCopyWithImpl<$Res, _$_CartPayloadModel>
    implements _$$_CartPayloadModelCopyWith<$Res> {
  __$$_CartPayloadModelCopyWithImpl(
      _$_CartPayloadModel _value, $Res Function(_$_CartPayloadModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = freezed,
    Object? items = null,
    Object? subTotal = freezed,
    Object? calculableTotal = freezed,
    Object? currencySymbol = freezed,
    Object? returned = freezed,
    Object? minimumOrderAmountMsg = freezed,
    Object? minimumOrderAmountStatus = null,
  }) {
    return _then(_$_CartPayloadModel(
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CartItemModel>,
      subTotal: freezed == subTotal
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as String?,
      calculableTotal: freezed == calculableTotal
          ? _value.calculableTotal
          : calculableTotal // ignore: cast_nullable_to_non_nullable
              as num?,
      currencySymbol: freezed == currencySymbol
          ? _value.currencySymbol
          : currencySymbol // ignore: cast_nullable_to_non_nullable
              as String?,
      returned: freezed == returned
          ? _value.returned
          : returned // ignore: cast_nullable_to_non_nullable
              as int?,
      minimumOrderAmountMsg: freezed == minimumOrderAmountMsg
          ? _value.minimumOrderAmountMsg
          : minimumOrderAmountMsg // ignore: cast_nullable_to_non_nullable
              as String?,
      minimumOrderAmountStatus: null == minimumOrderAmountStatus
          ? _value.minimumOrderAmountStatus
          : minimumOrderAmountStatus // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_CartPayloadModel extends _CartPayloadModel {
  const _$_CartPayloadModel(
      {this.action,
      final List<CartItemModel> items = const <CartItemModel>[],
      @JsonKey(name: 'sub_total') this.subTotal,
      @JsonKey(name: 'calculable_total') this.calculableTotal,
      @JsonKey(name: 'currency_symbol') this.currencySymbol,
      this.returned,
      @JsonKey(name: 'minimum_order_amount_msg') this.minimumOrderAmountMsg,
      @JsonKey(name: 'minimum_order_amount_status')
      this.minimumOrderAmountStatus = false})
      : _items = items,
        super._();

  factory _$_CartPayloadModel.fromJson(Map<String, dynamic> json) =>
      _$$_CartPayloadModelFromJson(json);

  @override
  final String? action;
  final List<CartItemModel> _items;
  @override
  @JsonKey()
  List<CartItemModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey(name: 'sub_total')
  final String? subTotal;
  @override
  @JsonKey(name: 'calculable_total')
  final num? calculableTotal;
  @override
  @JsonKey(name: 'currency_symbol')
  final String? currencySymbol;
  @override
  final int? returned;
  @override
  @JsonKey(name: 'minimum_order_amount_msg')
  final String? minimumOrderAmountMsg;
  @override
  @JsonKey(name: 'minimum_order_amount_status')
  final bool minimumOrderAmountStatus;

  @override
  String toString() {
    return 'CartPayloadModel(action: $action, items: $items, subTotal: $subTotal, calculableTotal: $calculableTotal, currencySymbol: $currencySymbol, returned: $returned, minimumOrderAmountMsg: $minimumOrderAmountMsg, minimumOrderAmountStatus: $minimumOrderAmountStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartPayloadModel &&
            (identical(other.action, action) || other.action == action) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.subTotal, subTotal) ||
                other.subTotal == subTotal) &&
            (identical(other.calculableTotal, calculableTotal) ||
                other.calculableTotal == calculableTotal) &&
            (identical(other.currencySymbol, currencySymbol) ||
                other.currencySymbol == currencySymbol) &&
            (identical(other.returned, returned) ||
                other.returned == returned) &&
            (identical(other.minimumOrderAmountMsg, minimumOrderAmountMsg) ||
                other.minimumOrderAmountMsg == minimumOrderAmountMsg) &&
            (identical(
                    other.minimumOrderAmountStatus, minimumOrderAmountStatus) ||
                other.minimumOrderAmountStatus == minimumOrderAmountStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      action,
      const DeepCollectionEquality().hash(_items),
      subTotal,
      calculableTotal,
      currencySymbol,
      returned,
      minimumOrderAmountMsg,
      minimumOrderAmountStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartPayloadModelCopyWith<_$_CartPayloadModel> get copyWith =>
      __$$_CartPayloadModelCopyWithImpl<_$_CartPayloadModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartPayloadModelToJson(
      this,
    );
  }
}

abstract class _CartPayloadModel extends CartPayloadModel {
  const factory _CartPayloadModel(
      {final String? action,
      final List<CartItemModel> items,
      @JsonKey(name: 'sub_total') final String? subTotal,
      @JsonKey(name: 'calculable_total') final num? calculableTotal,
      @JsonKey(name: 'currency_symbol') final String? currencySymbol,
      final int? returned,
      @JsonKey(name: 'minimum_order_amount_msg')
      final String? minimumOrderAmountMsg,
      @JsonKey(name: 'minimum_order_amount_status')
      final bool minimumOrderAmountStatus}) = _$_CartPayloadModel;
  const _CartPayloadModel._() : super._();

  factory _CartPayloadModel.fromJson(Map<String, dynamic> json) =
      _$_CartPayloadModel.fromJson;

  @override
  String? get action;
  @override
  List<CartItemModel> get items;
  @override
  @JsonKey(name: 'sub_total')
  String? get subTotal;
  @override
  @JsonKey(name: 'calculable_total')
  num? get calculableTotal;
  @override
  @JsonKey(name: 'currency_symbol')
  String? get currencySymbol;
  @override
  int? get returned;
  @override
  @JsonKey(name: 'minimum_order_amount_msg')
  String? get minimumOrderAmountMsg;
  @override
  @JsonKey(name: 'minimum_order_amount_status')
  bool get minimumOrderAmountStatus;
  @override
  @JsonKey(ignore: true)
  _$$_CartPayloadModelCopyWith<_$_CartPayloadModel> get copyWith =>
      throw _privateConstructorUsedError;
}
