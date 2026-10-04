// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ai_chat_product_card_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AiChatProductCardModel _$AiChatProductCardModelFromJson(
    Map<String, dynamic> json) {
  return _AiChatProductCardModel.fromJson(json);
}

/// @nodoc
mixin _$AiChatProductCardModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumbnail_img')
  String? get thumbnailImg => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_high_low')
  String? get priceHighLow => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_high_low_discount')
  String? get priceHighLowDiscount => throw _privateConstructorUsedError;
  @JsonKey(name: 'currency_symbol')
  String? get currencySymbol => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_discount')
  bool? get hasDiscount => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_wishlist')
  bool? get isWishlist => throw _privateConstructorUsedError;
  AiChatBranchModel? get branch => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AiChatProductCardModelCopyWith<AiChatProductCardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AiChatProductCardModelCopyWith<$Res> {
  factory $AiChatProductCardModelCopyWith(AiChatProductCardModel value,
          $Res Function(AiChatProductCardModel) then) =
      _$AiChatProductCardModelCopyWithImpl<$Res, AiChatProductCardModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      @JsonKey(name: 'thumbnail_img') String? thumbnailImg,
      @JsonKey(name: 'price_high_low') String? priceHighLow,
      @JsonKey(name: 'price_high_low_discount') String? priceHighLowDiscount,
      @JsonKey(name: 'currency_symbol') String? currencySymbol,
      @JsonKey(name: 'has_discount') bool? hasDiscount,
      @JsonKey(name: 'is_wishlist') bool? isWishlist,
      AiChatBranchModel? branch});

  $AiChatBranchModelCopyWith<$Res>? get branch;
}

