// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pharmacy_order_terms_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PharmacyOrderTerms _$PharmacyOrderTermsFromJson(Map<String, dynamic> json) {
  return _PharmacyOrderTerms.fromJson(json);
}

/// @nodoc
mixin _$PharmacyOrderTerms {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PharmacyOrderTermsCopyWith<PharmacyOrderTerms> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PharmacyOrderTermsCopyWith<$Res> {
  factory $PharmacyOrderTermsCopyWith(
          PharmacyOrderTerms value, $Res Function(PharmacyOrderTerms) then) =
      _$PharmacyOrderTermsCopyWithImpl<$Res, PharmacyOrderTerms>;
  @useResult
  $Res call({int id, String title, String content});
}

/// @nodoc
class _$PharmacyOrderTermsCopyWithImpl<$Res, $Val extends PharmacyOrderTerms>
    implements $PharmacyOrderTermsCopyWith<$Res> {
  _$PharmacyOrderTermsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PharmacyOrderTermsCopyWith<$Res>
    implements $PharmacyOrderTermsCopyWith<$Res> {
  factory _$$_PharmacyOrderTermsCopyWith(_$_PharmacyOrderTerms value,
          $Res Function(_$_PharmacyOrderTerms) then) =
      __$$_PharmacyOrderTermsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, String content});
}

/// @nodoc
class __$$_PharmacyOrderTermsCopyWithImpl<$Res>
    extends _$PharmacyOrderTermsCopyWithImpl<$Res, _$_PharmacyOrderTerms>
    implements _$$_PharmacyOrderTermsCopyWith<$Res> {
  __$$_PharmacyOrderTermsCopyWithImpl(
      _$_PharmacyOrderTerms _value, $Res Function(_$_PharmacyOrderTerms) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
  }) {
    return _then(_$_PharmacyOrderTerms(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PharmacyOrderTerms extends _PharmacyOrderTerms {
  const _$_PharmacyOrderTerms(
      {required this.id, required this.title, required this.content})
      : super._();

  factory _$_PharmacyOrderTerms.fromJson(Map<String, dynamic> json) =>
      _$$_PharmacyOrderTermsFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String content;

  @override
  String toString() {
    return 'PharmacyOrderTerms(id: $id, title: $title, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PharmacyOrderTerms &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PharmacyOrderTermsCopyWith<_$_PharmacyOrderTerms> get copyWith =>
      __$$_PharmacyOrderTermsCopyWithImpl<_$_PharmacyOrderTerms>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PharmacyOrderTermsToJson(
      this,
    );
  }
}

abstract class _PharmacyOrderTerms extends PharmacyOrderTerms {
  const factory _PharmacyOrderTerms(
      {required final int id,
      required final String title,
      required final String content}) = _$_PharmacyOrderTerms;
  const _PharmacyOrderTerms._() : super._();

  factory _PharmacyOrderTerms.fromJson(Map<String, dynamic> json) =
      _$_PharmacyOrderTerms.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$_PharmacyOrderTermsCopyWith<_$_PharmacyOrderTerms> get copyWith =>
      throw _privateConstructorUsedError;
}
