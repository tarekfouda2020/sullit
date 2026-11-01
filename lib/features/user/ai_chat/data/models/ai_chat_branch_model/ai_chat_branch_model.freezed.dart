// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ai_chat_branch_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AiChatBranchModel _$AiChatBranchModelFromJson(Map<String, dynamic> json) {
  return _AiChatBranchModel.fromJson(json);
}

/// @nodoc
mixin _$AiChatBranchModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_open')
  bool? get isOpen => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AiChatBranchModelCopyWith<AiChatBranchModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AiChatBranchModelCopyWith<$Res> {
  factory $AiChatBranchModelCopyWith(
          AiChatBranchModel value, $Res Function(AiChatBranchModel) then) =
      _$AiChatBranchModelCopyWithImpl<$Res, AiChatBranchModel>;
  @useResult
  $Res call({int? id, String? name, @JsonKey(name: 'is_open') bool? isOpen});
}

/// @nodoc
class _$AiChatBranchModelCopyWithImpl<$Res, $Val extends AiChatBranchModel>
    implements $AiChatBranchModelCopyWith<$Res> {
  _$AiChatBranchModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? isOpen = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      isOpen: freezed == isOpen
          ? _value.isOpen
          : isOpen // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AiChatBranchModelCopyWith<$Res>
    implements $AiChatBranchModelCopyWith<$Res> {
  factory _$$_AiChatBranchModelCopyWith(_$_AiChatBranchModel value,
          $Res Function(_$_AiChatBranchModel) then) =
      __$$_AiChatBranchModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, @JsonKey(name: 'is_open') bool? isOpen});
}

/// @nodoc
class __$$_AiChatBranchModelCopyWithImpl<$Res>
    extends _$AiChatBranchModelCopyWithImpl<$Res, _$_AiChatBranchModel>
    implements _$$_AiChatBranchModelCopyWith<$Res> {
  __$$_AiChatBranchModelCopyWithImpl(
      _$_AiChatBranchModel _value, $Res Function(_$_AiChatBranchModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? isOpen = freezed,
  }) {
    return _then(_$_AiChatBranchModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      isOpen: freezed == isOpen
          ? _value.isOpen
          : isOpen // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_AiChatBranchModel extends _AiChatBranchModel {
  const _$_AiChatBranchModel(
      {this.id, this.name, @JsonKey(name: 'is_open') this.isOpen})
      : super._();

  factory _$_AiChatBranchModel.fromJson(Map<String, dynamic> json) =>
      _$$_AiChatBranchModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  @JsonKey(name: 'is_open')
  final bool? isOpen;

  @override
  String toString() {
    return 'AiChatBranchModel(id: $id, name: $name, isOpen: $isOpen)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AiChatBranchModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isOpen, isOpen) || other.isOpen == isOpen));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, isOpen);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AiChatBranchModelCopyWith<_$_AiChatBranchModel> get copyWith =>
      __$$_AiChatBranchModelCopyWithImpl<_$_AiChatBranchModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AiChatBranchModelToJson(
      this,
    );
  }
}

abstract class _AiChatBranchModel extends AiChatBranchModel {
  const factory _AiChatBranchModel(
      {final int? id,
      final String? name,
      @JsonKey(name: 'is_open') final bool? isOpen}) = _$_AiChatBranchModel;
  const _AiChatBranchModel._() : super._();

  factory _AiChatBranchModel.fromJson(Map<String, dynamic> json) =
      _$_AiChatBranchModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(name: 'is_open')
  bool? get isOpen;
  @override
  @JsonKey(ignore: true)
  _$$_AiChatBranchModelCopyWith<_$_AiChatBranchModel> get copyWith =>
      throw _privateConstructorUsedError;
}
