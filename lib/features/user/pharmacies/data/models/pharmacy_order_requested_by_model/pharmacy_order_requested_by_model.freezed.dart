// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pharmacy_order_requested_by_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PharmacyOrderRequestedBy _$PharmacyOrderRequestedByFromJson(
    Map<String, dynamic> json) {
  return _PharmacyOrderRequestedBy.fromJson(json);
}

/// @nodoc
mixin _$PharmacyOrderRequestedBy {
  String get key => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PharmacyOrderRequestedByCopyWith<PharmacyOrderRequestedBy> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PharmacyOrderRequestedByCopyWith<$Res> {
  factory $PharmacyOrderRequestedByCopyWith(PharmacyOrderRequestedBy value,
          $Res Function(PharmacyOrderRequestedBy) then) =
      _$PharmacyOrderRequestedByCopyWithImpl<$Res, PharmacyOrderRequestedBy>;
  @useResult
  $Res call({String key, String label});
}

/// @nodoc
class _$PharmacyOrderRequestedByCopyWithImpl<$Res,
        $Val extends PharmacyOrderRequestedBy>
    implements $PharmacyOrderRequestedByCopyWith<$Res> {
  _$PharmacyOrderRequestedByCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? label = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PharmacyOrderRequestedByCopyWith<$Res>
    implements $PharmacyOrderRequestedByCopyWith<$Res> {
  factory _$$_PharmacyOrderRequestedByCopyWith(
          _$_PharmacyOrderRequestedBy value,
          $Res Function(_$_PharmacyOrderRequestedBy) then) =
      __$$_PharmacyOrderRequestedByCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key, String label});
}

/// @nodoc
class __$$_PharmacyOrderRequestedByCopyWithImpl<$Res>
    extends _$PharmacyOrderRequestedByCopyWithImpl<$Res,
        _$_PharmacyOrderRequestedBy>
    implements _$$_PharmacyOrderRequestedByCopyWith<$Res> {
  __$$_PharmacyOrderRequestedByCopyWithImpl(_$_PharmacyOrderRequestedBy _value,
      $Res Function(_$_PharmacyOrderRequestedBy) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? label = null,
  }) {
    return _then(_$_PharmacyOrderRequestedBy(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PharmacyOrderRequestedBy extends _PharmacyOrderRequestedBy {
  const _$_PharmacyOrderRequestedBy({required this.key, required this.label})
      : super._();

  factory _$_PharmacyOrderRequestedBy.fromJson(Map<String, dynamic> json) =>
      _$$_PharmacyOrderRequestedByFromJson(json);

  @override
  final String key;
  @override
  final String label;

  @override
  String toString() {
    return 'PharmacyOrderRequestedBy(key: $key, label: $label)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PharmacyOrderRequestedBy &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.label, label) || other.label == label));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, label);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PharmacyOrderRequestedByCopyWith<_$_PharmacyOrderRequestedBy>
      get copyWith => __$$_PharmacyOrderRequestedByCopyWithImpl<
          _$_PharmacyOrderRequestedBy>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PharmacyOrderRequestedByToJson(
      this,
    );
  }
}

abstract class _PharmacyOrderRequestedBy extends PharmacyOrderRequestedBy {
  const factory _PharmacyOrderRequestedBy(
      {required final String key,
      required final String label}) = _$_PharmacyOrderRequestedBy;
  const _PharmacyOrderRequestedBy._() : super._();

  factory _PharmacyOrderRequestedBy.fromJson(Map<String, dynamic> json) =
      _$_PharmacyOrderRequestedBy.fromJson;

  @override
  String get key;
  @override
  String get label;
  @override
  @JsonKey(ignore: true)
  _$$_PharmacyOrderRequestedByCopyWith<_$_PharmacyOrderRequestedBy>
      get copyWith => throw _privateConstructorUsedError;
}
