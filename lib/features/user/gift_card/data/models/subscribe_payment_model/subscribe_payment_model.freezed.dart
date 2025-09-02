// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscribe_payment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SubscribePaymentModel _$SubscribePaymentModelFromJson(
    Map<String, dynamic> json) {
  return _SubscribePaymentModel.fromJson(json);
}

/// @nodoc
mixin _$SubscribePaymentModel {
  @JsonKey(name: "transaction_url")
  String? get transactionUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubscribePaymentModelCopyWith<SubscribePaymentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscribePaymentModelCopyWith<$Res> {
  factory $SubscribePaymentModelCopyWith(SubscribePaymentModel value,
          $Res Function(SubscribePaymentModel) then) =
      _$SubscribePaymentModelCopyWithImpl<$Res, SubscribePaymentModel>;
  @useResult
  $Res call({@JsonKey(name: "transaction_url") String? transactionUrl});
}

/// @nodoc
class _$SubscribePaymentModelCopyWithImpl<$Res,
        $Val extends SubscribePaymentModel>
    implements $SubscribePaymentModelCopyWith<$Res> {
  _$SubscribePaymentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionUrl = freezed,
  }) {
    return _then(_value.copyWith(
      transactionUrl: freezed == transactionUrl
          ? _value.transactionUrl
          : transactionUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SubscribePaymentModelCopyWith<$Res>
    implements $SubscribePaymentModelCopyWith<$Res> {
  factory _$$_SubscribePaymentModelCopyWith(_$_SubscribePaymentModel value,
          $Res Function(_$_SubscribePaymentModel) then) =
      __$$_SubscribePaymentModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "transaction_url") String? transactionUrl});
}

/// @nodoc
class __$$_SubscribePaymentModelCopyWithImpl<$Res>
    extends _$SubscribePaymentModelCopyWithImpl<$Res, _$_SubscribePaymentModel>
    implements _$$_SubscribePaymentModelCopyWith<$Res> {
  __$$_SubscribePaymentModelCopyWithImpl(_$_SubscribePaymentModel _value,
      $Res Function(_$_SubscribePaymentModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionUrl = freezed,
  }) {
    return _then(_$_SubscribePaymentModel(
      transactionUrl: freezed == transactionUrl
          ? _value.transactionUrl
          : transactionUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_SubscribePaymentModel extends _SubscribePaymentModel {
  _$_SubscribePaymentModel(
      {@JsonKey(name: "transaction_url") this.transactionUrl})
      : super._();

  factory _$_SubscribePaymentModel.fromJson(Map<String, dynamic> json) =>
      _$$_SubscribePaymentModelFromJson(json);

  @override
  @JsonKey(name: "transaction_url")
  final String? transactionUrl;

  @override
  String toString() {
    return 'SubscribePaymentModel(transactionUrl: $transactionUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubscribePaymentModel &&
            (identical(other.transactionUrl, transactionUrl) ||
                other.transactionUrl == transactionUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, transactionUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SubscribePaymentModelCopyWith<_$_SubscribePaymentModel> get copyWith =>
      __$$_SubscribePaymentModelCopyWithImpl<_$_SubscribePaymentModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SubscribePaymentModelToJson(
      this,
    );
  }
}

abstract class _SubscribePaymentModel extends SubscribePaymentModel {
  factory _SubscribePaymentModel(
          {@JsonKey(name: "transaction_url") final String? transactionUrl}) =
      _$_SubscribePaymentModel;
  _SubscribePaymentModel._() : super._();

  factory _SubscribePaymentModel.fromJson(Map<String, dynamic> json) =
      _$_SubscribePaymentModel.fromJson;

  @override
  @JsonKey(name: "transaction_url")
  String? get transactionUrl;
  @override
  @JsonKey(ignore: true)
  _$$_SubscribePaymentModelCopyWith<_$_SubscribePaymentModel> get copyWith =>
      throw _privateConstructorUsedError;
}
