// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gift_card_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GiftCardModel _$GiftCardModelFromJson(Map<String, dynamic> json) {
  return _GiftCardModel.fromJson(json);
}

/// @nodoc
mixin _$GiftCardModel {
  @JsonKey(name: "summary")
  ShippingSummaryModel get shippingSummaryModel =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "applied_gift_card")
  String? get appliedGiftCard => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GiftCardModelCopyWith<GiftCardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GiftCardModelCopyWith<$Res> {
  factory $GiftCardModelCopyWith(
          GiftCardModel value, $Res Function(GiftCardModel) then) =
      _$GiftCardModelCopyWithImpl<$Res, GiftCardModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "summary") ShippingSummaryModel shippingSummaryModel,
      @JsonKey(name: "applied_gift_card") String? appliedGiftCard});

  $ShippingSummaryModelCopyWith<$Res> get shippingSummaryModel;
}

/// @nodoc
class _$GiftCardModelCopyWithImpl<$Res, $Val extends GiftCardModel>
    implements $GiftCardModelCopyWith<$Res> {
  _$GiftCardModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shippingSummaryModel = null,
    Object? appliedGiftCard = freezed,
  }) {
    return _then(_value.copyWith(
      shippingSummaryModel: null == shippingSummaryModel
          ? _value.shippingSummaryModel
          : shippingSummaryModel // ignore: cast_nullable_to_non_nullable
              as ShippingSummaryModel,
      appliedGiftCard: freezed == appliedGiftCard
          ? _value.appliedGiftCard
          : appliedGiftCard // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ShippingSummaryModelCopyWith<$Res> get shippingSummaryModel {
    return $ShippingSummaryModelCopyWith<$Res>(_value.shippingSummaryModel,
        (value) {
      return _then(_value.copyWith(shippingSummaryModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GiftCardModelCopyWith<$Res>
    implements $GiftCardModelCopyWith<$Res> {
  factory _$$_GiftCardModelCopyWith(
          _$_GiftCardModel value, $Res Function(_$_GiftCardModel) then) =
      __$$_GiftCardModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "summary") ShippingSummaryModel shippingSummaryModel,
      @JsonKey(name: "applied_gift_card") String? appliedGiftCard});

  @override
  $ShippingSummaryModelCopyWith<$Res> get shippingSummaryModel;
}

/// @nodoc
class __$$_GiftCardModelCopyWithImpl<$Res>
    extends _$GiftCardModelCopyWithImpl<$Res, _$_GiftCardModel>
    implements _$$_GiftCardModelCopyWith<$Res> {
  __$$_GiftCardModelCopyWithImpl(
      _$_GiftCardModel _value, $Res Function(_$_GiftCardModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shippingSummaryModel = null,
    Object? appliedGiftCard = freezed,
  }) {
    return _then(_$_GiftCardModel(
      shippingSummaryModel: null == shippingSummaryModel
          ? _value.shippingSummaryModel
          : shippingSummaryModel // ignore: cast_nullable_to_non_nullable
              as ShippingSummaryModel,
      appliedGiftCard: freezed == appliedGiftCard
          ? _value.appliedGiftCard
          : appliedGiftCard // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_GiftCardModel extends _GiftCardModel {
  _$_GiftCardModel(
      {@JsonKey(name: "summary") required this.shippingSummaryModel,
      @JsonKey(name: "applied_gift_card") this.appliedGiftCard})
      : super._();

  factory _$_GiftCardModel.fromJson(Map<String, dynamic> json) =>
      _$$_GiftCardModelFromJson(json);

  @override
  @JsonKey(name: "summary")
  final ShippingSummaryModel shippingSummaryModel;
  @override
  @JsonKey(name: "applied_gift_card")
  final String? appliedGiftCard;

  @override
  String toString() {
    return 'GiftCardModel(shippingSummaryModel: $shippingSummaryModel, appliedGiftCard: $appliedGiftCard)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GiftCardModel &&
            (identical(other.shippingSummaryModel, shippingSummaryModel) ||
                other.shippingSummaryModel == shippingSummaryModel) &&
            (identical(other.appliedGiftCard, appliedGiftCard) ||
                other.appliedGiftCard == appliedGiftCard));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, shippingSummaryModel, appliedGiftCard);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GiftCardModelCopyWith<_$_GiftCardModel> get copyWith =>
      __$$_GiftCardModelCopyWithImpl<_$_GiftCardModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GiftCardModelToJson(
      this,
    );
  }
}

abstract class _GiftCardModel extends GiftCardModel {
  factory _GiftCardModel(
          {@JsonKey(name: "summary")
          required final ShippingSummaryModel shippingSummaryModel,
          @JsonKey(name: "applied_gift_card") final String? appliedGiftCard}) =
      _$_GiftCardModel;
  _GiftCardModel._() : super._();

  factory _GiftCardModel.fromJson(Map<String, dynamic> json) =
      _$_GiftCardModel.fromJson;

  @override
  @JsonKey(name: "summary")
  ShippingSummaryModel get shippingSummaryModel;
  @override
  @JsonKey(name: "applied_gift_card")
  String? get appliedGiftCard;
  @override
  @JsonKey(ignore: true)
  _$$_GiftCardModelCopyWith<_$_GiftCardModel> get copyWith =>
      throw _privateConstructorUsedError;
}
