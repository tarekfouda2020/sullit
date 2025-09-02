// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gift_card_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GiftCardModel _$GiftCardModelFromJson(Map<String, dynamic> json) {
  return _GiftCardModel.fromJson(json);
}

/// @nodoc
mixin _$GiftCardModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  @JsonKey(name: "validity_days")
  int get validateDays => throw _privateConstructorUsedError;
  @JsonKey(name: "expired_at")
  String? get expiredAt => throw _privateConstructorUsedError;
  @JsonKey(name: "expired_in_days")
  int? get expiredInDays => throw _privateConstructorUsedError;
  @JsonKey(name: "is_expired")
  bool? get isExpired => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GiftCardModelCopyWith<GiftCardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GiftCardModelCopyWith<$Res> {
  factory $GiftCardModelCopyWith(
          GiftCardModel value, $Res Function(GiftCardModel) then) =
      _$GiftCardModelCopyWithImpl<$Res, GiftCardModel>;
  @useResult
  $Res call(
      {int id,
      String title,
      String? code,
      String price,
      String value,
      @JsonKey(name: "validity_days") int validateDays,
      @JsonKey(name: "expired_at") String? expiredAt,
      @JsonKey(name: "expired_in_days") int? expiredInDays,
      @JsonKey(name: "is_expired") bool? isExpired});
}

/// @nodoc
class _$GiftCardModelCopyWithImpl<$Res, $Val extends GiftCardModel>
    implements $GiftCardModelCopyWith<$Res> {
  _$GiftCardModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? code = freezed,
    Object? price = null,
    Object? value = null,
    Object? validateDays = null,
    Object? expiredAt = freezed,
    Object? expiredInDays = freezed,
    Object? isExpired = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      validateDays: null == validateDays
          ? _value.validateDays
          : validateDays // ignore: cast_nullable_to_non_nullable
              as int,
      expiredAt: freezed == expiredAt
          ? _value.expiredAt
          : expiredAt // ignore: cast_nullable_to_non_nullable
              as String?,
      expiredInDays: freezed == expiredInDays
          ? _value.expiredInDays
          : expiredInDays // ignore: cast_nullable_to_non_nullable
              as int?,
      isExpired: freezed == isExpired
          ? _value.isExpired
          : isExpired // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GiftCardModelCopyWith<$Res>
    implements $GiftCardModelCopyWith<$Res> {
  factory _$$_GiftCardModelCopyWith(
          _$_GiftCardModel value, $Res Function(_$_GiftCardModel) then) =
      __$$_GiftCardModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String? code,
      String price,
      String value,
      @JsonKey(name: "validity_days") int validateDays,
      @JsonKey(name: "expired_at") String? expiredAt,
      @JsonKey(name: "expired_in_days") int? expiredInDays,
      @JsonKey(name: "is_expired") bool? isExpired});
}

/// @nodoc
class __$$_GiftCardModelCopyWithImpl<$Res>
    extends _$GiftCardModelCopyWithImpl<$Res, _$_GiftCardModel>
    implements _$$_GiftCardModelCopyWith<$Res> {
  __$$_GiftCardModelCopyWithImpl(
      _$_GiftCardModel _value, $Res Function(_$_GiftCardModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? code = freezed,
    Object? price = null,
    Object? value = null,
    Object? validateDays = null,
    Object? expiredAt = freezed,
    Object? expiredInDays = freezed,
    Object? isExpired = freezed,
  }) {
    return _then(_$_GiftCardModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      validateDays: null == validateDays
          ? _value.validateDays
          : validateDays // ignore: cast_nullable_to_non_nullable
              as int,
      expiredAt: freezed == expiredAt
          ? _value.expiredAt
          : expiredAt // ignore: cast_nullable_to_non_nullable
              as String?,
      expiredInDays: freezed == expiredInDays
          ? _value.expiredInDays
          : expiredInDays // ignore: cast_nullable_to_non_nullable
              as int?,
      isExpired: freezed == isExpired
          ? _value.isExpired
          : isExpired // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_GiftCardModel extends _GiftCardModel {
  _$_GiftCardModel(
      {required this.id,
      required this.title,
      this.code,
      required this.price,
      required this.value,
      @JsonKey(name: "validity_days") required this.validateDays,
      @JsonKey(name: "expired_at") this.expiredAt,
      @JsonKey(name: "expired_in_days") this.expiredInDays,
      @JsonKey(name: "is_expired") this.isExpired})
      : super._();

  factory _$_GiftCardModel.fromJson(Map<String, dynamic> json) =>
      _$$_GiftCardModelFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String? code;
  @override
  final String price;
  @override
  final String value;
  @override
  @JsonKey(name: "validity_days")
  final int validateDays;
  @override
  @JsonKey(name: "expired_at")
  final String? expiredAt;
  @override
  @JsonKey(name: "expired_in_days")
  final int? expiredInDays;
  @override
  @JsonKey(name: "is_expired")
  final bool? isExpired;

  @override
  String toString() {
    return 'GiftCardModel(id: $id, title: $title, code: $code, price: $price, value: $value, validateDays: $validateDays, expiredAt: $expiredAt, expiredInDays: $expiredInDays, isExpired: $isExpired)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GiftCardModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.validateDays, validateDays) ||
                other.validateDays == validateDays) &&
            (identical(other.expiredAt, expiredAt) ||
                other.expiredAt == expiredAt) &&
            (identical(other.expiredInDays, expiredInDays) ||
                other.expiredInDays == expiredInDays) &&
            (identical(other.isExpired, isExpired) ||
                other.isExpired == isExpired));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, code, price, value,
      validateDays, expiredAt, expiredInDays, isExpired);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GiftCardModelCopyWith<_$_GiftCardModel> get copyWith =>
      __$$_GiftCardModelCopyWithImpl<_$_GiftCardModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GiftCardModelToJson(
      this,
    );
  }
}

abstract class _GiftCardModel extends GiftCardModel {
  factory _GiftCardModel(
      {required final int id,
      required final String title,
      final String? code,
      required final String price,
      required final String value,
      @JsonKey(name: "validity_days") required final int validateDays,
      @JsonKey(name: "expired_at") final String? expiredAt,
      @JsonKey(name: "expired_in_days") final int? expiredInDays,
      @JsonKey(name: "is_expired") final bool? isExpired}) = _$_GiftCardModel;
  _GiftCardModel._() : super._();

  factory _GiftCardModel.fromJson(Map<String, dynamic> json) =
      _$_GiftCardModel.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String? get code;
  @override
  String get price;
  @override
  String get value;
  @override
  @JsonKey(name: "validity_days")
  int get validateDays;
  @override
  @JsonKey(name: "expired_at")
  String? get expiredAt;
  @override
  @JsonKey(name: "expired_in_days")
  int? get expiredInDays;
  @override
  @JsonKey(name: "is_expired")
  bool? get isExpired;
  @override
  @JsonKey(ignore: true)
  _$$_GiftCardModelCopyWith<_$_GiftCardModel> get copyWith =>
      throw _privateConstructorUsedError;
}
