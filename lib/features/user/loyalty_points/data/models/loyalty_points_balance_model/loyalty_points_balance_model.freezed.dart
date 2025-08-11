// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loyalty_points_balance_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoyaltyPointsBalanceModel _$LoyaltyPointsBalanceModelFromJson(
    Map<String, dynamic> json) {
  return _LoyaltyPointsBalanceModel.fromJson(json);
}

/// @nodoc
mixin _$LoyaltyPointsBalanceModel {
  int get points => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoyaltyPointsBalanceModelCopyWith<LoyaltyPointsBalanceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoyaltyPointsBalanceModelCopyWith<$Res> {
  factory $LoyaltyPointsBalanceModelCopyWith(LoyaltyPointsBalanceModel value,
          $Res Function(LoyaltyPointsBalanceModel) then) =
      _$LoyaltyPointsBalanceModelCopyWithImpl<$Res, LoyaltyPointsBalanceModel>;
  @useResult
  $Res call({int points, String amount});
}

/// @nodoc
class _$LoyaltyPointsBalanceModelCopyWithImpl<$Res,
        $Val extends LoyaltyPointsBalanceModel>
    implements $LoyaltyPointsBalanceModelCopyWith<$Res> {
  _$LoyaltyPointsBalanceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? points = null,
    Object? amount = null,
  }) {
    return _then(_value.copyWith(
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoyaltyPointsBalanceModelCopyWith<$Res>
    implements $LoyaltyPointsBalanceModelCopyWith<$Res> {
  factory _$$_LoyaltyPointsBalanceModelCopyWith(
          _$_LoyaltyPointsBalanceModel value,
          $Res Function(_$_LoyaltyPointsBalanceModel) then) =
      __$$_LoyaltyPointsBalanceModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int points, String amount});
}

/// @nodoc
class __$$_LoyaltyPointsBalanceModelCopyWithImpl<$Res>
    extends _$LoyaltyPointsBalanceModelCopyWithImpl<$Res,
        _$_LoyaltyPointsBalanceModel>
    implements _$$_LoyaltyPointsBalanceModelCopyWith<$Res> {
  __$$_LoyaltyPointsBalanceModelCopyWithImpl(
      _$_LoyaltyPointsBalanceModel _value,
      $Res Function(_$_LoyaltyPointsBalanceModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? points = null,
    Object? amount = null,
  }) {
    return _then(_$_LoyaltyPointsBalanceModel(
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_LoyaltyPointsBalanceModel extends _LoyaltyPointsBalanceModel {
  _$_LoyaltyPointsBalanceModel({required this.points, required this.amount})
      : super._();

  factory _$_LoyaltyPointsBalanceModel.fromJson(Map<String, dynamic> json) =>
      _$$_LoyaltyPointsBalanceModelFromJson(json);

  @override
  final int points;
  @override
  final String amount;

  @override
  String toString() {
    return 'LoyaltyPointsBalanceModel(points: $points, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoyaltyPointsBalanceModel &&
            (identical(other.points, points) || other.points == points) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, points, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoyaltyPointsBalanceModelCopyWith<_$_LoyaltyPointsBalanceModel>
      get copyWith => __$$_LoyaltyPointsBalanceModelCopyWithImpl<
          _$_LoyaltyPointsBalanceModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoyaltyPointsBalanceModelToJson(
      this,
    );
  }
}

abstract class _LoyaltyPointsBalanceModel extends LoyaltyPointsBalanceModel {
  factory _LoyaltyPointsBalanceModel(
      {required final int points,
      required final String amount}) = _$_LoyaltyPointsBalanceModel;
  _LoyaltyPointsBalanceModel._() : super._();

  factory _LoyaltyPointsBalanceModel.fromJson(Map<String, dynamic> json) =
      _$_LoyaltyPointsBalanceModel.fromJson;

  @override
  int get points;
  @override
  String get amount;
  @override
  @JsonKey(ignore: true)
  _$$_LoyaltyPointsBalanceModelCopyWith<_$_LoyaltyPointsBalanceModel>
      get copyWith => throw _privateConstructorUsedError;
}
