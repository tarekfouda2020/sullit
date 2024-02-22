// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shipping_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShippingModel _$ShippingModelFromJson(Map<String, dynamic> json) {
  return _ShippingModel.fromJson(json);
}

/// @nodoc
mixin _$ShippingModel {
  ShippingSummaryModel get summary => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_option")
  List<PaymentOptionModel>? get paymentOption =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "is_admin_discount")
  bool? get isAdminDiscount => throw _privateConstructorUsedError;
  @JsonKey(name: "discount_rate")
  int? get discountRate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShippingModelCopyWith<ShippingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShippingModelCopyWith<$Res> {
  factory $ShippingModelCopyWith(
          ShippingModel value, $Res Function(ShippingModel) then) =
      _$ShippingModelCopyWithImpl<$Res, ShippingModel>;
  @useResult
  $Res call(
      {ShippingSummaryModel summary,
      @JsonKey(name: "payment_option") List<PaymentOptionModel>? paymentOption,
      @JsonKey(name: "is_admin_discount") bool? isAdminDiscount,
      @JsonKey(name: "discount_rate") int? discountRate});

  $ShippingSummaryModelCopyWith<$Res> get summary;
}

/// @nodoc
class _$ShippingModelCopyWithImpl<$Res, $Val extends ShippingModel>
    implements $ShippingModelCopyWith<$Res> {
  _$ShippingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? summary = null,
    Object? paymentOption = freezed,
    Object? isAdminDiscount = freezed,
    Object? discountRate = freezed,
  }) {
    return _then(_value.copyWith(
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as ShippingSummaryModel,
      paymentOption: freezed == paymentOption
          ? _value.paymentOption
          : paymentOption // ignore: cast_nullable_to_non_nullable
              as List<PaymentOptionModel>?,
      isAdminDiscount: freezed == isAdminDiscount
          ? _value.isAdminDiscount
          : isAdminDiscount // ignore: cast_nullable_to_non_nullable
              as bool?,
      discountRate: freezed == discountRate
          ? _value.discountRate
          : discountRate // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ShippingSummaryModelCopyWith<$Res> get summary {
    return $ShippingSummaryModelCopyWith<$Res>(_value.summary, (value) {
      return _then(_value.copyWith(summary: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ShippingModelCopyWith<$Res>
    implements $ShippingModelCopyWith<$Res> {
  factory _$$_ShippingModelCopyWith(
          _$_ShippingModel value, $Res Function(_$_ShippingModel) then) =
      __$$_ShippingModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ShippingSummaryModel summary,
      @JsonKey(name: "payment_option") List<PaymentOptionModel>? paymentOption,
      @JsonKey(name: "is_admin_discount") bool? isAdminDiscount,
      @JsonKey(name: "discount_rate") int? discountRate});

  @override
  $ShippingSummaryModelCopyWith<$Res> get summary;
}

/// @nodoc
class __$$_ShippingModelCopyWithImpl<$Res>
    extends _$ShippingModelCopyWithImpl<$Res, _$_ShippingModel>
    implements _$$_ShippingModelCopyWith<$Res> {
  __$$_ShippingModelCopyWithImpl(
      _$_ShippingModel _value, $Res Function(_$_ShippingModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? summary = null,
    Object? paymentOption = freezed,
    Object? isAdminDiscount = freezed,
    Object? discountRate = freezed,
  }) {
    return _then(_$_ShippingModel(
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as ShippingSummaryModel,
      paymentOption: freezed == paymentOption
          ? _value._paymentOption
          : paymentOption // ignore: cast_nullable_to_non_nullable
              as List<PaymentOptionModel>?,
      isAdminDiscount: freezed == isAdminDiscount
          ? _value.isAdminDiscount
          : isAdminDiscount // ignore: cast_nullable_to_non_nullable
              as bool?,
      discountRate: freezed == discountRate
          ? _value.discountRate
          : discountRate // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ShippingModel extends _ShippingModel {
  const _$_ShippingModel(
      {required this.summary,
      @JsonKey(name: "payment_option")
      final List<PaymentOptionModel>? paymentOption,
      @JsonKey(name: "is_admin_discount") this.isAdminDiscount,
      @JsonKey(name: "discount_rate") this.discountRate})
      : _paymentOption = paymentOption,
        super._();

  factory _$_ShippingModel.fromJson(Map<String, dynamic> json) =>
      _$$_ShippingModelFromJson(json);

  @override
  final ShippingSummaryModel summary;
  final List<PaymentOptionModel>? _paymentOption;
  @override
  @JsonKey(name: "payment_option")
  List<PaymentOptionModel>? get paymentOption {
    final value = _paymentOption;
    if (value == null) return null;
    if (_paymentOption is EqualUnmodifiableListView) return _paymentOption;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "is_admin_discount")
  final bool? isAdminDiscount;
  @override
  @JsonKey(name: "discount_rate")
  final int? discountRate;

  @override
  String toString() {
    return 'ShippingModel(summary: $summary, paymentOption: $paymentOption, isAdminDiscount: $isAdminDiscount, discountRate: $discountRate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShippingModel &&
            (identical(other.summary, summary) || other.summary == summary) &&
            const DeepCollectionEquality()
                .equals(other._paymentOption, _paymentOption) &&
            (identical(other.isAdminDiscount, isAdminDiscount) ||
                other.isAdminDiscount == isAdminDiscount) &&
            (identical(other.discountRate, discountRate) ||
                other.discountRate == discountRate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      summary,
      const DeepCollectionEquality().hash(_paymentOption),
      isAdminDiscount,
      discountRate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShippingModelCopyWith<_$_ShippingModel> get copyWith =>
      __$$_ShippingModelCopyWithImpl<_$_ShippingModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShippingModelToJson(
      this,
    );
  }
}

abstract class _ShippingModel extends ShippingModel {
  const factory _ShippingModel(
          {required final ShippingSummaryModel summary,
          @JsonKey(name: "payment_option")
          final List<PaymentOptionModel>? paymentOption,
          @JsonKey(name: "is_admin_discount") final bool? isAdminDiscount,
          @JsonKey(name: "discount_rate") final int? discountRate}) =
      _$_ShippingModel;
  const _ShippingModel._() : super._();

  factory _ShippingModel.fromJson(Map<String, dynamic> json) =
      _$_ShippingModel.fromJson;

  @override
  ShippingSummaryModel get summary;
  @override
  @JsonKey(name: "payment_option")
  List<PaymentOptionModel>? get paymentOption;
  @override
  @JsonKey(name: "is_admin_discount")
  bool? get isAdminDiscount;
  @override
  @JsonKey(name: "discount_rate")
  int? get discountRate;
  @override
  @JsonKey(ignore: true)
  _$$_ShippingModelCopyWith<_$_ShippingModel> get copyWith =>
      throw _privateConstructorUsedError;
}
