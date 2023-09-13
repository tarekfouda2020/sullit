// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_types_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WalletTypesModel _$WalletTypesModelFromJson(Map<String, dynamic> json) {
  return _WalletTypesModel.fromJson(json);
}

/// @nodoc
mixin _$WalletTypesModel {
  @JsonKey(name: "payment_type")
  String get paymentType => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_type_key")
  String get paymentTypeKey => throw _privateConstructorUsedError;
  @JsonKey(name: "image")
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: "offline_payment_id")
  int get offlinePaymentId => throw _privateConstructorUsedError;
  @JsonKey(name: "details")
  String get details => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WalletTypesModelCopyWith<WalletTypesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletTypesModelCopyWith<$Res> {
  factory $WalletTypesModelCopyWith(
          WalletTypesModel value, $Res Function(WalletTypesModel) then) =
      _$WalletTypesModelCopyWithImpl<$Res, WalletTypesModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "payment_type") String paymentType,
      @JsonKey(name: "payment_type_key") String paymentTypeKey,
      @JsonKey(name: "image") String image,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "title") String title,
      @JsonKey(name: "offline_payment_id") int offlinePaymentId,
      @JsonKey(name: "details") String details});
}

/// @nodoc
class _$WalletTypesModelCopyWithImpl<$Res, $Val extends WalletTypesModel>
    implements $WalletTypesModelCopyWith<$Res> {
  _$WalletTypesModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_WalletTypesModelCopyWith<$Res>
    implements $WalletTypesModelCopyWith<$Res> {
  factory _$$_WalletTypesModelCopyWith(
          _$_WalletTypesModel value, $Res Function(_$_WalletTypesModel) then) =
      __$$_WalletTypesModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "payment_type") String paymentType,
      @JsonKey(name: "payment_type_key") String paymentTypeKey,
      @JsonKey(name: "image") String image,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "title") String title,
      @JsonKey(name: "offline_payment_id") int offlinePaymentId,
      @JsonKey(name: "details") String details});
}

/// @nodoc
class __$$_WalletTypesModelCopyWithImpl<$Res>
    extends _$WalletTypesModelCopyWithImpl<$Res, _$_WalletTypesModel>
    implements _$$_WalletTypesModelCopyWith<$Res> {
  __$$_WalletTypesModelCopyWithImpl(
      _$_WalletTypesModel _value, $Res Function(_$_WalletTypesModel) _then)
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
    return _then(_$_WalletTypesModel(
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
class _$_WalletTypesModel extends _WalletTypesModel {
  const _$_WalletTypesModel(
      {@JsonKey(name: "payment_type") required this.paymentType,
      @JsonKey(name: "payment_type_key") required this.paymentTypeKey,
      @JsonKey(name: "image") required this.image,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "title") required this.title,
      @JsonKey(name: "offline_payment_id") required this.offlinePaymentId,
      @JsonKey(name: "details") required this.details})
      : super._();

  factory _$_WalletTypesModel.fromJson(Map<String, dynamic> json) =>
      _$$_WalletTypesModelFromJson(json);

  @override
  @JsonKey(name: "payment_type")
  final String paymentType;
  @override
  @JsonKey(name: "payment_type_key")
  final String paymentTypeKey;
  @override
  @JsonKey(name: "image")
  final String image;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "title")
  final String title;
  @override
  @JsonKey(name: "offline_payment_id")
  final int offlinePaymentId;
  @override
  @JsonKey(name: "details")
  final String details;

  @override
  String toString() {
    return 'WalletTypesModel(paymentType: $paymentType, paymentTypeKey: $paymentTypeKey, image: $image, name: $name, title: $title, offlinePaymentId: $offlinePaymentId, details: $details)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WalletTypesModel &&
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
  _$$_WalletTypesModelCopyWith<_$_WalletTypesModel> get copyWith =>
      __$$_WalletTypesModelCopyWithImpl<_$_WalletTypesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WalletTypesModelToJson(
      this,
    );
  }
}

abstract class _WalletTypesModel extends WalletTypesModel {
  const factory _WalletTypesModel(
      {@JsonKey(name: "payment_type") required final String paymentType,
      @JsonKey(name: "payment_type_key") required final String paymentTypeKey,
      @JsonKey(name: "image") required final String image,
      @JsonKey(name: "name") required final String name,
      @JsonKey(name: "title") required final String title,
      @JsonKey(name: "offline_payment_id") required final int offlinePaymentId,
      @JsonKey(name: "details")
      required final String details}) = _$_WalletTypesModel;
  const _WalletTypesModel._() : super._();

  factory _WalletTypesModel.fromJson(Map<String, dynamic> json) =
      _$_WalletTypesModel.fromJson;

  @override
  @JsonKey(name: "payment_type")
  String get paymentType;
  @override
  @JsonKey(name: "payment_type_key")
  String get paymentTypeKey;
  @override
  @JsonKey(name: "image")
  String get image;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "title")
  String get title;
  @override
  @JsonKey(name: "offline_payment_id")
  int get offlinePaymentId;
  @override
  @JsonKey(name: "details")
  String get details;
  @override
  @JsonKey(ignore: true)
  _$$_WalletTypesModelCopyWith<_$_WalletTypesModel> get copyWith =>
      throw _privateConstructorUsedError;
}
