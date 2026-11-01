// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'price_comparison_step_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PriceComparisonStepModel _$PriceComparisonStepModelFromJson(
    Map<String, dynamic> json) {
  return _PriceComparisonStepModel.fromJson(json);
}

/// @nodoc
mixin _$PriceComparisonStepModel {
  String get key => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PriceComparisonStepModelCopyWith<PriceComparisonStepModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceComparisonStepModelCopyWith<$Res> {
  factory $PriceComparisonStepModelCopyWith(PriceComparisonStepModel value,
          $Res Function(PriceComparisonStepModel) then) =
      _$PriceComparisonStepModelCopyWithImpl<$Res, PriceComparisonStepModel>;
  @useResult
  $Res call({String key, String label, String status});
}

/// @nodoc
class _$PriceComparisonStepModelCopyWithImpl<$Res,
        $Val extends PriceComparisonStepModel>
    implements $PriceComparisonStepModelCopyWith<$Res> {
  _$PriceComparisonStepModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? label = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PriceComparisonStepModelCopyWith<$Res>
    implements $PriceComparisonStepModelCopyWith<$Res> {
  factory _$$_PriceComparisonStepModelCopyWith(
          _$_PriceComparisonStepModel value,
          $Res Function(_$_PriceComparisonStepModel) then) =
      __$$_PriceComparisonStepModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key, String label, String status});
}

/// @nodoc
class __$$_PriceComparisonStepModelCopyWithImpl<$Res>
    extends _$PriceComparisonStepModelCopyWithImpl<$Res,
        _$_PriceComparisonStepModel>
    implements _$$_PriceComparisonStepModelCopyWith<$Res> {
  __$$_PriceComparisonStepModelCopyWithImpl(_$_PriceComparisonStepModel _value,
      $Res Function(_$_PriceComparisonStepModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? label = null,
    Object? status = null,
  }) {
    return _then(_$_PriceComparisonStepModel(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PriceComparisonStepModel extends _PriceComparisonStepModel {
  const _$_PriceComparisonStepModel(
      {required this.key, required this.label, required this.status})
      : super._();

  factory _$_PriceComparisonStepModel.fromJson(Map<String, dynamic> json) =>
      _$$_PriceComparisonStepModelFromJson(json);

  @override
  final String key;
  @override
  final String label;
  @override
  final String status;

  @override
  String toString() {
    return 'PriceComparisonStepModel(key: $key, label: $label, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PriceComparisonStepModel &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, label, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PriceComparisonStepModelCopyWith<_$_PriceComparisonStepModel>
      get copyWith => __$$_PriceComparisonStepModelCopyWithImpl<
          _$_PriceComparisonStepModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PriceComparisonStepModelToJson(
      this,
    );
  }
}

abstract class _PriceComparisonStepModel extends PriceComparisonStepModel {
  const factory _PriceComparisonStepModel(
      {required final String key,
      required final String label,
      required final String status}) = _$_PriceComparisonStepModel;
  const _PriceComparisonStepModel._() : super._();

  factory _PriceComparisonStepModel.fromJson(Map<String, dynamic> json) =
      _$_PriceComparisonStepModel.fromJson;

  @override
  String get key;
  @override
  String get label;
  @override
  String get status;
  @override
  @JsonKey(ignore: true)
  _$$_PriceComparisonStepModelCopyWith<_$_PriceComparisonStepModel>
      get copyWith => throw _privateConstructorUsedError;
}
