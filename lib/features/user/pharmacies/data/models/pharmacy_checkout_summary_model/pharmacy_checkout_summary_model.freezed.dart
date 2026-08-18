// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pharmacy_checkout_summary_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PharmacyCheckoutSummaryModel _$PharmacyCheckoutSummaryModelFromJson(
    Map<String, dynamic> json) {
  return _PharmacyCheckoutSummaryModel.fromJson(json);
}

/// @nodoc
mixin _$PharmacyCheckoutSummaryModel {
  @JsonKey(name: "order_summary")
  ShippingSummaryModel get orderSummary => throw _privateConstructorUsedError;
  @JsonKey(name: "order")
  PharmacyOrderDetailsModel get orderDetails =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PharmacyCheckoutSummaryModelCopyWith<PharmacyCheckoutSummaryModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PharmacyCheckoutSummaryModelCopyWith<$Res> {
  factory $PharmacyCheckoutSummaryModelCopyWith(
          PharmacyCheckoutSummaryModel value,
          $Res Function(PharmacyCheckoutSummaryModel) then) =
      _$PharmacyCheckoutSummaryModelCopyWithImpl<$Res,
          PharmacyCheckoutSummaryModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "order_summary") ShippingSummaryModel orderSummary,
      @JsonKey(name: "order") PharmacyOrderDetailsModel orderDetails});

  $ShippingSummaryModelCopyWith<$Res> get orderSummary;
  $PharmacyOrderDetailsModelCopyWith<$Res> get orderDetails;
}

/// @nodoc
class _$PharmacyCheckoutSummaryModelCopyWithImpl<$Res,
        $Val extends PharmacyCheckoutSummaryModel>
    implements $PharmacyCheckoutSummaryModelCopyWith<$Res> {
  _$PharmacyCheckoutSummaryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderSummary = null,
    Object? orderDetails = null,
  }) {
    return _then(_value.copyWith(
      orderSummary: null == orderSummary
          ? _value.orderSummary
          : orderSummary // ignore: cast_nullable_to_non_nullable
              as ShippingSummaryModel,
      orderDetails: null == orderDetails
          ? _value.orderDetails
          : orderDetails // ignore: cast_nullable_to_non_nullable
              as PharmacyOrderDetailsModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ShippingSummaryModelCopyWith<$Res> get orderSummary {
    return $ShippingSummaryModelCopyWith<$Res>(_value.orderSummary, (value) {
      return _then(_value.copyWith(orderSummary: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PharmacyOrderDetailsModelCopyWith<$Res> get orderDetails {
    return $PharmacyOrderDetailsModelCopyWith<$Res>(_value.orderDetails,
        (value) {
      return _then(_value.copyWith(orderDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PharmacyCheckoutSummaryModelCopyWith<$Res>
    implements $PharmacyCheckoutSummaryModelCopyWith<$Res> {
  factory _$$_PharmacyCheckoutSummaryModelCopyWith(
          _$_PharmacyCheckoutSummaryModel value,
          $Res Function(_$_PharmacyCheckoutSummaryModel) then) =
      __$$_PharmacyCheckoutSummaryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "order_summary") ShippingSummaryModel orderSummary,
      @JsonKey(name: "order") PharmacyOrderDetailsModel orderDetails});

  @override
  $ShippingSummaryModelCopyWith<$Res> get orderSummary;
  @override
  $PharmacyOrderDetailsModelCopyWith<$Res> get orderDetails;
}

/// @nodoc
class __$$_PharmacyCheckoutSummaryModelCopyWithImpl<$Res>
    extends _$PharmacyCheckoutSummaryModelCopyWithImpl<$Res,
        _$_PharmacyCheckoutSummaryModel>
    implements _$$_PharmacyCheckoutSummaryModelCopyWith<$Res> {
  __$$_PharmacyCheckoutSummaryModelCopyWithImpl(
      _$_PharmacyCheckoutSummaryModel _value,
      $Res Function(_$_PharmacyCheckoutSummaryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderSummary = null,
    Object? orderDetails = null,
  }) {
    return _then(_$_PharmacyCheckoutSummaryModel(
      orderSummary: null == orderSummary
          ? _value.orderSummary
          : orderSummary // ignore: cast_nullable_to_non_nullable
              as ShippingSummaryModel,
      orderDetails: null == orderDetails
          ? _value.orderDetails
          : orderDetails // ignore: cast_nullable_to_non_nullable
              as PharmacyOrderDetailsModel,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_PharmacyCheckoutSummaryModel extends _PharmacyCheckoutSummaryModel {
  const _$_PharmacyCheckoutSummaryModel(
      {@JsonKey(name: "order_summary") required this.orderSummary,
      @JsonKey(name: "order") required this.orderDetails})
      : super._();

  factory _$_PharmacyCheckoutSummaryModel.fromJson(Map<String, dynamic> json) =>
      _$$_PharmacyCheckoutSummaryModelFromJson(json);

  @override
  @JsonKey(name: "order_summary")
  final ShippingSummaryModel orderSummary;
  @override
  @JsonKey(name: "order")
  final PharmacyOrderDetailsModel orderDetails;

  @override
  String toString() {
    return 'PharmacyCheckoutSummaryModel(orderSummary: $orderSummary, orderDetails: $orderDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PharmacyCheckoutSummaryModel &&
            (identical(other.orderSummary, orderSummary) ||
                other.orderSummary == orderSummary) &&
            (identical(other.orderDetails, orderDetails) ||
                other.orderDetails == orderDetails));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, orderSummary, orderDetails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PharmacyCheckoutSummaryModelCopyWith<_$_PharmacyCheckoutSummaryModel>
      get copyWith => __$$_PharmacyCheckoutSummaryModelCopyWithImpl<
          _$_PharmacyCheckoutSummaryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PharmacyCheckoutSummaryModelToJson(
      this,
    );
  }
}

abstract class _PharmacyCheckoutSummaryModel
    extends PharmacyCheckoutSummaryModel {
  const factory _PharmacyCheckoutSummaryModel(
          {@JsonKey(name: "order_summary")
          required final ShippingSummaryModel orderSummary,
          @JsonKey(name: "order")
          required final PharmacyOrderDetailsModel orderDetails}) =
      _$_PharmacyCheckoutSummaryModel;
  const _PharmacyCheckoutSummaryModel._() : super._();

  factory _PharmacyCheckoutSummaryModel.fromJson(Map<String, dynamic> json) =
      _$_PharmacyCheckoutSummaryModel.fromJson;

  @override
  @JsonKey(name: "order_summary")
  ShippingSummaryModel get orderSummary;
  @override
  @JsonKey(name: "order")
  PharmacyOrderDetailsModel get orderDetails;
  @override
  @JsonKey(ignore: true)
  _$$_PharmacyCheckoutSummaryModelCopyWith<_$_PharmacyCheckoutSummaryModel>
      get copyWith => throw _privateConstructorUsedError;
}
