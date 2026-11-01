// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ai_chat_view_all_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AiChatViewAllModel _$AiChatViewAllModelFromJson(Map<String, dynamic> json) {
  return _AiChatViewAllModel.fromJson(json);
}

/// @nodoc
mixin _$AiChatViewAllModel {
  String? get screen => throw _privateConstructorUsedError;
  AiChatViewAllQueryModel? get query => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AiChatViewAllModelCopyWith<AiChatViewAllModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AiChatViewAllModelCopyWith<$Res> {
  factory $AiChatViewAllModelCopyWith(
          AiChatViewAllModel value, $Res Function(AiChatViewAllModel) then) =
      _$AiChatViewAllModelCopyWithImpl<$Res, AiChatViewAllModel>;
  @useResult
  $Res call({String? screen, AiChatViewAllQueryModel? query});

  $AiChatViewAllQueryModelCopyWith<$Res>? get query;
}

/// @nodoc
class _$AiChatViewAllModelCopyWithImpl<$Res, $Val extends AiChatViewAllModel>
    implements $AiChatViewAllModelCopyWith<$Res> {
  _$AiChatViewAllModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? screen = freezed,
    Object? query = freezed,
  }) {
    return _then(_value.copyWith(
      screen: freezed == screen
          ? _value.screen
          : screen // ignore: cast_nullable_to_non_nullable
              as String?,
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as AiChatViewAllQueryModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AiChatViewAllQueryModelCopyWith<$Res>? get query {
    if (_value.query == null) {
      return null;
    }

    return $AiChatViewAllQueryModelCopyWith<$Res>(_value.query!, (value) {
      return _then(_value.copyWith(query: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AiChatViewAllModelCopyWith<$Res>
    implements $AiChatViewAllModelCopyWith<$Res> {
  factory _$$_AiChatViewAllModelCopyWith(_$_AiChatViewAllModel value,
          $Res Function(_$_AiChatViewAllModel) then) =
      __$$_AiChatViewAllModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? screen, AiChatViewAllQueryModel? query});

  @override
  $AiChatViewAllQueryModelCopyWith<$Res>? get query;
}

/// @nodoc
class __$$_AiChatViewAllModelCopyWithImpl<$Res>
    extends _$AiChatViewAllModelCopyWithImpl<$Res, _$_AiChatViewAllModel>
    implements _$$_AiChatViewAllModelCopyWith<$Res> {
  __$$_AiChatViewAllModelCopyWithImpl(
      _$_AiChatViewAllModel _value, $Res Function(_$_AiChatViewAllModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? screen = freezed,
    Object? query = freezed,
  }) {
    return _then(_$_AiChatViewAllModel(
      screen: freezed == screen
          ? _value.screen
          : screen // ignore: cast_nullable_to_non_nullable
              as String?,
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as AiChatViewAllQueryModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_AiChatViewAllModel extends _AiChatViewAllModel {
  const _$_AiChatViewAllModel({this.screen, this.query}) : super._();

  factory _$_AiChatViewAllModel.fromJson(Map<String, dynamic> json) =>
      _$$_AiChatViewAllModelFromJson(json);

  @override
  final String? screen;
  @override
  final AiChatViewAllQueryModel? query;

  @override
  String toString() {
    return 'AiChatViewAllModel(screen: $screen, query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AiChatViewAllModel &&
            (identical(other.screen, screen) || other.screen == screen) &&
            (identical(other.query, query) || other.query == query));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, screen, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AiChatViewAllModelCopyWith<_$_AiChatViewAllModel> get copyWith =>
      __$$_AiChatViewAllModelCopyWithImpl<_$_AiChatViewAllModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AiChatViewAllModelToJson(
      this,
    );
  }
}

abstract class _AiChatViewAllModel extends AiChatViewAllModel {
  const factory _AiChatViewAllModel(
      {final String? screen,
      final AiChatViewAllQueryModel? query}) = _$_AiChatViewAllModel;
  const _AiChatViewAllModel._() : super._();

  factory _AiChatViewAllModel.fromJson(Map<String, dynamic> json) =
      _$_AiChatViewAllModel.fromJson;

  @override
  String? get screen;
  @override
  AiChatViewAllQueryModel? get query;
  @override
  @JsonKey(ignore: true)
  _$$_AiChatViewAllModelCopyWith<_$_AiChatViewAllModel> get copyWith =>
      throw _privateConstructorUsedError;
}
