// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pay_method_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PayMethodModel _$PayMethodModelFromJson(Map<String, dynamic> json) {
  return _PayMethodModel.fromJson(json);
}

/// @nodoc
mixin _$PayMethodModel {
  @JsonKey(name: "payment_type")
  String get paymentType => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_type_key")
  String get paymentTypeKey => throw _privateConstructorUsedError;
  @JsonKey(name: "offline_payment_id")
  int get offlinePaymentId => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get details => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PayMethodModelCopyWith<PayMethodModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayMethodModelCopyWith<$Res> {
  factory $PayMethodModelCopyWith(
          PayMethodModel value, $Res Function(PayMethodModel) then) =
      _$PayMethodModelCopyWithImpl<$Res, PayMethodModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "payment_type") String paymentType,
      @JsonKey(name: "payment_type_key") String paymentTypeKey,
      @JsonKey(name: "offline_payment_id") int offlinePaymentId,
      String image,
      String details,
      String name,
      String title});
}

/// @nodoc
class _$PayMethodModelCopyWithImpl<$Res, $Val extends PayMethodModel>
    implements $PayMethodModelCopyWith<$Res> {
  _$PayMethodModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentType = null,
    Object? paymentTypeKey = null,
    Object? offlinePaymentId = null,
    Object? image = null,
    Object? details = null,
    Object? name = null,
    Object? title = null,
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
      offlinePaymentId: null == offlinePaymentId
          ? _value.offlinePaymentId
          : offlinePaymentId // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PayMethodModelCopyWith<$Res>
    implements $PayMethodModelCopyWith<$Res> {
  factory _$$_PayMethodModelCopyWith(
          _$_PayMethodModel value, $Res Function(_$_PayMethodModel) then) =
      __$$_PayMethodModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "payment_type") String paymentType,
      @JsonKey(name: "payment_type_key") String paymentTypeKey,
      @JsonKey(name: "offline_payment_id") int offlinePaymentId,
      String image,
      String details,
      String name,
      String title});
}

/// @nodoc
class __$$_PayMethodModelCopyWithImpl<$Res>
    extends _$PayMethodModelCopyWithImpl<$Res, _$_PayMethodModel>
    implements _$$_PayMethodModelCopyWith<$Res> {
  __$$_PayMethodModelCopyWithImpl(
      _$_PayMethodModel _value, $Res Function(_$_PayMethodModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentType = null,
    Object? paymentTypeKey = null,
    Object? offlinePaymentId = null,
    Object? image = null,
    Object? details = null,
    Object? name = null,
    Object? title = null,
  }) {
    return _then(_$_PayMethodModel(
      paymentType: null == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as String,
      paymentTypeKey: null == paymentTypeKey
          ? _value.paymentTypeKey
          : paymentTypeKey // ignore: cast_nullable_to_non_nullable
              as String,
      offlinePaymentId: null == offlinePaymentId
          ? _value.offlinePaymentId
          : offlinePaymentId // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_PayMethodModel extends _PayMethodModel {
  _$_PayMethodModel(
      {@JsonKey(name: "payment_type") required this.paymentType,
      @JsonKey(name: "payment_type_key") required this.paymentTypeKey,
      @JsonKey(name: "offline_payment_id") required this.offlinePaymentId,
      required this.image,
      required this.details,
      required this.name,
      required this.title})
      : super._();

  factory _$_PayMethodModel.fromJson(Map<String, dynamic> json) =>
      _$$_PayMethodModelFromJson(json);

  @override
  @JsonKey(name: "payment_type")
  final String paymentType;
  @override
  @JsonKey(name: "payment_type_key")
  final String paymentTypeKey;
  @override
  @JsonKey(name: "offline_payment_id")
  final int offlinePaymentId;
  @override
  final String image;
  @override
  final String details;
  @override
  final String name;
  @override
  final String title;

  @override
  String toString() {
    return 'PayMethodModel(paymentType: $paymentType, paymentTypeKey: $paymentTypeKey, offlinePaymentId: $offlinePaymentId, image: $image, details: $details, name: $name, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PayMethodModel &&
            (identical(other.paymentType, paymentType) ||
                other.paymentType == paymentType) &&
            (identical(other.paymentTypeKey, paymentTypeKey) ||
                other.paymentTypeKey == paymentTypeKey) &&
            (identical(other.offlinePaymentId, offlinePaymentId) ||
                other.offlinePaymentId == offlinePaymentId) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.details, details) || other.details == details) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, paymentType, paymentTypeKey,
      offlinePaymentId, image, details, name, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PayMethodModelCopyWith<_$_PayMethodModel> get copyWith =>
      __$$_PayMethodModelCopyWithImpl<_$_PayMethodModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PayMethodModelToJson(
      this,
    );
  }
}

abstract class _PayMethodModel extends PayMethodModel {
  factory _PayMethodModel(
      {@JsonKey(name: "payment_type") required final String paymentType,
      @JsonKey(name: "payment_type_key") required final String paymentTypeKey,
      @JsonKey(name: "offline_payment_id") required final int offlinePaymentId,
      required final String image,
      required final String details,
      required final String name,
      required final String title}) = _$_PayMethodModel;
  _PayMethodModel._() : super._();

  factory _PayMethodModel.fromJson(Map<String, dynamic> json) =
      _$_PayMethodModel.fromJson;

  @override
  @JsonKey(name: "payment_type")
  String get paymentType;
  @override
  @JsonKey(name: "payment_type_key")
  String get paymentTypeKey;
  @override
  @JsonKey(name: "offline_payment_id")
  int get offlinePaymentId;
  @override
  String get image;
  @override
  String get details;
  @override
  String get name;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$_PayMethodModelCopyWith<_$_PayMethodModel> get copyWith =>
      throw _privateConstructorUsedError;
}
