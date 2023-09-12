// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coupon_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CouponModel _$CouponModelFromJson(Map<String, dynamic> json) {
  return _CouponModel.fromJson(json);
}

/// @nodoc
mixin _$CouponModel {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "code")
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: "icon")
  String get icon => throw _privateConstructorUsedError;
  @JsonKey(name: "coupon_usages_count")
  int get couponUsagesCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CouponModelCopyWith<CouponModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CouponModelCopyWith<$Res> {
  factory $CouponModelCopyWith(
          CouponModel value, $Res Function(CouponModel) then) =
      _$CouponModelCopyWithImpl<$Res, CouponModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "code") String code,
      @JsonKey(name: "icon") String icon,
      @JsonKey(name: "coupon_usages_count") int couponUsagesCount});
}

/// @nodoc
class _$CouponModelCopyWithImpl<$Res, $Val extends CouponModel>
    implements $CouponModelCopyWith<$Res> {
  _$CouponModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? icon = null,
    Object? couponUsagesCount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      couponUsagesCount: null == couponUsagesCount
          ? _value.couponUsagesCount
          : couponUsagesCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CouponModelCopyWith<$Res>
    implements $CouponModelCopyWith<$Res> {
  factory _$$_CouponModelCopyWith(
          _$_CouponModel value, $Res Function(_$_CouponModel) then) =
      __$$_CouponModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "code") String code,
      @JsonKey(name: "icon") String icon,
      @JsonKey(name: "coupon_usages_count") int couponUsagesCount});
}

/// @nodoc
class __$$_CouponModelCopyWithImpl<$Res>
    extends _$CouponModelCopyWithImpl<$Res, _$_CouponModel>
    implements _$$_CouponModelCopyWith<$Res> {
  __$$_CouponModelCopyWithImpl(
      _$_CouponModel _value, $Res Function(_$_CouponModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? icon = null,
    Object? couponUsagesCount = null,
  }) {
    return _then(_$_CouponModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      couponUsagesCount: null == couponUsagesCount
          ? _value.couponUsagesCount
          : couponUsagesCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_CouponModel extends _CouponModel {
  const _$_CouponModel(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "code") required this.code,
      @JsonKey(name: "icon") required this.icon,
      @JsonKey(name: "coupon_usages_count") required this.couponUsagesCount})
      : super._();

  factory _$_CouponModel.fromJson(Map<String, dynamic> json) =>
      _$$_CouponModelFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "code")
  final String code;
  @override
  @JsonKey(name: "icon")
  final String icon;
  @override
  @JsonKey(name: "coupon_usages_count")
  final int couponUsagesCount;

  @override
  String toString() {
    return 'CouponModel(id: $id, code: $code, icon: $icon, couponUsagesCount: $couponUsagesCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CouponModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.couponUsagesCount, couponUsagesCount) ||
                other.couponUsagesCount == couponUsagesCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, code, icon, couponUsagesCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CouponModelCopyWith<_$_CouponModel> get copyWith =>
      __$$_CouponModelCopyWithImpl<_$_CouponModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CouponModelToJson(
      this,
    );
  }
}

abstract class _CouponModel extends CouponModel {
  const factory _CouponModel(
      {@JsonKey(name: "id") required final int id,
      @JsonKey(name: "code") required final String code,
      @JsonKey(name: "icon") required final String icon,
      @JsonKey(name: "coupon_usages_count")
      required final int couponUsagesCount}) = _$_CouponModel;
  const _CouponModel._() : super._();

  factory _CouponModel.fromJson(Map<String, dynamic> json) =
      _$_CouponModel.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "code")
  String get code;
  @override
  @JsonKey(name: "icon")
  String get icon;
  @override
  @JsonKey(name: "coupon_usages_count")
  int get couponUsagesCount;
  @override
  @JsonKey(ignore: true)
  _$$_CouponModelCopyWith<_$_CouponModel> get copyWith =>
      throw _privateConstructorUsedError;
}
