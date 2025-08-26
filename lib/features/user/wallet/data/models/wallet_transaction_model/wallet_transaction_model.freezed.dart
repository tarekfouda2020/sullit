// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_transaction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WalletTransactionModel _$WalletTransactionModelFromJson(
    Map<String, dynamic> json) {
  return _WalletTransactionModel.fromJson(json);
}

/// @nodoc
mixin _$WalletTransactionModel {
  int get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: "type_label")
  String get typeLabel => throw _privateConstructorUsedError;
  @JsonKey(name: "source_type")
  String get sourceType => throw _privateConstructorUsedError;
  @JsonKey(name: "source_type_label")
  String get sourceTypeLabel => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;
  @JsonKey(name: "reference_no")
  String get referenceNo => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WalletTransactionModelCopyWith<WalletTransactionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletTransactionModelCopyWith<$Res> {
  factory $WalletTransactionModelCopyWith(WalletTransactionModel value,
          $Res Function(WalletTransactionModel) then) =
      _$WalletTransactionModelCopyWithImpl<$Res, WalletTransactionModel>;
  @useResult
  $Res call(
      {int id,
      String type,
      @JsonKey(name: "type_label") String typeLabel,
      @JsonKey(name: "source_type") String sourceType,
      @JsonKey(name: "source_type_label") String sourceTypeLabel,
      String amount,
      @JsonKey(name: "reference_no") String referenceNo,
      @JsonKey(name: "created_at") String createdAt});
}

/// @nodoc
class _$WalletTransactionModelCopyWithImpl<$Res,
        $Val extends WalletTransactionModel>
    implements $WalletTransactionModelCopyWith<$Res> {
  _$WalletTransactionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? typeLabel = null,
    Object? sourceType = null,
    Object? sourceTypeLabel = null,
    Object? amount = null,
    Object? referenceNo = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      typeLabel: null == typeLabel
          ? _value.typeLabel
          : typeLabel // ignore: cast_nullable_to_non_nullable
              as String,
      sourceType: null == sourceType
          ? _value.sourceType
          : sourceType // ignore: cast_nullable_to_non_nullable
              as String,
      sourceTypeLabel: null == sourceTypeLabel
          ? _value.sourceTypeLabel
          : sourceTypeLabel // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      referenceNo: null == referenceNo
          ? _value.referenceNo
          : referenceNo // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WalletTransactionModelCopyWith<$Res>
    implements $WalletTransactionModelCopyWith<$Res> {
  factory _$$_WalletTransactionModelCopyWith(_$_WalletTransactionModel value,
          $Res Function(_$_WalletTransactionModel) then) =
      __$$_WalletTransactionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String type,
      @JsonKey(name: "type_label") String typeLabel,
      @JsonKey(name: "source_type") String sourceType,
      @JsonKey(name: "source_type_label") String sourceTypeLabel,
      String amount,
      @JsonKey(name: "reference_no") String referenceNo,
      @JsonKey(name: "created_at") String createdAt});
}

/// @nodoc
class __$$_WalletTransactionModelCopyWithImpl<$Res>
    extends _$WalletTransactionModelCopyWithImpl<$Res,
        _$_WalletTransactionModel>
    implements _$$_WalletTransactionModelCopyWith<$Res> {
  __$$_WalletTransactionModelCopyWithImpl(_$_WalletTransactionModel _value,
      $Res Function(_$_WalletTransactionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? typeLabel = null,
    Object? sourceType = null,
    Object? sourceTypeLabel = null,
    Object? amount = null,
    Object? referenceNo = null,
    Object? createdAt = null,
  }) {
    return _then(_$_WalletTransactionModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      typeLabel: null == typeLabel
          ? _value.typeLabel
          : typeLabel // ignore: cast_nullable_to_non_nullable
              as String,
      sourceType: null == sourceType
          ? _value.sourceType
          : sourceType // ignore: cast_nullable_to_non_nullable
              as String,
      sourceTypeLabel: null == sourceTypeLabel
          ? _value.sourceTypeLabel
          : sourceTypeLabel // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      referenceNo: null == referenceNo
          ? _value.referenceNo
          : referenceNo // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_WalletTransactionModel extends _WalletTransactionModel {
  const _$_WalletTransactionModel(
      {required this.id,
      required this.type,
      @JsonKey(name: "type_label") required this.typeLabel,
      @JsonKey(name: "source_type") required this.sourceType,
      @JsonKey(name: "source_type_label") required this.sourceTypeLabel,
      required this.amount,
      @JsonKey(name: "reference_no") required this.referenceNo,
      @JsonKey(name: "created_at") required this.createdAt})
      : super._();

  factory _$_WalletTransactionModel.fromJson(Map<String, dynamic> json) =>
      _$$_WalletTransactionModelFromJson(json);

  @override
  final int id;
  @override
  final String type;
  @override
  @JsonKey(name: "type_label")
  final String typeLabel;
  @override
  @JsonKey(name: "source_type")
  final String sourceType;
  @override
  @JsonKey(name: "source_type_label")
  final String sourceTypeLabel;
  @override
  final String amount;
  @override
  @JsonKey(name: "reference_no")
  final String referenceNo;
  @override
  @JsonKey(name: "created_at")
  final String createdAt;

  @override
  String toString() {
    return 'WalletTransactionModel(id: $id, type: $type, typeLabel: $typeLabel, sourceType: $sourceType, sourceTypeLabel: $sourceTypeLabel, amount: $amount, referenceNo: $referenceNo, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WalletTransactionModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.typeLabel, typeLabel) ||
                other.typeLabel == typeLabel) &&
            (identical(other.sourceType, sourceType) ||
                other.sourceType == sourceType) &&
            (identical(other.sourceTypeLabel, sourceTypeLabel) ||
                other.sourceTypeLabel == sourceTypeLabel) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.referenceNo, referenceNo) ||
                other.referenceNo == referenceNo) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, type, typeLabel, sourceType,
      sourceTypeLabel, amount, referenceNo, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WalletTransactionModelCopyWith<_$_WalletTransactionModel> get copyWith =>
      __$$_WalletTransactionModelCopyWithImpl<_$_WalletTransactionModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WalletTransactionModelToJson(
      this,
    );
  }
}

abstract class _WalletTransactionModel extends WalletTransactionModel {
  const factory _WalletTransactionModel(
      {required final int id,
      required final String type,
      @JsonKey(name: "type_label") required final String typeLabel,
      @JsonKey(name: "source_type") required final String sourceType,
      @JsonKey(name: "source_type_label") required final String sourceTypeLabel,
      required final String amount,
      @JsonKey(name: "reference_no") required final String referenceNo,
      @JsonKey(name: "created_at")
      required final String createdAt}) = _$_WalletTransactionModel;
  const _WalletTransactionModel._() : super._();

  factory _WalletTransactionModel.fromJson(Map<String, dynamic> json) =
      _$_WalletTransactionModel.fromJson;

  @override
  int get id;
  @override
  String get type;
  @override
  @JsonKey(name: "type_label")
  String get typeLabel;
  @override
  @JsonKey(name: "source_type")
  String get sourceType;
  @override
  @JsonKey(name: "source_type_label")
  String get sourceTypeLabel;
  @override
  String get amount;
  @override
  @JsonKey(name: "reference_no")
  String get referenceNo;
  @override
  @JsonKey(name: "created_at")
  String get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_WalletTransactionModelCopyWith<_$_WalletTransactionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
