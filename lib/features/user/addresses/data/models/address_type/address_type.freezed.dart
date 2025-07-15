// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddressType _$AddressTypeFromJson(Map<String, dynamic> json) {
  return _AddressType.fromJson(json);
}

/// @nodoc
mixin _$AddressType {
  String get key => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressTypeCopyWith<AddressType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressTypeCopyWith<$Res> {
  factory $AddressTypeCopyWith(
          AddressType value, $Res Function(AddressType) then) =
      _$AddressTypeCopyWithImpl<$Res, AddressType>;
  @useResult
  $Res call({String key, String label});
}

/// @nodoc
class _$AddressTypeCopyWithImpl<$Res, $Val extends AddressType>
    implements $AddressTypeCopyWith<$Res> {
  _$AddressTypeCopyWithImpl(this._value, this._then);

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
abstract class _$$_AddressTypeCopyWith<$Res>
    implements $AddressTypeCopyWith<$Res> {
  factory _$$_AddressTypeCopyWith(
          _$_AddressType value, $Res Function(_$_AddressType) then) =
      __$$_AddressTypeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key, String label});
}

/// @nodoc
class __$$_AddressTypeCopyWithImpl<$Res>
    extends _$AddressTypeCopyWithImpl<$Res, _$_AddressType>
    implements _$$_AddressTypeCopyWith<$Res> {
  __$$_AddressTypeCopyWithImpl(
      _$_AddressType _value, $Res Function(_$_AddressType) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? label = null,
  }) {
    return _then(_$_AddressType(
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

@JsonSerializable(explicitToJson: true)
class _$_AddressType extends _AddressType {
  _$_AddressType({required this.key, required this.label}) : super._();

  factory _$_AddressType.fromJson(Map<String, dynamic> json) =>
      _$$_AddressTypeFromJson(json);

  @override
  final String key;
  @override
  final String label;

  @override
  String toString() {
    return 'AddressType(key: $key, label: $label)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddressType &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.label, label) || other.label == label));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, label);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddressTypeCopyWith<_$_AddressType> get copyWith =>
      __$$_AddressTypeCopyWithImpl<_$_AddressType>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddressTypeToJson(
      this,
    );
  }
}

abstract class _AddressType extends AddressType {
  factory _AddressType(
      {required final String key,
      required final String label}) = _$_AddressType;
  _AddressType._() : super._();

  factory _AddressType.fromJson(Map<String, dynamic> json) =
      _$_AddressType.fromJson;

  @override
  String get key;
  @override
  String get label;
  @override
  @JsonKey(ignore: true)
  _$$_AddressTypeCopyWith<_$_AddressType> get copyWith =>
      throw _privateConstructorUsedError;
}
