// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_driver_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderDriverModel _$OrderDriverModelFromJson(Map<String, dynamic> json) {
  return _OrderDriverModel.fromJson(json);
}

/// @nodoc
mixin _$OrderDriverModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get avatar => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "work_type")
  String get workType => throw _privateConstructorUsedError;
  @JsonKey(name: "avg_rate")
  int get avgRate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderDriverModelCopyWith<OrderDriverModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDriverModelCopyWith<$Res> {
  factory $OrderDriverModelCopyWith(
          OrderDriverModel value, $Res Function(OrderDriverModel) then) =
      _$OrderDriverModelCopyWithImpl<$Res, OrderDriverModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      String email,
      String avatar,
      String phone,
      @JsonKey(name: "work_type") String workType,
      @JsonKey(name: "avg_rate") int avgRate});
}

/// @nodoc
class _$OrderDriverModelCopyWithImpl<$Res, $Val extends OrderDriverModel>
    implements $OrderDriverModelCopyWith<$Res> {
  _$OrderDriverModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? avatar = null,
    Object? phone = null,
    Object? workType = null,
    Object? avgRate = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      workType: null == workType
          ? _value.workType
          : workType // ignore: cast_nullable_to_non_nullable
              as String,
      avgRate: null == avgRate
          ? _value.avgRate
          : avgRate // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrderDriverModelCopyWith<$Res>
    implements $OrderDriverModelCopyWith<$Res> {
  factory _$$_OrderDriverModelCopyWith(
          _$_OrderDriverModel value, $Res Function(_$_OrderDriverModel) then) =
      __$$_OrderDriverModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String email,
      String avatar,
      String phone,
      @JsonKey(name: "work_type") String workType,
      @JsonKey(name: "avg_rate") int avgRate});
}

/// @nodoc
class __$$_OrderDriverModelCopyWithImpl<$Res>
    extends _$OrderDriverModelCopyWithImpl<$Res, _$_OrderDriverModel>
    implements _$$_OrderDriverModelCopyWith<$Res> {
  __$$_OrderDriverModelCopyWithImpl(
      _$_OrderDriverModel _value, $Res Function(_$_OrderDriverModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? avatar = null,
    Object? phone = null,
    Object? workType = null,
    Object? avgRate = null,
  }) {
    return _then(_$_OrderDriverModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      workType: null == workType
          ? _value.workType
          : workType // ignore: cast_nullable_to_non_nullable
              as String,
      avgRate: null == avgRate
          ? _value.avgRate
          : avgRate // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_OrderDriverModel extends _OrderDriverModel {
  _$_OrderDriverModel(
      {required this.id,
      required this.name,
      required this.email,
      required this.avatar,
      required this.phone,
      @JsonKey(name: "work_type") required this.workType,
      @JsonKey(name: "avg_rate") required this.avgRate})
      : super._();

  factory _$_OrderDriverModel.fromJson(Map<String, dynamic> json) =>
      _$$_OrderDriverModelFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String email;
  @override
  final String avatar;
  @override
  final String phone;
  @override
  @JsonKey(name: "work_type")
  final String workType;
  @override
  @JsonKey(name: "avg_rate")
  final int avgRate;

  @override
  String toString() {
    return 'OrderDriverModel(id: $id, name: $name, email: $email, avatar: $avatar, phone: $phone, workType: $workType, avgRate: $avgRate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderDriverModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.workType, workType) ||
                other.workType == workType) &&
            (identical(other.avgRate, avgRate) || other.avgRate == avgRate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, email, avatar, phone, workType, avgRate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderDriverModelCopyWith<_$_OrderDriverModel> get copyWith =>
      __$$_OrderDriverModelCopyWithImpl<_$_OrderDriverModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderDriverModelToJson(
      this,
    );
  }
}

abstract class _OrderDriverModel extends OrderDriverModel {
  factory _OrderDriverModel(
          {required final int id,
          required final String name,
          required final String email,
          required final String avatar,
          required final String phone,
          @JsonKey(name: "work_type") required final String workType,
          @JsonKey(name: "avg_rate") required final int avgRate}) =
      _$_OrderDriverModel;
  _OrderDriverModel._() : super._();

  factory _OrderDriverModel.fromJson(Map<String, dynamic> json) =
      _$_OrderDriverModel.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get email;
  @override
  String get avatar;
  @override
  String get phone;
  @override
  @JsonKey(name: "work_type")
  String get workType;
  @override
  @JsonKey(name: "avg_rate")
  int get avgRate;
  @override
  @JsonKey(ignore: true)
  _$$_OrderDriverModelCopyWith<_$_OrderDriverModel> get copyWith =>
      throw _privateConstructorUsedError;
}
