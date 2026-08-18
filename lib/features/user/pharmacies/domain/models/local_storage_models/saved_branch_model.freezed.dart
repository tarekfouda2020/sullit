// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'saved_branch_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SavedBranchModel _$SavedBranchModelFromJson(Map<String, dynamic> json) {
  return _SavedBranchModel.fromJson(json);
}

/// @nodoc
mixin _$SavedBranchModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'owner_id')
  int get ownerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'owner_name')
  String get ownerName => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  BranchTypeEnum get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SavedBranchModelCopyWith<SavedBranchModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavedBranchModelCopyWith<$Res> {
  factory $SavedBranchModelCopyWith(
          SavedBranchModel value, $Res Function(SavedBranchModel) then) =
      _$SavedBranchModelCopyWithImpl<$Res, SavedBranchModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'owner_id') int ownerId,
      @JsonKey(name: 'owner_name') String ownerName,
      String name,
      BranchTypeEnum type});
}

/// @nodoc
class _$SavedBranchModelCopyWithImpl<$Res, $Val extends SavedBranchModel>
    implements $SavedBranchModelCopyWith<$Res> {
  _$SavedBranchModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ownerId = null,
    Object? ownerName = null,
    Object? name = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int,
      ownerName: null == ownerName
          ? _value.ownerName
          : ownerName // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as BranchTypeEnum,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SavedBranchModelCopyWith<$Res>
    implements $SavedBranchModelCopyWith<$Res> {
  factory _$$_SavedBranchModelCopyWith(
          _$_SavedBranchModel value, $Res Function(_$_SavedBranchModel) then) =
      __$$_SavedBranchModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'owner_id') int ownerId,
      @JsonKey(name: 'owner_name') String ownerName,
      String name,
      BranchTypeEnum type});
}

/// @nodoc
class __$$_SavedBranchModelCopyWithImpl<$Res>
    extends _$SavedBranchModelCopyWithImpl<$Res, _$_SavedBranchModel>
    implements _$$_SavedBranchModelCopyWith<$Res> {
  __$$_SavedBranchModelCopyWithImpl(
      _$_SavedBranchModel _value, $Res Function(_$_SavedBranchModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ownerId = null,
    Object? ownerName = null,
    Object? name = null,
    Object? type = null,
  }) {
    return _then(_$_SavedBranchModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int,
      ownerName: null == ownerName
          ? _value.ownerName
          : ownerName // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as BranchTypeEnum,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SavedBranchModel implements _SavedBranchModel {
  const _$_SavedBranchModel(
      {required this.id,
      @JsonKey(name: 'owner_id') required this.ownerId,
      @JsonKey(name: 'owner_name') required this.ownerName,
      required this.name,
      required this.type});

  factory _$_SavedBranchModel.fromJson(Map<String, dynamic> json) =>
      _$$_SavedBranchModelFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'owner_id')
  final int ownerId;
  @override
  @JsonKey(name: 'owner_name')
  final String ownerName;
  @override
  final String name;
  @override
  final BranchTypeEnum type;

  @override
  String toString() {
    return 'SavedBranchModel(id: $id, ownerId: $ownerId, ownerName: $ownerName, name: $name, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SavedBranchModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.ownerName, ownerName) ||
                other.ownerName == ownerName) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, ownerId, ownerName, name, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SavedBranchModelCopyWith<_$_SavedBranchModel> get copyWith =>
      __$$_SavedBranchModelCopyWithImpl<_$_SavedBranchModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SavedBranchModelToJson(
      this,
    );
  }
}

abstract class _SavedBranchModel implements SavedBranchModel {
  const factory _SavedBranchModel(
      {required final int id,
      @JsonKey(name: 'owner_id') required final int ownerId,
      @JsonKey(name: 'owner_name') required final String ownerName,
      required final String name,
      required final BranchTypeEnum type}) = _$_SavedBranchModel;

  factory _SavedBranchModel.fromJson(Map<String, dynamic> json) =
      _$_SavedBranchModel.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'owner_id')
  int get ownerId;
  @override
  @JsonKey(name: 'owner_name')
  String get ownerName;
  @override
  String get name;
  @override
  BranchTypeEnum get type;
  @override
  @JsonKey(ignore: true)
  _$$_SavedBranchModelCopyWith<_$_SavedBranchModel> get copyWith =>
      throw _privateConstructorUsedError;
}
