// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CartModel _$CartModelFromJson(Map<String, dynamic> json) {
  return _CartModel.fromJson(json);
}

/// @nodoc
mixin _$CartModel {
  List<CartItemModel> get items => throw _privateConstructorUsedError;
  @JsonKey(name: "sub_total")
  String get subTotal => throw _privateConstructorUsedError;
  @JsonKey(name: "calculable_total")
  num get calculableTotal => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_symbol")
  String get currencySymbol => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartModelCopyWith<CartModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartModelCopyWith<$Res> {
  factory $CartModelCopyWith(CartModel value, $Res Function(CartModel) then) =
      _$CartModelCopyWithImpl<$Res, CartModel>;
  @useResult
  $Res call(
      {List<CartItemModel> items,
      @JsonKey(name: "sub_total") String subTotal,
      @JsonKey(name: "calculable_total") num calculableTotal,
      @JsonKey(name: "currency_symbol") String currencySymbol});
}

/// @nodoc
class _$CartModelCopyWithImpl<$Res, $Val extends CartModel>
    implements $CartModelCopyWith<$Res> {
  _$CartModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? subTotal = null,
    Object? calculableTotal = null,
    Object? currencySymbol = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CartItemModel>,
      subTotal: null == subTotal
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as String,
      calculableTotal: null == calculableTotal
          ? _value.calculableTotal
          : calculableTotal // ignore: cast_nullable_to_non_nullable
              as num,
      currencySymbol: null == currencySymbol
          ? _value.currencySymbol
          : currencySymbol // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CartModelCopyWith<$Res> implements $CartModelCopyWith<$Res> {
  factory _$$_CartModelCopyWith(
          _$_CartModel value, $Res Function(_$_CartModel) then) =
      __$$_CartModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CartItemModel> items,
      @JsonKey(name: "sub_total") String subTotal,
      @JsonKey(name: "calculable_total") num calculableTotal,
      @JsonKey(name: "currency_symbol") String currencySymbol});
}

/// @nodoc
class __$$_CartModelCopyWithImpl<$Res>
    extends _$CartModelCopyWithImpl<$Res, _$_CartModel>
    implements _$$_CartModelCopyWith<$Res> {
  __$$_CartModelCopyWithImpl(
      _$_CartModel _value, $Res Function(_$_CartModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? subTotal = null,
    Object? calculableTotal = null,
    Object? currencySymbol = null,
  }) {
    return _then(_$_CartModel(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CartItemModel>,
      subTotal: null == subTotal
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as String,
      calculableTotal: null == calculableTotal
          ? _value.calculableTotal
          : calculableTotal // ignore: cast_nullable_to_non_nullable
              as num,
      currencySymbol: null == currencySymbol
          ? _value.currencySymbol
          : currencySymbol // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_CartModel extends _CartModel {
  const _$_CartModel(
      {required final List<CartItemModel> items,
      @JsonKey(name: "sub_total") required this.subTotal,
      @JsonKey(name: "calculable_total") required this.calculableTotal,
      @JsonKey(name: "currency_symbol") required this.currencySymbol})
      : _items = items,
        super._();

  factory _$_CartModel.fromJson(Map<String, dynamic> json) =>
      _$$_CartModelFromJson(json);

  final List<CartItemModel> _items;
  @override
  List<CartItemModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey(name: "sub_total")
  final String subTotal;
  @override
  @JsonKey(name: "calculable_total")
  final num calculableTotal;
  @override
  @JsonKey(name: "currency_symbol")
  final String currencySymbol;

  @override
  String toString() {
    return 'CartModel(items: $items, subTotal: $subTotal, calculableTotal: $calculableTotal, currencySymbol: $currencySymbol)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartModel &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.subTotal, subTotal) ||
                other.subTotal == subTotal) &&
            (identical(other.calculableTotal, calculableTotal) ||
                other.calculableTotal == calculableTotal) &&
            (identical(other.currencySymbol, currencySymbol) ||
                other.currencySymbol == currencySymbol));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_items),
      subTotal,
      calculableTotal,
      currencySymbol);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartModelCopyWith<_$_CartModel> get copyWith =>
      __$$_CartModelCopyWithImpl<_$_CartModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartModelToJson(
      this,
    );
  }
}

abstract class _CartModel extends CartModel {
  const factory _CartModel(
      {required final List<CartItemModel> items,
      @JsonKey(name: "sub_total") required final String subTotal,
      @JsonKey(name: "calculable_total") required final num calculableTotal,
      @JsonKey(name: "currency_symbol")
      required final String currencySymbol}) = _$_CartModel;
  const _CartModel._() : super._();

  factory _CartModel.fromJson(Map<String, dynamic> json) =
      _$_CartModel.fromJson;

  @override
  List<CartItemModel> get items;
  @override
  @JsonKey(name: "sub_total")
  String get subTotal;
  @override
  @JsonKey(name: "calculable_total")
  num get calculableTotal;
  @override
  @JsonKey(name: "currency_symbol")
  String get currencySymbol;
  @override
  @JsonKey(ignore: true)
  _$$_CartModelCopyWith<_$_CartModel> get copyWith =>
      throw _privateConstructorUsedError;
}
