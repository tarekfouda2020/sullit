// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "avatar")
  String? get avatar => throw _privateConstructorUsedError;
  @JsonKey(name: "avatar_original")
  String get avatarOriginal => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: "phone")
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "full_phone")
  String get fullPhone => throw _privateConstructorUsedError;
  @JsonKey(name: "country_code")
  String get countryCode => throw _privateConstructorUsedError;
  @JsonKey(name: "token")
  String get token => throw _privateConstructorUsedError;
  @JsonKey(name: "token_type")
  String get tokenType => throw _privateConstructorUsedError;
  @JsonKey(name: "phone_is_active")
  bool get isPhoneActive => throw _privateConstructorUsedError;
  @JsonKey(name: "email_is_active")
  bool get isEmailActive => throw _privateConstructorUsedError;
  @JsonKey(name: "has_valid_subscription")
  bool get hasValidSubscription => throw _privateConstructorUsedError;
  @JsonKey(name: "is_shareholder")
  bool get isShareHolder => throw _privateConstructorUsedError;
  @JsonKey(name: "address")
  AddressModel? get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "avatar") String? avatar,
      @JsonKey(name: "avatar_original") String avatarOriginal,
      @JsonKey(name: "email") String email,
      @JsonKey(name: "phone") String phone,
      @JsonKey(name: "full_phone") String fullPhone,
      @JsonKey(name: "country_code") String countryCode,
      @JsonKey(name: "token") String token,
      @JsonKey(name: "token_type") String tokenType,
      @JsonKey(name: "phone_is_active") bool isPhoneActive,
      @JsonKey(name: "email_is_active") bool isEmailActive,
      @JsonKey(name: "has_valid_subscription") bool hasValidSubscription,
      @JsonKey(name: "is_shareholder") bool isShareHolder,
      @JsonKey(name: "address") AddressModel? address});

  $AddressModelCopyWith<$Res>? get address;
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? avatar = freezed,
    Object? avatarOriginal = null,
    Object? email = null,
    Object? phone = null,
    Object? fullPhone = null,
    Object? countryCode = null,
    Object? token = null,
    Object? tokenType = null,
    Object? isPhoneActive = null,
    Object? isEmailActive = null,
    Object? hasValidSubscription = null,
    Object? isShareHolder = null,
    Object? address = freezed,
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
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarOriginal: null == avatarOriginal
          ? _value.avatarOriginal
          : avatarOriginal // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      fullPhone: null == fullPhone
          ? _value.fullPhone
          : fullPhone // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      tokenType: null == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String,
      isPhoneActive: null == isPhoneActive
          ? _value.isPhoneActive
          : isPhoneActive // ignore: cast_nullable_to_non_nullable
              as bool,
      isEmailActive: null == isEmailActive
          ? _value.isEmailActive
          : isEmailActive // ignore: cast_nullable_to_non_nullable
              as bool,
      hasValidSubscription: null == hasValidSubscription
          ? _value.hasValidSubscription
          : hasValidSubscription // ignore: cast_nullable_to_non_nullable
              as bool,
      isShareHolder: null == isShareHolder
          ? _value.isShareHolder
          : isShareHolder // ignore: cast_nullable_to_non_nullable
              as bool,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressModelCopyWith<$Res>? get address {
    if (_value.address == null) {
      return null;
    }

    return $AddressModelCopyWith<$Res>(_value.address!, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$$_UserModelCopyWith(
          _$_UserModel value, $Res Function(_$_UserModel) then) =
      __$$_UserModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "avatar") String? avatar,
      @JsonKey(name: "avatar_original") String avatarOriginal,
      @JsonKey(name: "email") String email,
      @JsonKey(name: "phone") String phone,
      @JsonKey(name: "full_phone") String fullPhone,
      @JsonKey(name: "country_code") String countryCode,
      @JsonKey(name: "token") String token,
      @JsonKey(name: "token_type") String tokenType,
      @JsonKey(name: "phone_is_active") bool isPhoneActive,
      @JsonKey(name: "email_is_active") bool isEmailActive,
      @JsonKey(name: "has_valid_subscription") bool hasValidSubscription,
      @JsonKey(name: "is_shareholder") bool isShareHolder,
      @JsonKey(name: "address") AddressModel? address});

  @override
  $AddressModelCopyWith<$Res>? get address;
}

