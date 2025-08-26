// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transactions_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransactionsModel _$TransactionsModelFromJson(Map<String, dynamic> json) {
  return _TransactionsModel.fromJson(json);
}

/// @nodoc
mixin _$TransactionsModel {
  int get id => throw _privateConstructorUsedError;
  int get points => throw _privateConstructorUsedError;
  @JsonKey(name: "transaction_no")
  int get transactionNo => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: "type_label")
  String get typeLabel => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionsModelCopyWith<TransactionsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionsModelCopyWith<$Res> {
  factory $TransactionsModelCopyWith(
          TransactionsModel value, $Res Function(TransactionsModel) then) =
      _$TransactionsModelCopyWithImpl<$Res, TransactionsModel>;
  @useResult
  $Res call(
      {int id,
      int points,
      @JsonKey(name: "transaction_no") int transactionNo,
      String type,
      @JsonKey(name: "type_label") String typeLabel,
      @JsonKey(name: "created_at") String createdAt});
}

/// @nodoc
class _$TransactionsModelCopyWithImpl<$Res, $Val extends TransactionsModel>
    implements $TransactionsModelCopyWith<$Res> {
  _$TransactionsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? points = null,
    Object? transactionNo = null,
    Object? type = null,
    Object? typeLabel = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
      transactionNo: null == transactionNo
          ? _value.transactionNo
          : transactionNo // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      typeLabel: null == typeLabel
          ? _value.typeLabel
          : typeLabel // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TransactionsModelCopyWith<$Res>
    implements $TransactionsModelCopyWith<$Res> {
  factory _$$_TransactionsModelCopyWith(_$_TransactionsModel value,
          $Res Function(_$_TransactionsModel) then) =
      __$$_TransactionsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int points,
      @JsonKey(name: "transaction_no") int transactionNo,
      String type,
      @JsonKey(name: "type_label") String typeLabel,
      @JsonKey(name: "created_at") String createdAt});
}

/// @nodoc
class __$$_TransactionsModelCopyWithImpl<$Res>
    extends _$TransactionsModelCopyWithImpl<$Res, _$_TransactionsModel>
    implements _$$_TransactionsModelCopyWith<$Res> {
  __$$_TransactionsModelCopyWithImpl(
      _$_TransactionsModel _value, $Res Function(_$_TransactionsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? points = null,
    Object? transactionNo = null,
    Object? type = null,
    Object? typeLabel = null,
    Object? createdAt = null,
  }) {
    return _then(_$_TransactionsModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
      transactionNo: null == transactionNo
          ? _value.transactionNo
          : transactionNo // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      typeLabel: null == typeLabel
          ? _value.typeLabel
          : typeLabel // ignore: cast_nullable_to_non_nullable
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
class _$_TransactionsModel extends _TransactionsModel {
  _$_TransactionsModel(
      {required this.id,
      required this.points,
      @JsonKey(name: "transaction_no") required this.transactionNo,
      required this.type,
      @JsonKey(name: "type_label") required this.typeLabel,
      @JsonKey(name: "created_at") required this.createdAt})
      : super._();

  factory _$_TransactionsModel.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionsModelFromJson(json);

  @override
  final int id;
  @override
  final int points;
  @override
  @JsonKey(name: "transaction_no")
  final int transactionNo;
  @override
  final String type;
  @override
  @JsonKey(name: "type_label")
  final String typeLabel;
  @override
  @JsonKey(name: "created_at")
  final String createdAt;

  @override
  String toString() {
    return 'TransactionsModel(id: $id, points: $points, transactionNo: $transactionNo, type: $type, typeLabel: $typeLabel, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransactionsModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.points, points) || other.points == points) &&
            (identical(other.transactionNo, transactionNo) ||
                other.transactionNo == transactionNo) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.typeLabel, typeLabel) ||
                other.typeLabel == typeLabel) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, points, transactionNo, type, typeLabel, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransactionsModelCopyWith<_$_TransactionsModel> get copyWith =>
      __$$_TransactionsModelCopyWithImpl<_$_TransactionsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionsModelToJson(
      this,
    );
  }
}

abstract class _TransactionsModel extends TransactionsModel {
  factory _TransactionsModel(
          {required final int id,
          required final int points,
          @JsonKey(name: "transaction_no") required final int transactionNo,
          required final String type,
          @JsonKey(name: "type_label") required final String typeLabel,
          @JsonKey(name: "created_at") required final String createdAt}) =
      _$_TransactionsModel;
  _TransactionsModel._() : super._();

  factory _TransactionsModel.fromJson(Map<String, dynamic> json) =
      _$_TransactionsModel.fromJson;

  @override
  int get id;
  @override
  int get points;
  @override
  @JsonKey(name: "transaction_no")
  int get transactionNo;
  @override
  String get type;
  @override
  @JsonKey(name: "type_label")
  String get typeLabel;
  @override
  @JsonKey(name: "created_at")
  String get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionsModelCopyWith<_$_TransactionsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
