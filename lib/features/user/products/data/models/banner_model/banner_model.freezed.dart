// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'banner_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BannerModel _$BannerModelFromJson(Map<String, dynamic> json) {
  return _BannerModel.fromJson(json);
}

/// @nodoc
mixin _$BannerModel {
  @JsonKey(name: "photo")
  String get photo => throw _privateConstructorUsedError;
  @JsonKey(name: "url")
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: "link_type")
  String get linkType => throw _privateConstructorUsedError;
  @JsonKey(name: "value", fromJson: valueFromJson, toJson: valueToJson)
  FlexibleValue? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BannerModelCopyWith<BannerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerModelCopyWith<$Res> {
  factory $BannerModelCopyWith(
          BannerModel value, $Res Function(BannerModel) then) =
      _$BannerModelCopyWithImpl<$Res, BannerModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "photo") String photo,
      @JsonKey(name: "url") String? url,
      @JsonKey(name: "link_type") String linkType,
      @JsonKey(name: "value", fromJson: valueFromJson, toJson: valueToJson)
      FlexibleValue? value});
}

/// @nodoc
class _$BannerModelCopyWithImpl<$Res, $Val extends BannerModel>
    implements $BannerModelCopyWith<$Res> {
  _$BannerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photo = null,
    Object? url = freezed,
    Object? linkType = null,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      linkType: null == linkType
          ? _value.linkType
          : linkType // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as FlexibleValue?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BannerModelCopyWith<$Res>
    implements $BannerModelCopyWith<$Res> {
  factory _$$_BannerModelCopyWith(
          _$_BannerModel value, $Res Function(_$_BannerModel) then) =
      __$$_BannerModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "photo") String photo,
      @JsonKey(name: "url") String? url,
      @JsonKey(name: "link_type") String linkType,
      @JsonKey(name: "value", fromJson: valueFromJson, toJson: valueToJson)
      FlexibleValue? value});
}

/// @nodoc
class __$$_BannerModelCopyWithImpl<$Res>
    extends _$BannerModelCopyWithImpl<$Res, _$_BannerModel>
    implements _$$_BannerModelCopyWith<$Res> {
  __$$_BannerModelCopyWithImpl(
      _$_BannerModel _value, $Res Function(_$_BannerModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photo = null,
    Object? url = freezed,
    Object? linkType = null,
    Object? value = freezed,
  }) {
    return _then(_$_BannerModel(
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      linkType: null == linkType
          ? _value.linkType
          : linkType // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as FlexibleValue?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_BannerModel extends _BannerModel {
  const _$_BannerModel(
      {@JsonKey(name: "photo") required this.photo,
      @JsonKey(name: "url") this.url,
      @JsonKey(name: "link_type") required this.linkType,
      @JsonKey(name: "value", fromJson: valueFromJson, toJson: valueToJson)
      required this.value})
      : super._();

  factory _$_BannerModel.fromJson(Map<String, dynamic> json) =>
      _$$_BannerModelFromJson(json);

  @override
  @JsonKey(name: "photo")
  final String photo;
  @override
  @JsonKey(name: "url")
  final String? url;
  @override
  @JsonKey(name: "link_type")
  final String linkType;
  @override
  @JsonKey(name: "value", fromJson: valueFromJson, toJson: valueToJson)
  final FlexibleValue? value;

  @override
  String toString() {
    return 'BannerModel(photo: $photo, url: $url, linkType: $linkType, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BannerModel &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.linkType, linkType) ||
                other.linkType == linkType) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, photo, url, linkType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BannerModelCopyWith<_$_BannerModel> get copyWith =>
      __$$_BannerModelCopyWithImpl<_$_BannerModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BannerModelToJson(
      this,
    );
  }
}

abstract class _BannerModel extends BannerModel {
  const factory _BannerModel(
      {@JsonKey(name: "photo") required final String photo,
      @JsonKey(name: "url") final String? url,
      @JsonKey(name: "link_type") required final String linkType,
      @JsonKey(name: "value", fromJson: valueFromJson, toJson: valueToJson)
      required final FlexibleValue? value}) = _$_BannerModel;
  const _BannerModel._() : super._();

  factory _BannerModel.fromJson(Map<String, dynamic> json) =
      _$_BannerModel.fromJson;

  @override
  @JsonKey(name: "photo")
  String get photo;
  @override
  @JsonKey(name: "url")
  String? get url;
  @override
  @JsonKey(name: "link_type")
  String get linkType;
  @override
  @JsonKey(name: "value", fromJson: valueFromJson, toJson: valueToJson)
  FlexibleValue? get value;
  @override
  @JsonKey(ignore: true)
  _$$_BannerModelCopyWith<_$_BannerModel> get copyWith =>
      throw _privateConstructorUsedError;
}
