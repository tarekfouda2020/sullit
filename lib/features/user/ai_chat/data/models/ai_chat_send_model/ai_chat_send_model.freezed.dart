// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ai_chat_send_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AiChatSendModel {
  @JsonKey(name: 'conversation_id')
  String get conversationId => throw _privateConstructorUsedError;
  String get reply => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  BaseApiModel<AiChatPayload>? get payload =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'handoff_active')
  bool get handoffActive => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AiChatSendModelCopyWith<AiChatSendModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AiChatSendModelCopyWith<$Res> {
  factory $AiChatSendModelCopyWith(
          AiChatSendModel value, $Res Function(AiChatSendModel) then) =
      _$AiChatSendModelCopyWithImpl<$Res, AiChatSendModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'conversation_id') String conversationId,
      String reply,
      String type,
      @JsonKey(includeFromJson: false, includeToJson: false)
      BaseApiModel<AiChatPayload>? payload,
      @JsonKey(name: 'handoff_active') bool handoffActive});
}

/// @nodoc
class _$AiChatSendModelCopyWithImpl<$Res, $Val extends AiChatSendModel>
    implements $AiChatSendModelCopyWith<$Res> {
  _$AiChatSendModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationId = null,
    Object? reply = null,
    Object? type = null,
    Object? payload = freezed,
    Object? handoffActive = null,
  }) {
    return _then(_value.copyWith(
      conversationId: null == conversationId
          ? _value.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as String,
      reply: null == reply
          ? _value.reply
          : reply // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      payload: freezed == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as BaseApiModel<AiChatPayload>?,
      handoffActive: null == handoffActive
          ? _value.handoffActive
          : handoffActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AiChatSendModelCopyWith<$Res>
    implements $AiChatSendModelCopyWith<$Res> {
  factory _$$_AiChatSendModelCopyWith(
          _$_AiChatSendModel value, $Res Function(_$_AiChatSendModel) then) =
      __$$_AiChatSendModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'conversation_id') String conversationId,
      String reply,
      String type,
      @JsonKey(includeFromJson: false, includeToJson: false)
      BaseApiModel<AiChatPayload>? payload,
      @JsonKey(name: 'handoff_active') bool handoffActive});
}

/// @nodoc
class __$$_AiChatSendModelCopyWithImpl<$Res>
    extends _$AiChatSendModelCopyWithImpl<$Res, _$_AiChatSendModel>
    implements _$$_AiChatSendModelCopyWith<$Res> {
  __$$_AiChatSendModelCopyWithImpl(
      _$_AiChatSendModel _value, $Res Function(_$_AiChatSendModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationId = null,
    Object? reply = null,
    Object? type = null,
    Object? payload = freezed,
    Object? handoffActive = null,
  }) {
    return _then(_$_AiChatSendModel(
      conversationId: null == conversationId
          ? _value.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as String,
      reply: null == reply
          ? _value.reply
          : reply // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      payload: freezed == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as BaseApiModel<AiChatPayload>?,
      handoffActive: null == handoffActive
          ? _value.handoffActive
          : handoffActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_AiChatSendModel extends _AiChatSendModel {
  const _$_AiChatSendModel(
      {@JsonKey(name: 'conversation_id') required this.conversationId,
      required this.reply,
      required this.type,
      @JsonKey(includeFromJson: false, includeToJson: false) this.payload,
      @JsonKey(name: 'handoff_active') required this.handoffActive})
      : super._();

  @override
  @JsonKey(name: 'conversation_id')
  final String conversationId;
  @override
  final String reply;
  @override
  final String type;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final BaseApiModel<AiChatPayload>? payload;
  @override
  @JsonKey(name: 'handoff_active')
  final bool handoffActive;

  @override
  String toString() {
    return 'AiChatSendModel(conversationId: $conversationId, reply: $reply, type: $type, payload: $payload, handoffActive: $handoffActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AiChatSendModel &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId) &&
            (identical(other.reply, reply) || other.reply == reply) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.payload, payload) || other.payload == payload) &&
            (identical(other.handoffActive, handoffActive) ||
                other.handoffActive == handoffActive));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, conversationId, reply, type, payload, handoffActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AiChatSendModelCopyWith<_$_AiChatSendModel> get copyWith =>
      __$$_AiChatSendModelCopyWithImpl<_$_AiChatSendModel>(this, _$identity);
}

abstract class _AiChatSendModel extends AiChatSendModel {
  const factory _AiChatSendModel(
      {@JsonKey(name: 'conversation_id') required final String conversationId,
      required final String reply,
      required final String type,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final BaseApiModel<AiChatPayload>? payload,
      @JsonKey(name: 'handoff_active')
      required final bool handoffActive}) = _$_AiChatSendModel;
  const _AiChatSendModel._() : super._();

  @override
  @JsonKey(name: 'conversation_id')
  String get conversationId;
  @override
  String get reply;
  @override
  String get type;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  BaseApiModel<AiChatPayload>? get payload;
  @override
  @JsonKey(name: 'handoff_active')
  bool get handoffActive;
  @override
  @JsonKey(ignore: true)
  _$$_AiChatSendModelCopyWith<_$_AiChatSendModel> get copyWith =>
      throw _privateConstructorUsedError;
}
