// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscribe_content_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SubscribeContentModel _$SubscribeContentModelFromJson(
    Map<String, dynamic> json) {
  return _SubscribeContentModel.fromJson(json);
}

/// @nodoc
mixin _$SubscribeContentModel {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubscribeContentModelCopyWith<SubscribeContentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscribeContentModelCopyWith<$Res> {
  factory $SubscribeContentModelCopyWith(SubscribeContentModel value,
          $Res Function(SubscribeContentModel) then) =
      _$SubscribeContentModelCopyWithImpl<$Res, SubscribeContentModel>;
  @useResult
  $Res call({String title, String description, String icon});
}

/// @nodoc
class _$SubscribeContentModelCopyWithImpl<$Res,
        $Val extends SubscribeContentModel>
    implements $SubscribeContentModelCopyWith<$Res> {
  _$SubscribeContentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? icon = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SubscribeContentModelCopyWith<$Res>
    implements $SubscribeContentModelCopyWith<$Res> {
  factory _$$_SubscribeContentModelCopyWith(_$_SubscribeContentModel value,
          $Res Function(_$_SubscribeContentModel) then) =
      __$$_SubscribeContentModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String description, String icon});
}

/// @nodoc
class __$$_SubscribeContentModelCopyWithImpl<$Res>
    extends _$SubscribeContentModelCopyWithImpl<$Res, _$_SubscribeContentModel>
    implements _$$_SubscribeContentModelCopyWith<$Res> {
  __$$_SubscribeContentModelCopyWithImpl(_$_SubscribeContentModel _value,
      $Res Function(_$_SubscribeContentModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? icon = null,
  }) {
    return _then(_$_SubscribeContentModel(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_SubscribeContentModel extends _SubscribeContentModel {
  _$_SubscribeContentModel(
      {required this.title, required this.description, required this.icon})
      : super._();

  factory _$_SubscribeContentModel.fromJson(Map<String, dynamic> json) =>
      _$$_SubscribeContentModelFromJson(json);

  @override
  final String title;
  @override
  final String description;
  @override
  final String icon;

  @override
  String toString() {
    return 'SubscribeContentModel(title: $title, description: $description, icon: $icon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubscribeContentModel &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, description, icon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SubscribeContentModelCopyWith<_$_SubscribeContentModel> get copyWith =>
      __$$_SubscribeContentModelCopyWithImpl<_$_SubscribeContentModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SubscribeContentModelToJson(
      this,
    );
  }
}

abstract class _SubscribeContentModel extends SubscribeContentModel {
  factory _SubscribeContentModel(
      {required final String title,
      required final String description,
      required final String icon}) = _$_SubscribeContentModel;
  _SubscribeContentModel._() : super._();

  factory _SubscribeContentModel.fromJson(Map<String, dynamic> json) =
      _$_SubscribeContentModel.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  String get icon;
  @override
  @JsonKey(ignore: true)
  _$$_SubscribeContentModelCopyWith<_$_SubscribeContentModel> get copyWith =>
      throw _privateConstructorUsedError;
}
