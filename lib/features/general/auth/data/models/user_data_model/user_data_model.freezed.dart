// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserDataModel _$UserDataModelFromJson(Map<String, dynamic> json) {
  return _UserDataModel.fromJson(json);
}

/// @nodoc
mixin _$UserDataModel {
  @JsonKey(name: "user")
  UserModel? get user => throw _privateConstructorUsedError;
  @JsonKey(name: "is_admin_discount")
  bool? get isAdminDiscount => throw _privateConstructorUsedError;
  @JsonKey(name: "msg_admin_discount")
  String? get msgAdminDiscount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDataModelCopyWith<UserDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataModelCopyWith<$Res> {
  factory $UserDataModelCopyWith(
          UserDataModel value, $Res Function(UserDataModel) then) =
      _$UserDataModelCopyWithImpl<$Res, UserDataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "user") UserModel? user,
      @JsonKey(name: "is_admin_discount") bool? isAdminDiscount,
      @JsonKey(name: "msg_admin_discount") String? msgAdminDiscount});

  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class _$UserDataModelCopyWithImpl<$Res, $Val extends UserDataModel>
    implements $UserDataModelCopyWith<$Res> {
  _$UserDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? isAdminDiscount = freezed,
    Object? msgAdminDiscount = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      isAdminDiscount: freezed == isAdminDiscount
          ? _value.isAdminDiscount
          : isAdminDiscount // ignore: cast_nullable_to_non_nullable
              as bool?,
      msgAdminDiscount: freezed == msgAdminDiscount
          ? _value.msgAdminDiscount
          : msgAdminDiscount // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserDataModelCopyWith<$Res>
    implements $UserDataModelCopyWith<$Res> {
  factory _$$_UserDataModelCopyWith(
          _$_UserDataModel value, $Res Function(_$_UserDataModel) then) =
      __$$_UserDataModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "user") UserModel? user,
      @JsonKey(name: "is_admin_discount") bool? isAdminDiscount,
      @JsonKey(name: "msg_admin_discount") String? msgAdminDiscount});

  @override
  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_UserDataModelCopyWithImpl<$Res>
    extends _$UserDataModelCopyWithImpl<$Res, _$_UserDataModel>
    implements _$$_UserDataModelCopyWith<$Res> {
  __$$_UserDataModelCopyWithImpl(
      _$_UserDataModel _value, $Res Function(_$_UserDataModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? isAdminDiscount = freezed,
    Object? msgAdminDiscount = freezed,
  }) {
    return _then(_$_UserDataModel(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      isAdminDiscount: freezed == isAdminDiscount
          ? _value.isAdminDiscount
          : isAdminDiscount // ignore: cast_nullable_to_non_nullable
              as bool?,
      msgAdminDiscount: freezed == msgAdminDiscount
          ? _value.msgAdminDiscount
          : msgAdminDiscount // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_UserDataModel extends _UserDataModel {
  const _$_UserDataModel(
      {@JsonKey(name: "user") this.user,
      @JsonKey(name: "is_admin_discount") this.isAdminDiscount,
      @JsonKey(name: "msg_admin_discount") this.msgAdminDiscount})
      : super._();

  factory _$_UserDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserDataModelFromJson(json);

  @override
  @JsonKey(name: "user")
  final UserModel? user;
  @override
  @JsonKey(name: "is_admin_discount")
  final bool? isAdminDiscount;
  @override
  @JsonKey(name: "msg_admin_discount")
  final String? msgAdminDiscount;

  @override
  String toString() {
    return 'UserDataModel(user: $user, isAdminDiscount: $isAdminDiscount, msgAdminDiscount: $msgAdminDiscount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserDataModel &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.isAdminDiscount, isAdminDiscount) ||
                other.isAdminDiscount == isAdminDiscount) &&
            (identical(other.msgAdminDiscount, msgAdminDiscount) ||
                other.msgAdminDiscount == msgAdminDiscount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, user, isAdminDiscount, msgAdminDiscount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserDataModelCopyWith<_$_UserDataModel> get copyWith =>
      __$$_UserDataModelCopyWithImpl<_$_UserDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDataModelToJson(
      this,
    );
  }
}

abstract class _UserDataModel extends UserDataModel {
  const factory _UserDataModel(
      {@JsonKey(name: "user") final UserModel? user,
      @JsonKey(name: "is_admin_discount") final bool? isAdminDiscount,
      @JsonKey(name: "msg_admin_discount")
      final String? msgAdminDiscount}) = _$_UserDataModel;
  const _UserDataModel._() : super._();

  factory _UserDataModel.fromJson(Map<String, dynamic> json) =
      _$_UserDataModel.fromJson;

  @override
  @JsonKey(name: "user")
  UserModel? get user;
  @override
  @JsonKey(name: "is_admin_discount")
  bool? get isAdminDiscount;
  @override
  @JsonKey(name: "msg_admin_discount")
  String? get msgAdminDiscount;
  @override
  @JsonKey(ignore: true)
  _$$_UserDataModelCopyWith<_$_UserDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
