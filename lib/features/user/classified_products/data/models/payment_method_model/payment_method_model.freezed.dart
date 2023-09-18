// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_method_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentMethodModel _$PaymentMethodModelFromJson(Map<String, dynamic> json) {
  return _PaymentMethodModel.fromJson(json);
}

/// @nodoc
mixin _$PaymentMethodModel {
  @JsonKey(name: 'payment_type')
  String get paymentType => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_type_key')
  String get paymentTypeKey => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'offline_payment_id')
  int get offlinePaymentId => throw _privateConstructorUsedError;
  String get details => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentMethodModelCopyWith<PaymentMethodModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentMethodModelCopyWith<$Res> {
  factory $PaymentMethodModelCopyWith(
          PaymentMethodModel value, $Res Function(PaymentMethodModel) then) =
      _$PaymentMethodModelCopyWithImpl<$Res, PaymentMethodModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'payment_type') String paymentType,
      @JsonKey(name: 'payment_type_key') String paymentTypeKey,
      String image,
      String name,
      String title,
      @JsonKey(name: 'offline_payment_id') int offlinePaymentId,
      String details});
}

/// @nodoc
class _$PaymentMethodModelCopyWithImpl<$Res, $Val extends PaymentMethodModel>
    implements $PaymentMethodModelCopyWith<$Res> {
  _$PaymentMethodModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentType = null,
    Object? paymentTypeKey = null,
    Object? image = null,
    Object? name = null,
    Object? title = null,
    Object? offlinePaymentId = null,
    Object? details = null,
  }) {
    return _then(_value.copyWith(
      paymentType: null == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as String,
      paymentTypeKey: null == paymentTypeKey
          ? _value.paymentTypeKey
          : paymentTypeKey // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      offlinePaymentId: null == offlinePaymentId
          ? _value.offlinePaymentId
          : offlinePaymentId // ignore: cast_nullable_to_non_nullable
              as int,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaymentMethodModelCopyWith<$Res>
    implements $PaymentMethodModelCopyWith<$Res> {
  factory _$$_PaymentMethodModelCopyWith(_$_PaymentMethodModel value,
          $Res Function(_$_PaymentMethodModel) then) =
      __$$_PaymentMethodModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'payment_type') String paymentType,
      @JsonKey(name: 'payment_type_key') String paymentTypeKey,
      String image,
      String name,
      String title,
      @JsonKey(name: 'offline_payment_id') int offlinePaymentId,
      String details});
}

/// @nodoc
class __$$_PaymentMethodModelCopyWithImpl<$Res>
    extends _$PaymentMethodModelCopyWithImpl<$Res, _$_PaymentMethodModel>
    implements _$$_PaymentMethodModelCopyWith<$Res> {
  __$$_PaymentMethodModelCopyWithImpl(
      _$_PaymentMethodModel _value, $Res Function(_$_PaymentMethodModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentType = null,
    Object? paymentTypeKey = null,
    Object? image = null,
    Object? name = null,
    Object? title = null,
    Object? offlinePaymentId = null,
    Object? details = null,
  }) {
    return _then(_$_PaymentMethodModel(
      paymentType: null == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as String,
      paymentTypeKey: null == paymentTypeKey
          ? _value.paymentTypeKey
          : paymentTypeKey // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      offlinePaymentId: null == offlinePaymentId
          ? _value.offlinePaymentId
          : offlinePaymentId // ignore: cast_nullable_to_non_nullable
              as int,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_PaymentMethodModel extends _PaymentMethodModel {
  const _$_PaymentMethodModel(
      {@JsonKey(name: 'payment_type') required this.paymentType,
      @JsonKey(name: 'payment_type_key') required this.paymentTypeKey,
      required this.image,
      required this.name,
      required this.title,
      @JsonKey(name: 'offline_payment_id') required this.offlinePaymentId,
      required this.details})
      : super._();

  factory _$_PaymentMethodModel.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentMethodModelFromJson(json);

  @override
  @JsonKey(name: 'payment_type')
  final String paymentType;
  @override
  @JsonKey(name: 'payment_type_key')
  final String paymentTypeKey;
  @override
  final String image;
  @override
  final String name;
  @override
  final String title;
  @override
  @JsonKey(name: 'offline_payment_id')
  final int offlinePaymentId;
  @override
  final String details;

  @override
  String toString() {
    return 'PaymentMethodModel(paymentType: $paymentType, paymentTypeKey: $paymentTypeKey, image: $image, name: $name, title: $title, offlinePaymentId: $offlinePaymentId, details: $details)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentMethodModel &&
            (identical(other.paymentType, paymentType) ||
                other.paymentType == paymentType) &&
            (identical(other.paymentTypeKey, paymentTypeKey) ||
                other.paymentTypeKey == paymentTypeKey) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.offlinePaymentId, offlinePaymentId) ||
                other.offlinePaymentId == offlinePaymentId) &&
            (identical(other.details, details) || other.details == details));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, paymentType, paymentTypeKey,
      image, name, title, offlinePaymentId, details);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentMethodModelCopyWith<_$_PaymentMethodModel> get copyWith =>
      __$$_PaymentMethodModelCopyWithImpl<_$_PaymentMethodModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentMethodModelToJson(
      this,
    );
  }
}

abstract class _PaymentMethodModel extends PaymentMethodModel {
  const factory _PaymentMethodModel(
      {@JsonKey(name: 'payment_type') required final String paymentType,
      @JsonKey(name: 'payment_type_key') required final String paymentTypeKey,
      required final String image,
      required final String name,
      required final String title,
      @JsonKey(name: 'offline_payment_id') required final int offlinePaymentId,
      required final String details}) = _$_PaymentMethodModel;
  const _PaymentMethodModel._() : super._();

  factory _PaymentMethodModel.fromJson(Map<String, dynamic> json) =
      _$_PaymentMethodModel.fromJson;

  @override
  @JsonKey(name: 'payment_type')
  String get paymentType;
  @override
  @JsonKey(name: 'payment_type_key')
  String get paymentTypeKey;
  @override
  String get image;
  @override
  String get name;
  @override
  String get title;
  @override
  @JsonKey(name: 'offline_payment_id')
  int get offlinePaymentId;
  @override
  String get details;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentMethodModelCopyWith<_$_PaymentMethodModel> get copyWith =>
      throw _privateConstructorUsedError;
}
