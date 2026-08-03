// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pick_up_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PickUpModel _$PickUpModelFromJson(Map<String, dynamic> json) {
  return _PickUpModel.fromJson(json);
}

/// @nodoc
mixin _$PickUpModel {
  int get id => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'postal_code')
  String get postalCode => throw _privateConstructorUsedError;
  double? get lat => throw _privateConstructorUsedError;
  double? get lang => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PickUpModelCopyWith<PickUpModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PickUpModelCopyWith<$Res> {
  factory $PickUpModelCopyWith(
          PickUpModel value, $Res Function(PickUpModel) then) =
      _$PickUpModelCopyWithImpl<$Res, PickUpModel>;
  @useResult
  $Res call(
      {int id,
      String address,
      @JsonKey(name: 'postal_code') String postalCode,
      double? lat,
      double? lang});
}

/// @nodoc
class _$PickUpModelCopyWithImpl<$Res, $Val extends PickUpModel>
    implements $PickUpModelCopyWith<$Res> {
  _$PickUpModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? address = null,
    Object? postalCode = null,
    Object? lat = freezed,
    Object? lang = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      postalCode: null == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lang: freezed == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PickUpModelCopyWith<$Res>
    implements $PickUpModelCopyWith<$Res> {
  factory _$$_PickUpModelCopyWith(
          _$_PickUpModel value, $Res Function(_$_PickUpModel) then) =
      __$$_PickUpModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String address,
      @JsonKey(name: 'postal_code') String postalCode,
      double? lat,
      double? lang});
}

/// @nodoc
class __$$_PickUpModelCopyWithImpl<$Res>
    extends _$PickUpModelCopyWithImpl<$Res, _$_PickUpModel>
    implements _$$_PickUpModelCopyWith<$Res> {
  __$$_PickUpModelCopyWithImpl(
      _$_PickUpModel _value, $Res Function(_$_PickUpModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? address = null,
    Object? postalCode = null,
    Object? lat = freezed,
    Object? lang = freezed,
  }) {
    return _then(_$_PickUpModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      postalCode: null == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lang: freezed == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_PickUpModel extends _PickUpModel {
  const _$_PickUpModel(
      {required this.id,
      required this.address,
      @JsonKey(name: 'postal_code') required this.postalCode,
      this.lat,
      this.lang})
      : super._();

  factory _$_PickUpModel.fromJson(Map<String, dynamic> json) =>
      _$$_PickUpModelFromJson(json);

  @override
  final int id;
  @override
  final String address;
  @override
  @JsonKey(name: 'postal_code')
  final String postalCode;
  @override
  final double? lat;
  @override
  final double? lang;

  @override
  String toString() {
    return 'PickUpModel(id: $id, address: $address, postalCode: $postalCode, lat: $lat, lang: $lang)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PickUpModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.postalCode, postalCode) ||
                other.postalCode == postalCode) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lang, lang) || other.lang == lang));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, address, postalCode, lat, lang);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PickUpModelCopyWith<_$_PickUpModel> get copyWith =>
      __$$_PickUpModelCopyWithImpl<_$_PickUpModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PickUpModelToJson(
      this,
    );
  }
}

abstract class _PickUpModel extends PickUpModel {
  const factory _PickUpModel(
      {required final int id,
      required final String address,
      @JsonKey(name: 'postal_code') required final String postalCode,
      final double? lat,
      final double? lang}) = _$_PickUpModel;
  const _PickUpModel._() : super._();

  factory _PickUpModel.fromJson(Map<String, dynamic> json) =
      _$_PickUpModel.fromJson;

  @override
  int get id;
  @override
  String get address;
  @override
  @JsonKey(name: 'postal_code')
  String get postalCode;
  @override
  double? get lat;
  @override
  double? get lang;
  @override
  @JsonKey(ignore: true)
  _$$_PickUpModelCopyWith<_$_PickUpModel> get copyWith =>
      throw _privateConstructorUsedError;
}
