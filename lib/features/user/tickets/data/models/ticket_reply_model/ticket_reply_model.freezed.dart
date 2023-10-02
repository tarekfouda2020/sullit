// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_reply_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TicketReplyModel _$TicketReplyModelFromJson(Map<String, dynamic> json) {
  return _TicketReplyModel.fromJson(json);
}

/// @nodoc
mixin _$TicketReplyModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get reply => throw _privateConstructorUsedError;
  UserModel get user => throw _privateConstructorUsedError;
  List<ImageModel> get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TicketReplyModelCopyWith<TicketReplyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketReplyModelCopyWith<$Res> {
  factory $TicketReplyModelCopyWith(
          TicketReplyModel value, $Res Function(TicketReplyModel) then) =
      _$TicketReplyModelCopyWithImpl<$Res, TicketReplyModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "created_at") DateTime createdAt,
      String reply,
      UserModel user,
      List<ImageModel> images});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class _$TicketReplyModelCopyWithImpl<$Res, $Val extends TicketReplyModel>
    implements $TicketReplyModelCopyWith<$Res> {
  _$TicketReplyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? reply = null,
    Object? user = null,
    Object? images = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      reply: null == reply
          ? _value.reply
          : reply // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TicketReplyModelCopyWith<$Res>
    implements $TicketReplyModelCopyWith<$Res> {
  factory _$$_TicketReplyModelCopyWith(
          _$_TicketReplyModel value, $Res Function(_$_TicketReplyModel) then) =
      __$$_TicketReplyModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "created_at") DateTime createdAt,
      String reply,
      UserModel user,
      List<ImageModel> images});

  @override
  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$_TicketReplyModelCopyWithImpl<$Res>
    extends _$TicketReplyModelCopyWithImpl<$Res, _$_TicketReplyModel>
    implements _$$_TicketReplyModelCopyWith<$Res> {
  __$$_TicketReplyModelCopyWithImpl(
      _$_TicketReplyModel _value, $Res Function(_$_TicketReplyModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? reply = null,
    Object? user = null,
    Object? images = null,
  }) {
    return _then(_$_TicketReplyModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      reply: null == reply
          ? _value.reply
          : reply // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_TicketReplyModel extends _TicketReplyModel {
  const _$_TicketReplyModel(
      {required this.id,
      @JsonKey(name: "created_at") required this.createdAt,
      required this.reply,
      required this.user,
      required final List<ImageModel> images})
      : _images = images,
        super._();

  factory _$_TicketReplyModel.fromJson(Map<String, dynamic> json) =>
      _$$_TicketReplyModelFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: "created_at")
  final DateTime createdAt;
  @override
  final String reply;
  @override
  final UserModel user;
  final List<ImageModel> _images;
  @override
  List<ImageModel> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'TicketReplyModel(id: $id, createdAt: $createdAt, reply: $reply, user: $user, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TicketReplyModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.reply, reply) || other.reply == reply) &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, createdAt, reply, user,
      const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TicketReplyModelCopyWith<_$_TicketReplyModel> get copyWith =>
      __$$_TicketReplyModelCopyWithImpl<_$_TicketReplyModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TicketReplyModelToJson(
      this,
    );
  }
}

abstract class _TicketReplyModel extends TicketReplyModel {
  const factory _TicketReplyModel(
      {required final int id,
      @JsonKey(name: "created_at") required final DateTime createdAt,
      required final String reply,
      required final UserModel user,
      required final List<ImageModel> images}) = _$_TicketReplyModel;
  const _TicketReplyModel._() : super._();

  factory _TicketReplyModel.fromJson(Map<String, dynamic> json) =
      _$_TicketReplyModel.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: "created_at")
  DateTime get createdAt;
  @override
  String get reply;
  @override
  UserModel get user;
  @override
  List<ImageModel> get images;
  @override
  @JsonKey(ignore: true)
  _$$_TicketReplyModelCopyWith<_$_TicketReplyModel> get copyWith =>
      throw _privateConstructorUsedError;
}
