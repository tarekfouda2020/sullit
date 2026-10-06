// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'price_comparison_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PriceComparisonModel _$PriceComparisonModelFromJson(Map<String, dynamic> json) {
  return _PriceComparisonModel.fromJson(json);
}

/// @nodoc
mixin _$PriceComparisonModel {
  int get id => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  PriceComparisonProductModel get product => throw _privateConstructorUsedError;
  List<PriceComparisonStepModel> get steps =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'stores_count')
  int get storesCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'best_price')
  String? get bestPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'best_savings')
  String? get bestSavings => throw _privateConstructorUsedError;
  @JsonKey(name: 'currency_symbol')
  String get currencySymbol => throw _privateConstructorUsedError;
  String get channel => throw _privateConstructorUsedError;
  String get event => throw _privateConstructorUsedError;
  @JsonKey(name: 'error_message')
  String? get errorMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PriceComparisonModelCopyWith<PriceComparisonModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceComparisonModelCopyWith<$Res> {
  factory $PriceComparisonModelCopyWith(PriceComparisonModel value,
          $Res Function(PriceComparisonModel) then) =
      _$PriceComparisonModelCopyWithImpl<$Res, PriceComparisonModel>;
  @useResult
  $Res call(
      {int id,
      String status,
      PriceComparisonProductModel product,
      List<PriceComparisonStepModel> steps,
      @JsonKey(name: 'stores_count') int storesCount,
      @JsonKey(name: 'best_price') String? bestPrice,
      @JsonKey(name: 'best_savings') String? bestSavings,
      @JsonKey(name: 'currency_symbol') String currencySymbol,
      String channel,
      String event,
      @JsonKey(name: 'error_message') String? errorMessage});

  $PriceComparisonProductModelCopyWith<$Res> get product;
}

/// @nodoc
class _$PriceComparisonModelCopyWithImpl<$Res,
        $Val extends PriceComparisonModel>
    implements $PriceComparisonModelCopyWith<$Res> {
  _$PriceComparisonModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? product = null,
    Object? steps = null,
    Object? storesCount = null,
    Object? bestPrice = freezed,
    Object? bestSavings = freezed,
    Object? currencySymbol = null,
    Object? channel = null,
    Object? event = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as PriceComparisonProductModel,
      steps: null == steps
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<PriceComparisonStepModel>,
      storesCount: null == storesCount
          ? _value.storesCount
          : storesCount // ignore: cast_nullable_to_non_nullable
              as int,
      bestPrice: freezed == bestPrice
          ? _value.bestPrice
          : bestPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      bestSavings: freezed == bestSavings
          ? _value.bestSavings
          : bestSavings // ignore: cast_nullable_to_non_nullable
              as String?,
      currencySymbol: null == currencySymbol
          ? _value.currencySymbol
          : currencySymbol // ignore: cast_nullable_to_non_nullable
              as String,
      channel: null == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as String,
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PriceComparisonProductModelCopyWith<$Res> get product {
    return $PriceComparisonProductModelCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PriceComparisonModelCopyWith<$Res>
    implements $PriceComparisonModelCopyWith<$Res> {
  factory _$$_PriceComparisonModelCopyWith(_$_PriceComparisonModel value,
          $Res Function(_$_PriceComparisonModel) then) =
      __$$_PriceComparisonModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String status,
      PriceComparisonProductModel product,
      List<PriceComparisonStepModel> steps,
      @JsonKey(name: 'stores_count') int storesCount,
      @JsonKey(name: 'best_price') String? bestPrice,
      @JsonKey(name: 'best_savings') String? bestSavings,
      @JsonKey(name: 'currency_symbol') String currencySymbol,
      String channel,
      String event,
      @JsonKey(name: 'error_message') String? errorMessage});

  @override
  $PriceComparisonProductModelCopyWith<$Res> get product;
}

