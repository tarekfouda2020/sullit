// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WalletModel _$WalletModelFromJson(Map<String, dynamic> json) {
  return _WalletModel.fromJson(json);
}

/// @nodoc
mixin _$WalletModel {
  @JsonKey(name: "wallet_balance")
  String get walletBalance => throw _privateConstructorUsedError;
  @JsonKey(name: "wallet_credit")
  String get walletCredit => throw _privateConstructorUsedError;
  @JsonKey(name: "wallet_recharge_history")
  WalletRechargeHistoryModel get rechargedHistory =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WalletModelCopyWith<WalletModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletModelCopyWith<$Res> {
  factory $WalletModelCopyWith(
          WalletModel value, $Res Function(WalletModel) then) =
      _$WalletModelCopyWithImpl<$Res, WalletModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "wallet_balance") String walletBalance,
      @JsonKey(name: "wallet_credit") String walletCredit,
      @JsonKey(name: "wallet_recharge_history")
      WalletRechargeHistoryModel rechargedHistory});

  $WalletRechargeHistoryModelCopyWith<$Res> get rechargedHistory;
}

/// @nodoc
class _$WalletModelCopyWithImpl<$Res, $Val extends WalletModel>
    implements $WalletModelCopyWith<$Res> {
  _$WalletModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? walletBalance = null,
    Object? walletCredit = null,
    Object? rechargedHistory = null,
  }) {
    return _then(_value.copyWith(
      walletBalance: null == walletBalance
          ? _value.walletBalance
          : walletBalance // ignore: cast_nullable_to_non_nullable
              as String,
      walletCredit: null == walletCredit
          ? _value.walletCredit
          : walletCredit // ignore: cast_nullable_to_non_nullable
              as String,
      rechargedHistory: null == rechargedHistory
          ? _value.rechargedHistory
          : rechargedHistory // ignore: cast_nullable_to_non_nullable
              as WalletRechargeHistoryModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WalletRechargeHistoryModelCopyWith<$Res> get rechargedHistory {
    return $WalletRechargeHistoryModelCopyWith<$Res>(_value.rechargedHistory,
        (value) {
      return _then(_value.copyWith(rechargedHistory: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_WalletModelCopyWith<$Res>
    implements $WalletModelCopyWith<$Res> {
  factory _$$_WalletModelCopyWith(
          _$_WalletModel value, $Res Function(_$_WalletModel) then) =
      __$$_WalletModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "wallet_balance") String walletBalance,
      @JsonKey(name: "wallet_credit") String walletCredit,
      @JsonKey(name: "wallet_recharge_history")
      WalletRechargeHistoryModel rechargedHistory});

  @override
  $WalletRechargeHistoryModelCopyWith<$Res> get rechargedHistory;
}

/// @nodoc
class __$$_WalletModelCopyWithImpl<$Res>
    extends _$WalletModelCopyWithImpl<$Res, _$_WalletModel>
    implements _$$_WalletModelCopyWith<$Res> {
  __$$_WalletModelCopyWithImpl(
      _$_WalletModel _value, $Res Function(_$_WalletModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? walletBalance = null,
    Object? walletCredit = null,
    Object? rechargedHistory = null,
  }) {
    return _then(_$_WalletModel(
      walletBalance: null == walletBalance
          ? _value.walletBalance
          : walletBalance // ignore: cast_nullable_to_non_nullable
              as String,
      walletCredit: null == walletCredit
          ? _value.walletCredit
          : walletCredit // ignore: cast_nullable_to_non_nullable
              as String,
      rechargedHistory: null == rechargedHistory
          ? _value.rechargedHistory
          : rechargedHistory // ignore: cast_nullable_to_non_nullable
              as WalletRechargeHistoryModel,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_WalletModel extends _WalletModel {
  const _$_WalletModel(
      {@JsonKey(name: "wallet_balance") required this.walletBalance,
      @JsonKey(name: "wallet_credit") required this.walletCredit,
      @JsonKey(name: "wallet_recharge_history") required this.rechargedHistory})
      : super._();

  factory _$_WalletModel.fromJson(Map<String, dynamic> json) =>
      _$$_WalletModelFromJson(json);

  @override
  @JsonKey(name: "wallet_balance")
  final String walletBalance;
  @override
  @JsonKey(name: "wallet_credit")
  final String walletCredit;
  @override
  @JsonKey(name: "wallet_recharge_history")
  final WalletRechargeHistoryModel rechargedHistory;

  @override
  String toString() {
    return 'WalletModel(walletBalance: $walletBalance, walletCredit: $walletCredit, rechargedHistory: $rechargedHistory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WalletModel &&
            (identical(other.walletBalance, walletBalance) ||
                other.walletBalance == walletBalance) &&
            (identical(other.walletCredit, walletCredit) ||
                other.walletCredit == walletCredit) &&
            (identical(other.rechargedHistory, rechargedHistory) ||
                other.rechargedHistory == rechargedHistory));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, walletBalance, walletCredit, rechargedHistory);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WalletModelCopyWith<_$_WalletModel> get copyWith =>
      __$$_WalletModelCopyWithImpl<_$_WalletModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WalletModelToJson(
      this,
    );
  }
}

abstract class _WalletModel extends WalletModel {
  const factory _WalletModel(
          {@JsonKey(name: "wallet_balance") required final String walletBalance,
          @JsonKey(name: "wallet_credit") required final String walletCredit,
          @JsonKey(name: "wallet_recharge_history")
          required final WalletRechargeHistoryModel rechargedHistory}) =
      _$_WalletModel;
  const _WalletModel._() : super._();

  factory _WalletModel.fromJson(Map<String, dynamic> json) =
      _$_WalletModel.fromJson;

  @override
  @JsonKey(name: "wallet_balance")
  String get walletBalance;
  @override
  @JsonKey(name: "wallet_credit")
  String get walletCredit;
  @override
  @JsonKey(name: "wallet_recharge_history")
  WalletRechargeHistoryModel get rechargedHistory;
  @override
  @JsonKey(ignore: true)
  _$$_WalletModelCopyWith<_$_WalletModel> get copyWith =>
      throw _privateConstructorUsedError;
}