/// @nodoc
class __$$_UserModelCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$_UserModel>
    implements _$$_UserModelCopyWith<$Res> {
  __$$_UserModelCopyWithImpl(
      _$_UserModel _value, $Res Function(_$_UserModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? avatar = freezed,
    Object? avatarOriginal = null,
    Object? email = null,
    Object? phone = null,
    Object? fullPhone = null,
    Object? countryCode = null,
    Object? token = null,
    Object? tokenType = null,
    Object? isPhoneActive = null,
    Object? isEmailActive = null,
    Object? hasValidSubscription = null,
    Object? isShareHolder = null,
    Object? address = freezed,
  }) {
    return _then(_$_UserModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarOriginal: null == avatarOriginal
          ? _value.avatarOriginal
          : avatarOriginal // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      fullPhone: null == fullPhone
          ? _value.fullPhone
          : fullPhone // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      tokenType: null == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String,
      isPhoneActive: null == isPhoneActive
          ? _value.isPhoneActive
          : isPhoneActive // ignore: cast_nullable_to_non_nullable
              as bool,
      isEmailActive: null == isEmailActive
          ? _value.isEmailActive
          : isEmailActive // ignore: cast_nullable_to_non_nullable
              as bool,
      hasValidSubscription: null == hasValidSubscription
          ? _value.hasValidSubscription
          : hasValidSubscription // ignore: cast_nullable_to_non_nullable
              as bool,
      isShareHolder: null == isShareHolder
          ? _value.isShareHolder
          : isShareHolder // ignore: cast_nullable_to_non_nullable
              as bool,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_UserModel extends _UserModel {
  const _$_UserModel(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "avatar") this.avatar,
      @JsonKey(name: "avatar_original") required this.avatarOriginal,
      @JsonKey(name: "email") required this.email,
      @JsonKey(name: "phone") required this.phone,
      @JsonKey(name: "full_phone") required this.fullPhone,
      @JsonKey(name: "country_code") required this.countryCode,
      @JsonKey(name: "token") required this.token,
      @JsonKey(name: "token_type") required this.tokenType,
      @JsonKey(name: "phone_is_active") required this.isPhoneActive,
      @JsonKey(name: "email_is_active") required this.isEmailActive,
      @JsonKey(name: "has_valid_subscription")
      required this.hasValidSubscription,
      @JsonKey(name: "is_shareholder") required this.isShareHolder,
      @JsonKey(name: "address") this.address})
      : super._();

  factory _$_UserModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserModelFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "avatar")
  final String? avatar;
  @override
  @JsonKey(name: "avatar_original")
  final String avatarOriginal;
  @override
  @JsonKey(name: "email")
  final String email;
  @override
  @JsonKey(name: "phone")
  final String phone;
  @override
  @JsonKey(name: "full_phone")
  final String fullPhone;
  @override
  @JsonKey(name: "country_code")
  final String countryCode;
  @override
  @JsonKey(name: "token")
  final String token;
  @override
  @JsonKey(name: "token_type")
  final String tokenType;
  @override
  @JsonKey(name: "phone_is_active")
  final bool isPhoneActive;
  @override
  @JsonKey(name: "email_is_active")
  final bool isEmailActive;
  @override
  @JsonKey(name: "has_valid_subscription")
  final bool hasValidSubscription;
  @override
  @JsonKey(name: "is_shareholder")
  final bool isShareHolder;
  @override
  @JsonKey(name: "address")
  final AddressModel? address;

  @override
  String toString() {
    return 'UserModel(id: $id, name: $name, avatar: $avatar, avatarOriginal: $avatarOriginal, email: $email, phone: $phone, fullPhone: $fullPhone, countryCode: $countryCode, token: $token, tokenType: $tokenType, isPhoneActive: $isPhoneActive, isEmailActive: $isEmailActive, hasValidSubscription: $hasValidSubscription, isShareHolder: $isShareHolder, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.avatarOriginal, avatarOriginal) ||
                other.avatarOriginal == avatarOriginal) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.fullPhone, fullPhone) ||
                other.fullPhone == fullPhone) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.tokenType, tokenType) ||
                other.tokenType == tokenType) &&
            (identical(other.isPhoneActive, isPhoneActive) ||
                other.isPhoneActive == isPhoneActive) &&
            (identical(other.isEmailActive, isEmailActive) ||
                other.isEmailActive == isEmailActive) &&
            (identical(other.hasValidSubscription, hasValidSubscription) ||
                other.hasValidSubscription == hasValidSubscription) &&
            (identical(other.isShareHolder, isShareHolder) ||
                other.isShareHolder == isShareHolder) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      avatar,
      avatarOriginal,
      email,
      phone,
      fullPhone,
      countryCode,
      token,
      tokenType,
      isPhoneActive,
      isEmailActive,
      hasValidSubscription,
      isShareHolder,
      address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserModelCopyWith<_$_UserModel> get copyWith =>
      __$$_UserModelCopyWithImpl<_$_UserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserModelToJson(
      this,
    );
  }
}

abstract class _UserModel extends UserModel {
  const factory _UserModel(
      {@JsonKey(name: "id") required final int id,
      @JsonKey(name: "name") required final String name,
      @JsonKey(name: "avatar") final String? avatar,
      @JsonKey(name: "avatar_original") required final String avatarOriginal,
      @JsonKey(name: "email") required final String email,
      @JsonKey(name: "phone") required final String phone,
      @JsonKey(name: "full_phone") required final String fullPhone,
      @JsonKey(name: "country_code") required final String countryCode,
      @JsonKey(name: "token") required final String token,
      @JsonKey(name: "token_type") required final String tokenType,
      @JsonKey(name: "phone_is_active") required final bool isPhoneActive,
      @JsonKey(name: "email_is_active") required final bool isEmailActive,
      @JsonKey(name: "has_valid_subscription")
      required final bool hasValidSubscription,
      @JsonKey(name: "is_shareholder") required final bool isShareHolder,
      @JsonKey(name: "address") final AddressModel? address}) = _$_UserModel;
  const _UserModel._() : super._();

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$_UserModel.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "avatar")
  String? get avatar;
  @override
  @JsonKey(name: "avatar_original")
  String get avatarOriginal;
  @override
  @JsonKey(name: "email")
  String get email;
  @override
  @JsonKey(name: "phone")
  String get phone;
  @override
  @JsonKey(name: "full_phone")
  String get fullPhone;
  @override
  @JsonKey(name: "country_code")
  String get countryCode;
  @override
  @JsonKey(name: "token")
  String get token;
  @override
  @JsonKey(name: "token_type")
  String get tokenType;
  @override
  @JsonKey(name: "phone_is_active")
  bool get isPhoneActive;
  @override
  @JsonKey(name: "email_is_active")
  bool get isEmailActive;
  @override
  @JsonKey(name: "has_valid_subscription")
  bool get hasValidSubscription;
  @override
  @JsonKey(name: "is_shareholder")
  bool get isShareHolder;
  @override
  @JsonKey(name: "address")
  AddressModel? get address;
  @override
  @JsonKey(ignore: true)
  _$$_UserModelCopyWith<_$_UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
