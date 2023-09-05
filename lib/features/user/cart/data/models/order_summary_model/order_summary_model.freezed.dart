// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_summary_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderSummaryModel _$OrderSummaryModelFromJson(Map<String, dynamic> json) {
  return _OrderSummaryModel.fromJson(json);
}

/// @nodoc
mixin _$OrderSummaryModel {
  @JsonKey(name: 'order_summary')
  SummaryModel? get orderSummary => throw _privateConstructorUsedError;
  @JsonKey(name: 'section_orders')
  List<OrderModel>? get sectionOrders => throw _privateConstructorUsedError;
  @JsonKey(name: 'transaction_url')
  String? get transactionUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderSummaryModelCopyWith<OrderSummaryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderSummaryModelCopyWith<$Res> {
  factory $OrderSummaryModelCopyWith(
          OrderSummaryModel value, $Res Function(OrderSummaryModel) then) =
      _$OrderSummaryModelCopyWithImpl<$Res, OrderSummaryModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'order_summary') SummaryModel? orderSummary,
      @JsonKey(name: 'section_orders') List<OrderModel>? sectionOrders,
      @JsonKey(name: 'transaction_url') String? transactionUrl});

  $SummaryModelCopyWith<$Res>? get orderSummary;
}

/// @nodoc
class _$OrderSummaryModelCopyWithImpl<$Res, $Val extends OrderSummaryModel>
    implements $OrderSummaryModelCopyWith<$Res> {
  _$OrderSummaryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderSummary = freezed,
    Object? sectionOrders = freezed,
    Object? transactionUrl = freezed,
  }) {
    return _then(_value.copyWith(
      orderSummary: freezed == orderSummary
          ? _value.orderSummary
          : orderSummary // ignore: cast_nullable_to_non_nullable
              as SummaryModel?,
      sectionOrders: freezed == sectionOrders
          ? _value.sectionOrders
          : sectionOrders // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>?,
      transactionUrl: freezed == transactionUrl
          ? _value.transactionUrl
          : transactionUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SummaryModelCopyWith<$Res>? get orderSummary {
    if (_value.orderSummary == null) {
      return null;
    }

    return $SummaryModelCopyWith<$Res>(_value.orderSummary!, (value) {
      return _then(_value.copyWith(orderSummary: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OrderSummaryModelCopyWith<$Res>
    implements $OrderSummaryModelCopyWith<$Res> {
  factory _$$_OrderSummaryModelCopyWith(_$_OrderSummaryModel value,
          $Res Function(_$_OrderSummaryModel) then) =
      __$$_OrderSummaryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'order_summary') SummaryModel? orderSummary,
      @JsonKey(name: 'section_orders') List<OrderModel>? sectionOrders,
      @JsonKey(name: 'transaction_url') String? transactionUrl});

  @override
  $SummaryModelCopyWith<$Res>? get orderSummary;
}

/// @nodoc
class __$$_OrderSummaryModelCopyWithImpl<$Res>
    extends _$OrderSummaryModelCopyWithImpl<$Res, _$_OrderSummaryModel>
    implements _$$_OrderSummaryModelCopyWith<$Res> {
  __$$_OrderSummaryModelCopyWithImpl(
      _$_OrderSummaryModel _value, $Res Function(_$_OrderSummaryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderSummary = freezed,
    Object? sectionOrders = freezed,
    Object? transactionUrl = freezed,
  }) {
    return _then(_$_OrderSummaryModel(
      orderSummary: freezed == orderSummary
          ? _value.orderSummary
          : orderSummary // ignore: cast_nullable_to_non_nullable
              as SummaryModel?,
      sectionOrders: freezed == sectionOrders
          ? _value._sectionOrders
          : sectionOrders // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>?,
      transactionUrl: freezed == transactionUrl
          ? _value.transactionUrl
          : transactionUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_OrderSummaryModel extends _OrderSummaryModel {
  const _$_OrderSummaryModel(
      {@JsonKey(name: 'order_summary') this.orderSummary,
      @JsonKey(name: 'section_orders') final List<OrderModel>? sectionOrders,
      @JsonKey(name: 'transaction_url') this.transactionUrl})
      : _sectionOrders = sectionOrders,
        super._();

  factory _$_OrderSummaryModel.fromJson(Map<String, dynamic> json) =>
      _$$_OrderSummaryModelFromJson(json);

  @override
  @JsonKey(name: 'order_summary')
  final SummaryModel? orderSummary;
  final List<OrderModel>? _sectionOrders;
  @override
  @JsonKey(name: 'section_orders')
  List<OrderModel>? get sectionOrders {
    final value = _sectionOrders;
    if (value == null) return null;
    if (_sectionOrders is EqualUnmodifiableListView) return _sectionOrders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'transaction_url')
  final String? transactionUrl;

  @override
  String toString() {
    return 'OrderSummaryModel(orderSummary: $orderSummary, sectionOrders: $sectionOrders, transactionUrl: $transactionUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderSummaryModel &&
            (identical(other.orderSummary, orderSummary) ||
                other.orderSummary == orderSummary) &&
            const DeepCollectionEquality()
                .equals(other._sectionOrders, _sectionOrders) &&
            (identical(other.transactionUrl, transactionUrl) ||
                other.transactionUrl == transactionUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, orderSummary,
      const DeepCollectionEquality().hash(_sectionOrders), transactionUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderSummaryModelCopyWith<_$_OrderSummaryModel> get copyWith =>
      __$$_OrderSummaryModelCopyWithImpl<_$_OrderSummaryModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderSummaryModelToJson(
      this,
    );
  }
}

abstract class _OrderSummaryModel extends OrderSummaryModel {
  const factory _OrderSummaryModel(
      {@JsonKey(name: 'order_summary') final SummaryModel? orderSummary,
      @JsonKey(name: 'section_orders') final List<OrderModel>? sectionOrders,
      @JsonKey(name: 'transaction_url')
      final String? transactionUrl}) = _$_OrderSummaryModel;
  const _OrderSummaryModel._() : super._();

  factory _OrderSummaryModel.fromJson(Map<String, dynamic> json) =
      _$_OrderSummaryModel.fromJson;

  @override
  @JsonKey(name: 'order_summary')
  SummaryModel? get orderSummary;
  @override
  @JsonKey(name: 'section_orders')
  List<OrderModel>? get sectionOrders;
  @override
  @JsonKey(name: 'transaction_url')
  String? get transactionUrl;
  @override
  @JsonKey(ignore: true)
  _$$_OrderSummaryModelCopyWith<_$_OrderSummaryModel> get copyWith =>
      throw _privateConstructorUsedError;
}
