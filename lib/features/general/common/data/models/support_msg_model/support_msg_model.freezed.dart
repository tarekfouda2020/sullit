// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'support_msg_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SupportMsgModel _$SupportMsgModelFromJson(Map<String, dynamic> json) {
  return _SupportMsgModel.fromJson(json);
}

/// @nodoc
mixin _$SupportMsgModel {
  @JsonKey(name: "is_sender")
  bool get isSender => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get msg => throw _privateConstructorUsedError;
  @JsonKey(name: "message_type")
  String get msgType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SupportMsgModelCopyWith<SupportMsgModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportMsgModelCopyWith<$Res> {
  factory $SupportMsgModelCopyWith(
          SupportMsgModel value, $Res Function(SupportMsgModel) then) =
      _$SupportMsgModelCopyWithImpl<$Res, SupportMsgModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "is_sender") bool isSender,
      @JsonKey(name: "created_at") String createdAt,
      @JsonKey(name: "message") String msg,
      @JsonKey(name: "message_type") String msgType});
}

/// @nodoc
class _$SupportMsgModelCopyWithImpl<$Res, $Val extends SupportMsgModel>
    implements $SupportMsgModelCopyWith<$Res> {
  _$SupportMsgModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSender = null,
    Object? createdAt = null,
    Object? msg = null,
    Object? msgType = null,
  }) {
    return _then(_value.copyWith(
      isSender: null == isSender
          ? _value.isSender
          : isSender // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      msgType: null == msgType
          ? _value.msgType
          : msgType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SupportMsgModelCopyWith<$Res>
    implements $SupportMsgModelCopyWith<$Res> {
  factory _$$_SupportMsgModelCopyWith(
          _$_SupportMsgModel value, $Res Function(_$_SupportMsgModel) then) =
      __$$_SupportMsgModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "is_sender") bool isSender,
      @JsonKey(name: "created_at") String createdAt,
      @JsonKey(name: "message") String msg,
      @JsonKey(name: "message_type") String msgType});
}

/// @nodoc
class __$$_SupportMsgModelCopyWithImpl<$Res>
    extends _$SupportMsgModelCopyWithImpl<$Res, _$_SupportMsgModel>
    implements _$$_SupportMsgModelCopyWith<$Res> {
  __$$_SupportMsgModelCopyWithImpl(
      _$_SupportMsgModel _value, $Res Function(_$_SupportMsgModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSender = null,
    Object? createdAt = null,
    Object? msg = null,
    Object? msgType = null,
  }) {
    return _then(_$_SupportMsgModel(
      isSender: null == isSender
          ? _value.isSender
          : isSender // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      msgType: null == msgType
          ? _value.msgType
          : msgType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_SupportMsgModel extends _SupportMsgModel {
  const _$_SupportMsgModel(
      {@JsonKey(name: "is_sender") required this.isSender,
      @JsonKey(name: "created_at") required this.createdAt,
      @JsonKey(name: "message") required this.msg,
      @JsonKey(name: "message_type") required this.msgType})
      : super._();

  factory _$_SupportMsgModel.fromJson(Map<String, dynamic> json) =>
      _$$_SupportMsgModelFromJson(json);

  @override
  @JsonKey(name: "is_sender")
  final bool isSender;
  @override
  @JsonKey(name: "created_at")
  final String createdAt;
  @override
  @JsonKey(name: "message")
  final String msg;
  @override
  @JsonKey(name: "message_type")
  final String msgType;

  @override
  String toString() {
    return 'SupportMsgModel(isSender: $isSender, createdAt: $createdAt, msg: $msg, msgType: $msgType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SupportMsgModel &&
            (identical(other.isSender, isSender) ||
                other.isSender == isSender) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.msg, msg) || other.msg == msg) &&
            (identical(other.msgType, msgType) || other.msgType == msgType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, isSender, createdAt, msg, msgType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SupportMsgModelCopyWith<_$_SupportMsgModel> get copyWith =>
      __$$_SupportMsgModelCopyWithImpl<_$_SupportMsgModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SupportMsgModelToJson(
      this,
    );
  }
}

abstract class _SupportMsgModel extends SupportMsgModel {
  const factory _SupportMsgModel(
          {@JsonKey(name: "is_sender") required final bool isSender,
          @JsonKey(name: "created_at") required final String createdAt,
          @JsonKey(name: "message") required final String msg,
          @JsonKey(name: "message_type") required final String msgType}) =
      _$_SupportMsgModel;
  const _SupportMsgModel._() : super._();

  factory _SupportMsgModel.fromJson(Map<String, dynamic> json) =
      _$_SupportMsgModel.fromJson;

  @override
  @JsonKey(name: "is_sender")
  bool get isSender;
  @override
  @JsonKey(name: "created_at")
  String get createdAt;
  @override
  @JsonKey(name: "message")
  String get msg;
  @override
  @JsonKey(name: "message_type")
  String get msgType;
  @override
  @JsonKey(ignore: true)
  _$$_SupportMsgModelCopyWith<_$_SupportMsgModel> get copyWith =>
      throw _privateConstructorUsedError;
}
