// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_option_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentOptionModel _$PaymentOptionModelFromJson(Map<String, dynamic> json) {
  return _PaymentOptionModel.fromJson(json);
}

/// @nodoc
mixin _$PaymentOptionModel {
  @JsonKey(name: "payment_type")
  String get paymentType => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_type_key")
  String get paymentTypeKey => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "offline_payment_id")
  int get offlinePaymentId => throw _privateConstructorUsedError;
  String get details => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentOptionModelCopyWith<PaymentOptionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentOptionModelCopyWith<$Res> {
  factory $PaymentOptionModelCopyWith(
          PaymentOptionModel value, $Res Function(PaymentOptionModel) then) =
      _$PaymentOptionModelCopyWithImpl<$Res, PaymentOptionModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "payment_type") String paymentType,
      @JsonKey(name: "payment_type_key") String paymentTypeKey,
      String image,
      String title,
      String? name,
      @JsonKey(name: "offline_payment_id") int offlinePaymentId,
      String details});
}

/// @nodoc
class _$PaymentOptionModelCopyWithImpl<$Res, $Val extends PaymentOptionModel>
    implements $PaymentOptionModelCopyWith<$Res> {
  _$PaymentOptionModelCopyWithImpl(this._value, this._then);

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
    Object? title = null,
    Object? name = freezed,
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
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$_PaymentOptionModelCopyWith<$Res>
    implements $PaymentOptionModelCopyWith<$Res> {
  factory _$$_PaymentOptionModelCopyWith(_$_PaymentOptionModel value,
          $Res Function(_$_PaymentOptionModel) then) =
      __$$_PaymentOptionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "payment_type") String paymentType,
      @JsonKey(name: "payment_type_key") String paymentTypeKey,
      String image,
      String title,
      String? name,
      @JsonKey(name: "offline_payment_id") int offlinePaymentId,
      String details});
}

/// @nodoc
class __$$_PaymentOptionModelCopyWithImpl<$Res>
    extends _$PaymentOptionModelCopyWithImpl<$Res, _$_PaymentOptionModel>
    implements _$$_PaymentOptionModelCopyWith<$Res> {
  __$$_PaymentOptionModelCopyWithImpl(
      _$_PaymentOptionModel _value, $Res Function(_$_PaymentOptionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentType = null,
    Object? paymentTypeKey = null,
    Object? image = null,
    Object? title = null,
    Object? name = freezed,
    Object? offlinePaymentId = null,
    Object? details = null,
  }) {
    return _then(_$_PaymentOptionModel(
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
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$_PaymentOptionModel extends _PaymentOptionModel {
  const _$_PaymentOptionModel(
      {@JsonKey(name: "payment_type") required this.paymentType,
      @JsonKey(name: "payment_type_key") required this.paymentTypeKey,
      required this.image,
      required this.title,
      this.name,
      @JsonKey(name: "offline_payment_id") required this.offlinePaymentId,
      required this.details})
      : super._();

  factory _$_PaymentOptionModel.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentOptionModelFromJson(json);

  @override
  @JsonKey(name: "payment_type")
  final String paymentType;
  @override
  @JsonKey(name: "payment_type_key")
  final String paymentTypeKey;
  @override
  final String image;
  @override
  final String title;
  @override
  final String? name;
  @override
  @JsonKey(name: "offline_payment_id")
  final int offlinePaymentId;
  @override
  final String details;

  @override
  String toString() {
    return 'PaymentOptionModel(paymentType: $paymentType, paymentTypeKey: $paymentTypeKey, image: $image, title: $title, name: $name, offlinePaymentId: $offlinePaymentId, details: $details)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentOptionModel &&
            (identical(other.paymentType, paymentType) ||
                other.paymentType == paymentType) &&
            (identical(other.paymentTypeKey, paymentTypeKey) ||
                other.paymentTypeKey == paymentTypeKey) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.offlinePaymentId, offlinePaymentId) ||
                other.offlinePaymentId == offlinePaymentId) &&
            (identical(other.details, details) || other.details == details));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, paymentType, paymentTypeKey,
      image, title, name, offlinePaymentId, details);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentOptionModelCopyWith<_$_PaymentOptionModel> get copyWith =>
      __$$_PaymentOptionModelCopyWithImpl<_$_PaymentOptionModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentOptionModelToJson(
      this,
    );
  }
}

abstract class _PaymentOptionModel extends PaymentOptionModel {
  const factory _PaymentOptionModel(
      {@JsonKey(name: "payment_type") required final String paymentType,
      @JsonKey(name: "payment_type_key") required final String paymentTypeKey,
      required final String image,
      required final String title,
      final String? name,
      @JsonKey(name: "offline_payment_id") required final int offlinePaymentId,
      required final String details}) = _$_PaymentOptionModel;
  const _PaymentOptionModel._() : super._();

  factory _PaymentOptionModel.fromJson(Map<String, dynamic> json) =
      _$_PaymentOptionModel.fromJson;

  @override
  @JsonKey(name: "payment_type")
  String get paymentType;
  @override
  @JsonKey(name: "payment_type_key")
  String get paymentTypeKey;
  @override
  String get image;
  @override
  String get title;
  @override
  String? get name;
  @override
  @JsonKey(name: "offline_payment_id")
  int get offlinePaymentId;
  @override
  String get details;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentOptionModelCopyWith<_$_PaymentOptionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
