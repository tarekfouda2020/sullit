// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ai_chat_shop_card_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AiChatShopCardModel _$AiChatShopCardModelFromJson(Map<String, dynamic> json) {
  return _AiChatShopCardModel.fromJson(json);
}

/// @nodoc
mixin _$AiChatShopCardModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get logo => throw _privateConstructorUsedError;
  @JsonKey(name: 'type_label')
  String? get typeLabel => throw _privateConstructorUsedError;
  num? get rating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AiChatShopCardModelCopyWith<AiChatShopCardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AiChatShopCardModelCopyWith<$Res> {
  factory $AiChatShopCardModelCopyWith(
          AiChatShopCardModel value, $Res Function(AiChatShopCardModel) then) =
      _$AiChatShopCardModelCopyWithImpl<$Res, AiChatShopCardModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? logo,
      @JsonKey(name: 'type_label') String? typeLabel,
      num? rating});
}

/// @nodoc
class _$AiChatShopCardModelCopyWithImpl<$Res, $Val extends AiChatShopCardModel>
    implements $AiChatShopCardModelCopyWith<$Res> {
  _$AiChatShopCardModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? logo = freezed,
    Object? typeLabel = freezed,
    Object? rating = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      typeLabel: freezed == typeLabel
          ? _value.typeLabel
          : typeLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AiChatShopCardModelCopyWith<$Res>
    implements $AiChatShopCardModelCopyWith<$Res> {
  factory _$$_AiChatShopCardModelCopyWith(_$_AiChatShopCardModel value,
          $Res Function(_$_AiChatShopCardModel) then) =
      __$$_AiChatShopCardModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? logo,
      @JsonKey(name: 'type_label') String? typeLabel,
      num? rating});
}

/// @nodoc
class __$$_AiChatShopCardModelCopyWithImpl<$Res>
    extends _$AiChatShopCardModelCopyWithImpl<$Res, _$_AiChatShopCardModel>
    implements _$$_AiChatShopCardModelCopyWith<$Res> {
  __$$_AiChatShopCardModelCopyWithImpl(_$_AiChatShopCardModel _value,
      $Res Function(_$_AiChatShopCardModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? logo = freezed,
    Object? typeLabel = freezed,
    Object? rating = freezed,
  }) {
    return _then(_$_AiChatShopCardModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      typeLabel: freezed == typeLabel
          ? _value.typeLabel
          : typeLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_AiChatShopCardModel extends _AiChatShopCardModel {
  const _$_AiChatShopCardModel(
      {this.id,
      this.name,
      this.logo,
      @JsonKey(name: 'type_label') this.typeLabel,
      this.rating})
      : super._();

  factory _$_AiChatShopCardModel.fromJson(Map<String, dynamic> json) =>
      _$$_AiChatShopCardModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? logo;
  @override
  @JsonKey(name: 'type_label')
  final String? typeLabel;
  @override
  final num? rating;

  @override
  String toString() {
    return 'AiChatShopCardModel(id: $id, name: $name, logo: $logo, typeLabel: $typeLabel, rating: $rating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AiChatShopCardModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.typeLabel, typeLabel) ||
                other.typeLabel == typeLabel) &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, logo, typeLabel, rating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AiChatShopCardModelCopyWith<_$_AiChatShopCardModel> get copyWith =>
      __$$_AiChatShopCardModelCopyWithImpl<_$_AiChatShopCardModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AiChatShopCardModelToJson(
      this,
    );
  }
}

abstract class _AiChatShopCardModel extends AiChatShopCardModel {
  const factory _AiChatShopCardModel(
      {final int? id,
      final String? name,
      final String? logo,
      @JsonKey(name: 'type_label') final String? typeLabel,
      final num? rating}) = _$_AiChatShopCardModel;
  const _AiChatShopCardModel._() : super._();

  factory _AiChatShopCardModel.fromJson(Map<String, dynamic> json) =
      _$_AiChatShopCardModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get logo;
  @override
  @JsonKey(name: 'type_label')
  String? get typeLabel;
  @override
  num? get rating;
  @override
  @JsonKey(ignore: true)
  _$$_AiChatShopCardModelCopyWith<_$_AiChatShopCardModel> get copyWith =>
      throw _privateConstructorUsedError;
}
