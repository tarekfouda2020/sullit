// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'file_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FileModel _$FileModelFromJson(Map<String, dynamic> json) {
  return _FileModel.fromJson(json);
}

/// @nodoc
mixin _$FileModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'file_original_name')
  String get fileOriginalName => throw _privateConstructorUsedError;
  @JsonKey(name: 'file_name')
  String get fileName => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'file_size')
  int get fileSize => throw _privateConstructorUsedError;
  String get extension => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FileModelCopyWith<FileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileModelCopyWith<$Res> {
  factory $FileModelCopyWith(FileModel value, $Res Function(FileModel) then) =
      _$FileModelCopyWithImpl<$Res, FileModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'file_original_name') String fileOriginalName,
      @JsonKey(name: 'file_name') String fileName,
      String url,
      @JsonKey(name: 'file_size') int fileSize,
      String extension,
      String type});
}

/// @nodoc
class _$FileModelCopyWithImpl<$Res, $Val extends FileModel>
    implements $FileModelCopyWith<$Res> {
  _$FileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fileOriginalName = null,
    Object? fileName = null,
    Object? url = null,
    Object? fileSize = null,
    Object? extension = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      fileOriginalName: null == fileOriginalName
          ? _value.fileOriginalName
          : fileOriginalName // ignore: cast_nullable_to_non_nullable
              as String,
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      fileSize: null == fileSize
          ? _value.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as int,
      extension: null == extension
          ? _value.extension
          : extension // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FileModelCopyWith<$Res> implements $FileModelCopyWith<$Res> {
  factory _$$_FileModelCopyWith(
          _$_FileModel value, $Res Function(_$_FileModel) then) =
      __$$_FileModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'file_original_name') String fileOriginalName,
      @JsonKey(name: 'file_name') String fileName,
      String url,
      @JsonKey(name: 'file_size') int fileSize,
      String extension,
      String type});
}

/// @nodoc
class __$$_FileModelCopyWithImpl<$Res>
    extends _$FileModelCopyWithImpl<$Res, _$_FileModel>
    implements _$$_FileModelCopyWith<$Res> {
  __$$_FileModelCopyWithImpl(
      _$_FileModel _value, $Res Function(_$_FileModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fileOriginalName = null,
    Object? fileName = null,
    Object? url = null,
    Object? fileSize = null,
    Object? extension = null,
    Object? type = null,
  }) {
    return _then(_$_FileModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      fileOriginalName: null == fileOriginalName
          ? _value.fileOriginalName
          : fileOriginalName // ignore: cast_nullable_to_non_nullable
              as String,
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      fileSize: null == fileSize
          ? _value.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as int,
      extension: null == extension
          ? _value.extension
          : extension // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_FileModel extends _FileModel {
  const _$_FileModel(
      {required this.id,
      @JsonKey(name: 'file_original_name') required this.fileOriginalName,
      @JsonKey(name: 'file_name') required this.fileName,
      required this.url,
      @JsonKey(name: 'file_size') required this.fileSize,
      required this.extension,
      required this.type})
      : super._();

  factory _$_FileModel.fromJson(Map<String, dynamic> json) =>
      _$$_FileModelFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'file_original_name')
  final String fileOriginalName;
  @override
  @JsonKey(name: 'file_name')
  final String fileName;
  @override
  final String url;
  @override
  @JsonKey(name: 'file_size')
  final int fileSize;
  @override
  final String extension;
  @override
  final String type;

  @override
  String toString() {
    return 'FileModel(id: $id, fileOriginalName: $fileOriginalName, fileName: $fileName, url: $url, fileSize: $fileSize, extension: $extension, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FileModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fileOriginalName, fileOriginalName) ||
                other.fileOriginalName == fileOriginalName) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.fileSize, fileSize) ||
                other.fileSize == fileSize) &&
            (identical(other.extension, extension) ||
                other.extension == extension) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, fileOriginalName, fileName,
      url, fileSize, extension, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FileModelCopyWith<_$_FileModel> get copyWith =>
      __$$_FileModelCopyWithImpl<_$_FileModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FileModelToJson(
      this,
    );
  }
}

abstract class _FileModel extends FileModel {
  const factory _FileModel(
      {required final int id,
      @JsonKey(name: 'file_original_name')
      required final String fileOriginalName,
      @JsonKey(name: 'file_name') required final String fileName,
      required final String url,
      @JsonKey(name: 'file_size') required final int fileSize,
      required final String extension,
      required final String type}) = _$_FileModel;
  const _FileModel._() : super._();

  factory _FileModel.fromJson(Map<String, dynamic> json) =
      _$_FileModel.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'file_original_name')
  String get fileOriginalName;
  @override
  @JsonKey(name: 'file_name')
  String get fileName;
  @override
  String get url;
  @override
  @JsonKey(name: 'file_size')
  int get fileSize;
  @override
  String get extension;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$_FileModelCopyWith<_$_FileModel> get copyWith =>
      throw _privateConstructorUsedError;
}