/// @nodoc
class __$$_PriceComparisonModelCopyWithImpl<$Res>
    extends _$PriceComparisonModelCopyWithImpl<$Res, _$_PriceComparisonModel>
    implements _$$_PriceComparisonModelCopyWith<$Res> {
  __$$_PriceComparisonModelCopyWithImpl(_$_PriceComparisonModel _value,
      $Res Function(_$_PriceComparisonModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? product = null,
    Object? steps = null,
    Object? storesCount = null,
    Object? bestPrice = freezed,
    Object? bestSavings = freezed,
    Object? currencySymbol = null,
    Object? channel = null,
    Object? event = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_PriceComparisonModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as PriceComparisonProductModel,
      steps: null == steps
          ? _value._steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<PriceComparisonStepModel>,
      storesCount: null == storesCount
          ? _value.storesCount
          : storesCount // ignore: cast_nullable_to_non_nullable
              as int,
      bestPrice: freezed == bestPrice
          ? _value.bestPrice
          : bestPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      bestSavings: freezed == bestSavings
          ? _value.bestSavings
          : bestSavings // ignore: cast_nullable_to_non_nullable
              as String?,
      currencySymbol: null == currencySymbol
          ? _value.currencySymbol
          : currencySymbol // ignore: cast_nullable_to_non_nullable
              as String,
      channel: null == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as String,
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_PriceComparisonModel extends _PriceComparisonModel {
  const _$_PriceComparisonModel(
      {required this.id,
      required this.status,
      required this.product,
      required final List<PriceComparisonStepModel> steps,
      @JsonKey(name: 'stores_count') required this.storesCount,
      @JsonKey(name: 'best_price') this.bestPrice,
      @JsonKey(name: 'best_savings') this.bestSavings,
      @JsonKey(name: 'currency_symbol') required this.currencySymbol,
      required this.channel,
      required this.event,
      @JsonKey(name: 'error_message') this.errorMessage})
      : _steps = steps,
        super._();

  factory _$_PriceComparisonModel.fromJson(Map<String, dynamic> json) =>
      _$$_PriceComparisonModelFromJson(json);

  @override
  final int id;
  @override
  final String status;
  @override
  final PriceComparisonProductModel product;
  final List<PriceComparisonStepModel> _steps;
  @override
  List<PriceComparisonStepModel> get steps {
    if (_steps is EqualUnmodifiableListView) return _steps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_steps);
  }

  @override
  @JsonKey(name: 'stores_count')
  final int storesCount;
  @override
  @JsonKey(name: 'best_price')
  final String? bestPrice;
  @override
  @JsonKey(name: 'best_savings')
  final String? bestSavings;
  @override
  @JsonKey(name: 'currency_symbol')
  final String currencySymbol;
  @override
  final String channel;
  @override
  final String event;
  @override
  @JsonKey(name: 'error_message')
  final String? errorMessage;

  @override
  String toString() {
    return 'PriceComparisonModel(id: $id, status: $status, product: $product, steps: $steps, storesCount: $storesCount, bestPrice: $bestPrice, bestSavings: $bestSavings, currencySymbol: $currencySymbol, channel: $channel, event: $event, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PriceComparisonModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.product, product) || other.product == product) &&
            const DeepCollectionEquality().equals(other._steps, _steps) &&
            (identical(other.storesCount, storesCount) ||
                other.storesCount == storesCount) &&
            (identical(other.bestPrice, bestPrice) ||
                other.bestPrice == bestPrice) &&
            (identical(other.bestSavings, bestSavings) ||
                other.bestSavings == bestSavings) &&
            (identical(other.currencySymbol, currencySymbol) ||
                other.currencySymbol == currencySymbol) &&
            (identical(other.channel, channel) || other.channel == channel) &&
            (identical(other.event, event) || other.event == event) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      status,
      product,
      const DeepCollectionEquality().hash(_steps),
      storesCount,
      bestPrice,
      bestSavings,
      currencySymbol,
      channel,
      event,
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PriceComparisonModelCopyWith<_$_PriceComparisonModel> get copyWith =>
      __$$_PriceComparisonModelCopyWithImpl<_$_PriceComparisonModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PriceComparisonModelToJson(
      this,
    );
  }
}

abstract class _PriceComparisonModel extends PriceComparisonModel {
  const factory _PriceComparisonModel(
      {required final int id,
      required final String status,
      required final PriceComparisonProductModel product,
      required final List<PriceComparisonStepModel> steps,
      @JsonKey(name: 'stores_count') required final int storesCount,
      @JsonKey(name: 'best_price') final String? bestPrice,
      @JsonKey(name: 'best_savings') final String? bestSavings,
      @JsonKey(name: 'currency_symbol') required final String currencySymbol,
      required final String channel,
      required final String event,
      @JsonKey(name: 'error_message')
      final String? errorMessage}) = _$_PriceComparisonModel;
  const _PriceComparisonModel._() : super._();

  factory _PriceComparisonModel.fromJson(Map<String, dynamic> json) =
      _$_PriceComparisonModel.fromJson;

  @override
  int get id;
  @override
  String get status;
  @override
  PriceComparisonProductModel get product;
  @override
  List<PriceComparisonStepModel> get steps;
  @override
  @JsonKey(name: 'stores_count')
  int get storesCount;
  @override
  @JsonKey(name: 'best_price')
  String? get bestPrice;
  @override
  @JsonKey(name: 'best_savings')
  String? get bestSavings;
  @override
  @JsonKey(name: 'currency_symbol')
  String get currencySymbol;
  @override
  String get channel;
  @override
  String get event;
  @override
  @JsonKey(name: 'error_message')
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_PriceComparisonModelCopyWith<_$_PriceComparisonModel> get copyWith =>
      throw _privateConstructorUsedError;
}
