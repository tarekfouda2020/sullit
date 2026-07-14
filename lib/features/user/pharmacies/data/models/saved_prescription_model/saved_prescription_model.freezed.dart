// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'saved_prescription_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SavedPrescriptionApiModel _$SavedPrescriptionApiModelFromJson(
    Map<String, dynamic> json) {
  return _SavedPrescriptionApiModel.fromJson(json);
}

/// @nodoc
mixin _$SavedPrescriptionApiModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get extension => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_used_at')
  String get lastUsedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SavedPrescriptionApiModelCopyWith<SavedPrescriptionApiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavedPrescriptionApiModelCopyWith<$Res> {
  factory $SavedPrescriptionApiModelCopyWith(SavedPrescriptionApiModel value,
          $Res Function(SavedPrescriptionApiModel) then) =
      _$SavedPrescriptionApiModelCopyWithImpl<$Res, SavedPrescriptionApiModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      String url,
      String type,
      String extension,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'last_used_at') String lastUsedAt});
}

/// @nodoc
class _$SavedPrescriptionApiModelCopyWithImpl<$Res,
        $Val extends SavedPrescriptionApiModel>
    implements $SavedPrescriptionApiModelCopyWith<$Res> {
  _$SavedPrescriptionApiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? url = null,
    Object? type = null,
    Object? extension = null,
    Object? createdAt = null,
    Object? lastUsedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      extension: null == extension
          ? _value.extension
          : extension // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      lastUsedAt: null == lastUsedAt
          ? _value.lastUsedAt
          : lastUsedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SavedPrescriptionApiModelCopyWith<$Res>
    implements $SavedPrescriptionApiModelCopyWith<$Res> {
  factory _$$_SavedPrescriptionApiModelCopyWith(
          _$_SavedPrescriptionApiModel value,
          $Res Function(_$_SavedPrescriptionApiModel) then) =
      __$$_SavedPrescriptionApiModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String url,
      String type,
      String extension,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'last_used_at') String lastUsedAt});
}

/// @nodoc
class __$$_SavedPrescriptionApiModelCopyWithImpl<$Res>
    extends _$SavedPrescriptionApiModelCopyWithImpl<$Res,
        _$_SavedPrescriptionApiModel>
    implements _$$_SavedPrescriptionApiModelCopyWith<$Res> {
  __$$_SavedPrescriptionApiModelCopyWithImpl(
      _$_SavedPrescriptionApiModel _value,
      $Res Function(_$_SavedPrescriptionApiModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? url = null,
    Object? type = null,
    Object? extension = null,
    Object? createdAt = null,
    Object? lastUsedAt = null,
  }) {
    return _then(_$_SavedPrescriptionApiModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      extension: null == extension
          ? _value.extension
          : extension // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      lastUsedAt: null == lastUsedAt
          ? _value.lastUsedAt
          : lastUsedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SavedPrescriptionApiModel extends _SavedPrescriptionApiModel {
  const _$_SavedPrescriptionApiModel(
      {required this.id,
      required this.name,
      required this.url,
      required this.type,
      required this.extension,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'last_used_at') required this.lastUsedAt})
      : super._();

  factory _$_SavedPrescriptionApiModel.fromJson(Map<String, dynamic> json) =>
      _$$_SavedPrescriptionApiModelFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String url;
  @override
  final String type;
  @override
  final String extension;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'last_used_at')
  final String lastUsedAt;

  @override
  String toString() {
    return 'SavedPrescriptionApiModel(id: $id, name: $name, url: $url, type: $type, extension: $extension, createdAt: $createdAt, lastUsedAt: $lastUsedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SavedPrescriptionApiModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.extension, extension) ||
                other.extension == extension) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.lastUsedAt, lastUsedAt) ||
                other.lastUsedAt == lastUsedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, url, type, extension, createdAt, lastUsedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SavedPrescriptionApiModelCopyWith<_$_SavedPrescriptionApiModel>
      get copyWith => __$$_SavedPrescriptionApiModelCopyWithImpl<
          _$_SavedPrescriptionApiModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SavedPrescriptionApiModelToJson(
      this,
    );
  }
}

abstract class _SavedPrescriptionApiModel extends SavedPrescriptionApiModel {
  const factory _SavedPrescriptionApiModel(
          {required final int id,
          required final String name,
          required final String url,
          required final String type,
          required final String extension,
          @JsonKey(name: 'created_at') required final String createdAt,
          @JsonKey(name: 'last_used_at') required final String lastUsedAt}) =
      _$_SavedPrescriptionApiModel;
  const _SavedPrescriptionApiModel._() : super._();

  factory _SavedPrescriptionApiModel.fromJson(Map<String, dynamic> json) =
      _$_SavedPrescriptionApiModel.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get url;
  @override
  String get type;
  @override
  String get extension;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'last_used_at')
  String get lastUsedAt;
  @override
  @JsonKey(ignore: true)
  _$$_SavedPrescriptionApiModelCopyWith<_$_SavedPrescriptionApiModel>
      get copyWith => throw _privateConstructorUsedError;
}
