// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ai_chat_history_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AiChatHistoryModel _$AiChatHistoryModelFromJson(Map<String, dynamic> json) {
  return _AiChatHistoryModel.fromJson(json);
}

/// @nodoc
mixin _$AiChatHistoryModel {
  String get id => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AiChatHistoryModelCopyWith<AiChatHistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AiChatHistoryModelCopyWith<$Res> {
  factory $AiChatHistoryModelCopyWith(
          AiChatHistoryModel value, $Res Function(AiChatHistoryModel) then) =
      _$AiChatHistoryModelCopyWithImpl<$Res, AiChatHistoryModel>;
  @useResult
  $Res call({String id, String role, String content});
}

/// @nodoc
class _$AiChatHistoryModelCopyWithImpl<$Res, $Val extends AiChatHistoryModel>
    implements $AiChatHistoryModelCopyWith<$Res> {
  _$AiChatHistoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? role = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AiChatHistoryModelCopyWith<$Res>
    implements $AiChatHistoryModelCopyWith<$Res> {
  factory _$$_AiChatHistoryModelCopyWith(_$_AiChatHistoryModel value,
          $Res Function(_$_AiChatHistoryModel) then) =
      __$$_AiChatHistoryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String role, String content});
}

/// @nodoc
class __$$_AiChatHistoryModelCopyWithImpl<$Res>
    extends _$AiChatHistoryModelCopyWithImpl<$Res, _$_AiChatHistoryModel>
    implements _$$_AiChatHistoryModelCopyWith<$Res> {
  __$$_AiChatHistoryModelCopyWithImpl(
      _$_AiChatHistoryModel _value, $Res Function(_$_AiChatHistoryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? role = null,
    Object? content = null,
  }) {
    return _then(_$_AiChatHistoryModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_AiChatHistoryModel extends _AiChatHistoryModel {
  const _$_AiChatHistoryModel(
      {required this.id, required this.role, required this.content})
      : super._();

  factory _$_AiChatHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$$_AiChatHistoryModelFromJson(json);

  @override
  final String id;
  @override
  final String role;
  @override
  final String content;

  @override
  String toString() {
    return 'AiChatHistoryModel(id: $id, role: $role, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AiChatHistoryModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, role, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AiChatHistoryModelCopyWith<_$_AiChatHistoryModel> get copyWith =>
      __$$_AiChatHistoryModelCopyWithImpl<_$_AiChatHistoryModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AiChatHistoryModelToJson(
      this,
    );
  }
}

abstract class _AiChatHistoryModel extends AiChatHistoryModel {
  const factory _AiChatHistoryModel(
      {required final String id,
      required final String role,
      required final String content}) = _$_AiChatHistoryModel;
  const _AiChatHistoryModel._() : super._();

  factory _AiChatHistoryModel.fromJson(Map<String, dynamic> json) =
      _$_AiChatHistoryModel.fromJson;

  @override
  String get id;
  @override
  String get role;
  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$_AiChatHistoryModelCopyWith<_$_AiChatHistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}
