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

GiftCardAppliedCartModel _$GiftCardAppliedCartModelFromJson(
    Map<String, dynamic> json) {
  return _GiftCardAppliedCartModel.fromJson(json);
}

/// @nodoc
mixin _$GiftCardAppliedCartModel {
  @JsonKey(name: "summary")
  ShippingSummaryModel get shippingSummaryModel =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "applied_gift_card")
  String? get appliedGiftCard => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GiftCardAppliedCartModelCopyWith<GiftCardAppliedCartModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GiftCardAppliedCartModelCopyWith<$Res> {
  factory $GiftCardAppliedCartModelCopyWith(GiftCardAppliedCartModel value,
          $Res Function(GiftCardAppliedCartModel) then) =
      _$GiftCardAppliedCartModelCopyWithImpl<$Res, GiftCardAppliedCartModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "summary") ShippingSummaryModel shippingSummaryModel,
      @JsonKey(name: "applied_gift_card") String? appliedGiftCard});

  $ShippingSummaryModelCopyWith<$Res> get shippingSummaryModel;
}

/// @nodoc
class _$GiftCardAppliedCartModelCopyWithImpl<$Res,
        $Val extends GiftCardAppliedCartModel>
    implements $GiftCardAppliedCartModelCopyWith<$Res> {
  _$GiftCardAppliedCartModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_GiftCardAppliedCartModelCopyWith<$Res>
    implements $GiftCardAppliedCartModelCopyWith<$Res> {
  factory _$$_GiftCardAppliedCartModelCopyWith(
          _$_GiftCardAppliedCartModel value,
          $Res Function(_$_GiftCardAppliedCartModel) then) =
      __$$_GiftCardAppliedCartModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "summary") ShippingSummaryModel shippingSummaryModel,
      @JsonKey(name: "applied_gift_card") String? appliedGiftCard});

  @override
  $ShippingSummaryModelCopyWith<$Res> get shippingSummaryModel;
}

/// @nodoc
class __$$_GiftCardAppliedCartModelCopyWithImpl<$Res>
    extends _$GiftCardAppliedCartModelCopyWithImpl<$Res,
        _$_GiftCardAppliedCartModel>
    implements _$$_GiftCardAppliedCartModelCopyWith<$Res> {
  __$$_GiftCardAppliedCartModelCopyWithImpl(_$_GiftCardAppliedCartModel _value,
      $Res Function(_$_GiftCardAppliedCartModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shippingSummaryModel = null,
    Object? appliedGiftCard = freezed,
  }) {
    return _then(_$_GiftCardAppliedCartModel(
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
class _$_GiftCardAppliedCartModel extends _GiftCardAppliedCartModel {
  _$_GiftCardAppliedCartModel(
      {@JsonKey(name: "summary") required this.shippingSummaryModel,
      @JsonKey(name: "applied_gift_card") this.appliedGiftCard})
      : super._();

  factory _$_GiftCardAppliedCartModel.fromJson(Map<String, dynamic> json) =>
      _$$_GiftCardAppliedCartModelFromJson(json);

  @override
  @JsonKey(name: "summary")
  final ShippingSummaryModel shippingSummaryModel;
  @override
  @JsonKey(name: "applied_gift_card")
  final String? appliedGiftCard;

  @override
  String toString() {
    return 'GiftCardAppliedCartModel(shippingSummaryModel: $shippingSummaryModel, appliedGiftCard: $appliedGiftCard)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GiftCardAppliedCartModel &&
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
  _$$_GiftCardAppliedCartModelCopyWith<_$_GiftCardAppliedCartModel>
      get copyWith => __$$_GiftCardAppliedCartModelCopyWithImpl<
          _$_GiftCardAppliedCartModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GiftCardAppliedCartModelToJson(
      this,
    );
  }
}

abstract class _GiftCardAppliedCartModel extends GiftCardAppliedCartModel {
  factory _GiftCardAppliedCartModel(
          {@JsonKey(name: "summary")
          required final ShippingSummaryModel shippingSummaryModel,
          @JsonKey(name: "applied_gift_card") final String? appliedGiftCard}) =
      _$_GiftCardAppliedCartModel;
  _GiftCardAppliedCartModel._() : super._();

  factory _GiftCardAppliedCartModel.fromJson(Map<String, dynamic> json) =
      _$_GiftCardAppliedCartModel.fromJson;

  @override
  @JsonKey(name: "summary")
  ShippingSummaryModel get shippingSummaryModel;
  @override
  @JsonKey(name: "applied_gift_card")
  String? get appliedGiftCard;
  @override
  @JsonKey(ignore: true)
  _$$_GiftCardAppliedCartModelCopyWith<_$_GiftCardAppliedCartModel>
      get copyWith => throw _privateConstructorUsedError;
}
