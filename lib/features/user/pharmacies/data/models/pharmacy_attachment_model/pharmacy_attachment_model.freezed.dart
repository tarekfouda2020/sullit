// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pharmacy_attachment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PharmacyAttachmentModel _$PharmacyAttachmentModelFromJson(
    Map<String, dynamic> json) {
  return _PharmacyAttachmentModel.fromJson(json);
}

/// @nodoc
mixin _$PharmacyAttachmentModel {
  int? get id => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PharmacyAttachmentModelCopyWith<PharmacyAttachmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PharmacyAttachmentModelCopyWith<$Res> {
  factory $PharmacyAttachmentModelCopyWith(PharmacyAttachmentModel value,
          $Res Function(PharmacyAttachmentModel) then) =
      _$PharmacyAttachmentModelCopyWithImpl<$Res, PharmacyAttachmentModel>;
  @useResult
  $Res call({int? id, String? url, String? type});
}

/// @nodoc
class _$PharmacyAttachmentModelCopyWithImpl<$Res,
        $Val extends PharmacyAttachmentModel>
    implements $PharmacyAttachmentModelCopyWith<$Res> {
  _$PharmacyAttachmentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? url = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PharmacyAttachmentModelCopyWith<$Res>
    implements $PharmacyAttachmentModelCopyWith<$Res> {
  factory _$$_PharmacyAttachmentModelCopyWith(_$_PharmacyAttachmentModel value,
          $Res Function(_$_PharmacyAttachmentModel) then) =
      __$$_PharmacyAttachmentModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? url, String? type});
}

/// @nodoc
class __$$_PharmacyAttachmentModelCopyWithImpl<$Res>
    extends _$PharmacyAttachmentModelCopyWithImpl<$Res,
        _$_PharmacyAttachmentModel>
    implements _$$_PharmacyAttachmentModelCopyWith<$Res> {
  __$$_PharmacyAttachmentModelCopyWithImpl(_$_PharmacyAttachmentModel _value,
      $Res Function(_$_PharmacyAttachmentModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? url = freezed,
    Object? type = freezed,
  }) {
    return _then(_$_PharmacyAttachmentModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_PharmacyAttachmentModel extends _PharmacyAttachmentModel {
  const _$_PharmacyAttachmentModel({this.id, this.url, this.type}) : super._();

  factory _$_PharmacyAttachmentModel.fromJson(Map<String, dynamic> json) =>
      _$$_PharmacyAttachmentModelFromJson(json);

  @override
  final int? id;
  @override
  final String? url;
  @override
  final String? type;

  @override
  String toString() {
    return 'PharmacyAttachmentModel(id: $id, url: $url, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PharmacyAttachmentModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, url, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PharmacyAttachmentModelCopyWith<_$_PharmacyAttachmentModel>
      get copyWith =>
          __$$_PharmacyAttachmentModelCopyWithImpl<_$_PharmacyAttachmentModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PharmacyAttachmentModelToJson(
      this,
    );
  }
}

abstract class _PharmacyAttachmentModel extends PharmacyAttachmentModel {
  const factory _PharmacyAttachmentModel(
      {final int? id,
      final String? url,
      final String? type}) = _$_PharmacyAttachmentModel;
  const _PharmacyAttachmentModel._() : super._();

  factory _PharmacyAttachmentModel.fromJson(Map<String, dynamic> json) =
      _$_PharmacyAttachmentModel.fromJson;

  @override
  int? get id;
  @override
  String? get url;
  @override
  String? get type;
  @override
  @JsonKey(ignore: true)
  _$$_PharmacyAttachmentModelCopyWith<_$_PharmacyAttachmentModel>
      get copyWith => throw _privateConstructorUsedError;
}
