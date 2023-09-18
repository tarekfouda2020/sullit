// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sort_types_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SortTypesModel _$SortTypesModelFromJson(Map<String, dynamic> json) {
  return _SortTypesModel.fromJson(json);
}

/// @nodoc
mixin _$SortTypesModel {
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SortTypesModelCopyWith<SortTypesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SortTypesModelCopyWith<$Res> {
  factory $SortTypesModelCopyWith(
          SortTypesModel value, $Res Function(SortTypesModel) then) =
      _$SortTypesModelCopyWithImpl<$Res, SortTypesModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "name") String name, @JsonKey(name: "type") String type});
}

/// @nodoc
class _$SortTypesModelCopyWithImpl<$Res, $Val extends SortTypesModel>
    implements $SortTypesModelCopyWith<$Res> {
  _$SortTypesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SortTypesModelCopyWith<$Res>
    implements $SortTypesModelCopyWith<$Res> {
  factory _$$_SortTypesModelCopyWith(
          _$_SortTypesModel value, $Res Function(_$_SortTypesModel) then) =
      __$$_SortTypesModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "name") String name, @JsonKey(name: "type") String type});
}

/// @nodoc
class __$$_SortTypesModelCopyWithImpl<$Res>
    extends _$SortTypesModelCopyWithImpl<$Res, _$_SortTypesModel>
    implements _$$_SortTypesModelCopyWith<$Res> {
  __$$_SortTypesModelCopyWithImpl(
      _$_SortTypesModel _value, $Res Function(_$_SortTypesModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
  }) {
    return _then(_$_SortTypesModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_SortTypesModel extends _SortTypesModel {
  const _$_SortTypesModel(
      {@JsonKey(name: "name") required this.name,
      @JsonKey(name: "type") required this.type})
      : super._();

  factory _$_SortTypesModel.fromJson(Map<String, dynamic> json) =>
      _$$_SortTypesModelFromJson(json);

  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "type")
  final String type;

  @override
  String toString() {
    return 'SortTypesModel(name: $name, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SortTypesModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SortTypesModelCopyWith<_$_SortTypesModel> get copyWith =>
      __$$_SortTypesModelCopyWithImpl<_$_SortTypesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SortTypesModelToJson(
      this,
    );
  }
}

abstract class _SortTypesModel extends SortTypesModel {
  const factory _SortTypesModel(
      {@JsonKey(name: "name") required final String name,
      @JsonKey(name: "type") required final String type}) = _$_SortTypesModel;
  const _SortTypesModel._() : super._();

  factory _SortTypesModel.fromJson(Map<String, dynamic> json) =
      _$_SortTypesModel.fromJson;

  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "type")
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$_SortTypesModelCopyWith<_$_SortTypesModel> get copyWith =>
      throw _privateConstructorUsedError;
}