/// @nodoc
class _$AiChatProductCardModelCopyWithImpl<$Res,
        $Val extends AiChatProductCardModel>
    implements $AiChatProductCardModelCopyWith<$Res> {
  _$AiChatProductCardModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? thumbnailImg = freezed,
    Object? priceHighLow = freezed,
    Object? priceHighLowDiscount = freezed,
    Object? currencySymbol = freezed,
    Object? hasDiscount = freezed,
    Object? isWishlist = freezed,
    Object? branch = freezed,
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
      thumbnailImg: freezed == thumbnailImg
          ? _value.thumbnailImg
          : thumbnailImg // ignore: cast_nullable_to_non_nullable
              as String?,
      priceHighLow: freezed == priceHighLow
          ? _value.priceHighLow
          : priceHighLow // ignore: cast_nullable_to_non_nullable
              as String?,
      priceHighLowDiscount: freezed == priceHighLowDiscount
          ? _value.priceHighLowDiscount
          : priceHighLowDiscount // ignore: cast_nullable_to_non_nullable
              as String?,
      currencySymbol: freezed == currencySymbol
          ? _value.currencySymbol
          : currencySymbol // ignore: cast_nullable_to_non_nullable
              as String?,
      hasDiscount: freezed == hasDiscount
          ? _value.hasDiscount
          : hasDiscount // ignore: cast_nullable_to_non_nullable
              as bool?,
      isWishlist: freezed == isWishlist
          ? _value.isWishlist
          : isWishlist // ignore: cast_nullable_to_non_nullable
              as bool?,
      branch: freezed == branch
          ? _value.branch
          : branch // ignore: cast_nullable_to_non_nullable
              as AiChatBranchModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AiChatBranchModelCopyWith<$Res>? get branch {
    if (_value.branch == null) {
      return null;
    }

    return $AiChatBranchModelCopyWith<$Res>(_value.branch!, (value) {
      return _then(_value.copyWith(branch: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AiChatProductCardModelCopyWith<$Res>
    implements $AiChatProductCardModelCopyWith<$Res> {
  factory _$$_AiChatProductCardModelCopyWith(_$_AiChatProductCardModel value,
          $Res Function(_$_AiChatProductCardModel) then) =
      __$$_AiChatProductCardModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      @JsonKey(name: 'thumbnail_img') String? thumbnailImg,
      @JsonKey(name: 'price_high_low') String? priceHighLow,
      @JsonKey(name: 'price_high_low_discount') String? priceHighLowDiscount,
      @JsonKey(name: 'currency_symbol') String? currencySymbol,
      @JsonKey(name: 'has_discount') bool? hasDiscount,
      @JsonKey(name: 'is_wishlist') bool? isWishlist,
      AiChatBranchModel? branch});

  @override
  $AiChatBranchModelCopyWith<$Res>? get branch;
}

/// @nodoc
class __$$_AiChatProductCardModelCopyWithImpl<$Res>
    extends _$AiChatProductCardModelCopyWithImpl<$Res,
        _$_AiChatProductCardModel>
    implements _$$_AiChatProductCardModelCopyWith<$Res> {
  __$$_AiChatProductCardModelCopyWithImpl(_$_AiChatProductCardModel _value,
      $Res Function(_$_AiChatProductCardModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? thumbnailImg = freezed,
    Object? priceHighLow = freezed,
    Object? priceHighLowDiscount = freezed,
    Object? currencySymbol = freezed,
    Object? hasDiscount = freezed,
    Object? isWishlist = freezed,
    Object? branch = freezed,
  }) {
    return _then(_$_AiChatProductCardModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailImg: freezed == thumbnailImg
          ? _value.thumbnailImg
          : thumbnailImg // ignore: cast_nullable_to_non_nullable
              as String?,
      priceHighLow: freezed == priceHighLow
          ? _value.priceHighLow
          : priceHighLow // ignore: cast_nullable_to_non_nullable
              as String?,
      priceHighLowDiscount: freezed == priceHighLowDiscount
          ? _value.priceHighLowDiscount
          : priceHighLowDiscount // ignore: cast_nullable_to_non_nullable
              as String?,
      currencySymbol: freezed == currencySymbol
          ? _value.currencySymbol
          : currencySymbol // ignore: cast_nullable_to_non_nullable
              as String?,
      hasDiscount: freezed == hasDiscount
          ? _value.hasDiscount
          : hasDiscount // ignore: cast_nullable_to_non_nullable
              as bool?,
      isWishlist: freezed == isWishlist
          ? _value.isWishlist
          : isWishlist // ignore: cast_nullable_to_non_nullable
              as bool?,
      branch: freezed == branch
          ? _value.branch
          : branch // ignore: cast_nullable_to_non_nullable
              as AiChatBranchModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_AiChatProductCardModel extends _AiChatProductCardModel {
  const _$_AiChatProductCardModel(
      {this.id,
      this.name,
      @JsonKey(name: 'thumbnail_img') this.thumbnailImg,
      @JsonKey(name: 'price_high_low') this.priceHighLow,
      @JsonKey(name: 'price_high_low_discount') this.priceHighLowDiscount,
      @JsonKey(name: 'currency_symbol') this.currencySymbol,
      @JsonKey(name: 'has_discount') this.hasDiscount,
      @JsonKey(name: 'is_wishlist') this.isWishlist,
      this.branch})
      : super._();

  factory _$_AiChatProductCardModel.fromJson(Map<String, dynamic> json) =>
      _$$_AiChatProductCardModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  @JsonKey(name: 'thumbnail_img')
  final String? thumbnailImg;
  @override
  @JsonKey(name: 'price_high_low')
  final String? priceHighLow;
  @override
  @JsonKey(name: 'price_high_low_discount')
  final String? priceHighLowDiscount;
  @override
  @JsonKey(name: 'currency_symbol')
  final String? currencySymbol;
  @override
  @JsonKey(name: 'has_discount')
  final bool? hasDiscount;
  @override
  @JsonKey(name: 'is_wishlist')
  final bool? isWishlist;
  @override
  final AiChatBranchModel? branch;

  @override
  String toString() {
    return 'AiChatProductCardModel(id: $id, name: $name, thumbnailImg: $thumbnailImg, priceHighLow: $priceHighLow, priceHighLowDiscount: $priceHighLowDiscount, currencySymbol: $currencySymbol, hasDiscount: $hasDiscount, isWishlist: $isWishlist, branch: $branch)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AiChatProductCardModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.thumbnailImg, thumbnailImg) ||
                other.thumbnailImg == thumbnailImg) &&
            (identical(other.priceHighLow, priceHighLow) ||
                other.priceHighLow == priceHighLow) &&
            (identical(other.priceHighLowDiscount, priceHighLowDiscount) ||
                other.priceHighLowDiscount == priceHighLowDiscount) &&
            (identical(other.currencySymbol, currencySymbol) ||
                other.currencySymbol == currencySymbol) &&
            (identical(other.hasDiscount, hasDiscount) ||
                other.hasDiscount == hasDiscount) &&
            (identical(other.isWishlist, isWishlist) ||
                other.isWishlist == isWishlist) &&
            (identical(other.branch, branch) || other.branch == branch));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      thumbnailImg,
      priceHighLow,
      priceHighLowDiscount,
      currencySymbol,
      hasDiscount,
      isWishlist,
      branch);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AiChatProductCardModelCopyWith<_$_AiChatProductCardModel> get copyWith =>
      __$$_AiChatProductCardModelCopyWithImpl<_$_AiChatProductCardModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AiChatProductCardModelToJson(
      this,
    );
  }
}

abstract class _AiChatProductCardModel extends AiChatProductCardModel {
  const factory _AiChatProductCardModel(
      {final int? id,
      final String? name,
      @JsonKey(name: 'thumbnail_img') final String? thumbnailImg,
      @JsonKey(name: 'price_high_low') final String? priceHighLow,
      @JsonKey(name: 'price_high_low_discount')
      final String? priceHighLowDiscount,
      @JsonKey(name: 'currency_symbol') final String? currencySymbol,
      @JsonKey(name: 'has_discount') final bool? hasDiscount,
      @JsonKey(name: 'is_wishlist') final bool? isWishlist,
      final AiChatBranchModel? branch}) = _$_AiChatProductCardModel;
  const _AiChatProductCardModel._() : super._();

  factory _AiChatProductCardModel.fromJson(Map<String, dynamic> json) =
      _$_AiChatProductCardModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(name: 'thumbnail_img')
  String? get thumbnailImg;
  @override
  @JsonKey(name: 'price_high_low')
  String? get priceHighLow;
  @override
  @JsonKey(name: 'price_high_low_discount')
  String? get priceHighLowDiscount;
  @override
  @JsonKey(name: 'currency_symbol')
  String? get currencySymbol;
  @override
  @JsonKey(name: 'has_discount')
  bool? get hasDiscount;
  @override
  @JsonKey(name: 'is_wishlist')
  bool? get isWishlist;
  @override
  AiChatBranchModel? get branch;
  @override
  @JsonKey(ignore: true)
  _$$_AiChatProductCardModelCopyWith<_$_AiChatProductCardModel> get copyWith =>
      throw _privateConstructorUsedError;
}
