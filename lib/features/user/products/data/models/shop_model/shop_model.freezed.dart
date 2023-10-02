// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shop_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShopModel _$ShopModelFromJson(Map<String, dynamic> json) {
  return _ShopModel.fromJson(json);
}

/// @nodoc
mixin _$ShopModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String get logo => throw _privateConstructorUsedError;
  @JsonKey(name: 'package_invalid_at')
  String get packageInvalidAt => throw _privateConstructorUsedError;
  int get products => throw _privateConstructorUsedError;
  int get orders => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get facebook => throw _privateConstructorUsedError;
  String? get google => throw _privateConstructorUsedError;
  String? get twitter => throw _privateConstructorUsedError;
  String? get instagram => throw _privateConstructorUsedError;
  String? get youtube => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShopModelCopyWith<ShopModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopModelCopyWith<$Res> {
  factory $ShopModelCopyWith(ShopModel value, $Res Function(ShopModel) then) =
      _$ShopModelCopyWithImpl<$Res, ShopModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'user_id') int userId,
      String name,
      String? title,
      String? description,
      String logo,
      @JsonKey(name: 'package_invalid_at') String packageInvalidAt,
      int products,
      int orders,
      String? address,
      String? email,
      String? phone,
      String? facebook,
      String? google,
      String? twitter,
      String? instagram,
      String? youtube,
      double rating});
}

/// @nodoc
class _$ShopModelCopyWithImpl<$Res, $Val extends ShopModel>
    implements $ShopModelCopyWith<$Res> {
  _$ShopModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? name = null,
    Object? title = freezed,
    Object? description = freezed,
    Object? logo = null,
    Object? packageInvalidAt = null,
    Object? products = null,
    Object? orders = null,
    Object? address = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? facebook = freezed,
    Object? google = freezed,
    Object? twitter = freezed,
    Object? instagram = freezed,
    Object? youtube = freezed,
    Object? rating = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      packageInvalidAt: null == packageInvalidAt
          ? _value.packageInvalidAt
          : packageInvalidAt // ignore: cast_nullable_to_non_nullable
              as String,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as int,
      orders: null == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as int,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      facebook: freezed == facebook
          ? _value.facebook
          : facebook // ignore: cast_nullable_to_non_nullable
              as String?,
      google: freezed == google
          ? _value.google
          : google // ignore: cast_nullable_to_non_nullable
              as String?,
      twitter: freezed == twitter
          ? _value.twitter
          : twitter // ignore: cast_nullable_to_non_nullable
              as String?,
      instagram: freezed == instagram
          ? _value.instagram
          : instagram // ignore: cast_nullable_to_non_nullable
              as String?,
      youtube: freezed == youtube
          ? _value.youtube
          : youtube // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShopModelCopyWith<$Res> implements $ShopModelCopyWith<$Res> {
  factory _$$_ShopModelCopyWith(
          _$_ShopModel value, $Res Function(_$_ShopModel) then) =
      __$$_ShopModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'user_id') int userId,
      String name,
      String? title,
      String? description,
      String logo,
      @JsonKey(name: 'package_invalid_at') String packageInvalidAt,
      int products,
      int orders,
      String? address,
      String? email,
      String? phone,
      String? facebook,
      String? google,
      String? twitter,
      String? instagram,
      String? youtube,
      double rating});
}

/// @nodoc
class __$$_ShopModelCopyWithImpl<$Res>
    extends _$ShopModelCopyWithImpl<$Res, _$_ShopModel>
    implements _$$_ShopModelCopyWith<$Res> {
  __$$_ShopModelCopyWithImpl(
      _$_ShopModel _value, $Res Function(_$_ShopModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? name = null,
    Object? title = freezed,
    Object? description = freezed,
    Object? logo = null,
    Object? packageInvalidAt = null,
    Object? products = null,
    Object? orders = null,
    Object? address = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? facebook = freezed,
    Object? google = freezed,
    Object? twitter = freezed,
    Object? instagram = freezed,
    Object? youtube = freezed,
    Object? rating = null,
  }) {
    return _then(_$_ShopModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      packageInvalidAt: null == packageInvalidAt
          ? _value.packageInvalidAt
          : packageInvalidAt // ignore: cast_nullable_to_non_nullable
              as String,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as int,
      orders: null == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as int,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      facebook: freezed == facebook
          ? _value.facebook
          : facebook // ignore: cast_nullable_to_non_nullable
              as String?,
      google: freezed == google
          ? _value.google
          : google // ignore: cast_nullable_to_non_nullable
              as String?,
      twitter: freezed == twitter
          ? _value.twitter
          : twitter // ignore: cast_nullable_to_non_nullable
              as String?,
      instagram: freezed == instagram
          ? _value.instagram
          : instagram // ignore: cast_nullable_to_non_nullable
              as String?,
      youtube: freezed == youtube
          ? _value.youtube
          : youtube // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ShopModel extends _ShopModel {
  const _$_ShopModel(
      {required this.id,
      @JsonKey(name: 'user_id') required this.userId,
      required this.name,
      this.title,
      this.description,
      required this.logo,
      @JsonKey(name: 'package_invalid_at') required this.packageInvalidAt,
      required this.products,
      required this.orders,
      this.address,
      required this.email,
      required this.phone,
      required this.facebook,
      required this.google,
      required this.twitter,
      required this.instagram,
      required this.youtube,
      required this.rating})
      : super._();

  factory _$_ShopModel.fromJson(Map<String, dynamic> json) =>
      _$$_ShopModelFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'user_id')
  final int userId;
  @override
  final String name;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final String logo;
  @override
  @JsonKey(name: 'package_invalid_at')
  final String packageInvalidAt;
  @override
  final int products;
  @override
  final int orders;
  @override
  final String? address;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  final String? facebook;
  @override
  final String? google;
  @override
  final String? twitter;
  @override
  final String? instagram;
  @override
  final String? youtube;
  @override
  final double rating;

  @override
  String toString() {
    return 'ShopModel(id: $id, userId: $userId, name: $name, title: $title, description: $description, logo: $logo, packageInvalidAt: $packageInvalidAt, products: $products, orders: $orders, address: $address, email: $email, phone: $phone, facebook: $facebook, google: $google, twitter: $twitter, instagram: $instagram, youtube: $youtube, rating: $rating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShopModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.packageInvalidAt, packageInvalidAt) ||
                other.packageInvalidAt == packageInvalidAt) &&
            (identical(other.products, products) ||
                other.products == products) &&
            (identical(other.orders, orders) || other.orders == orders) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.facebook, facebook) ||
                other.facebook == facebook) &&
            (identical(other.google, google) || other.google == google) &&
            (identical(other.twitter, twitter) || other.twitter == twitter) &&
            (identical(other.instagram, instagram) ||
                other.instagram == instagram) &&
            (identical(other.youtube, youtube) || other.youtube == youtube) &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      name,
      title,
      description,
      logo,
      packageInvalidAt,
      products,
      orders,
      address,
      email,
      phone,
      facebook,
      google,
      twitter,
      instagram,
      youtube,
      rating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShopModelCopyWith<_$_ShopModel> get copyWith =>
      __$$_ShopModelCopyWithImpl<_$_ShopModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShopModelToJson(
      this,
    );
  }
}

abstract class _ShopModel extends ShopModel {
  const factory _ShopModel(
      {required final int id,
      @JsonKey(name: 'user_id') required final int userId,
      required final String name,
      final String? title,
      final String? description,
      required final String logo,
      @JsonKey(name: 'package_invalid_at')
      required final String packageInvalidAt,
      required final int products,
      required final int orders,
      final String? address,
      required final String? email,
      required final String? phone,
      required final String? facebook,
      required final String? google,
      required final String? twitter,
      required final String? instagram,
      required final String? youtube,
      required final double rating}) = _$_ShopModel;
  const _ShopModel._() : super._();

  factory _ShopModel.fromJson(Map<String, dynamic> json) =
      _$_ShopModel.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'user_id')
  int get userId;
  @override
  String get name;
  @override
  String? get title;
  @override
  String? get description;
  @override
  String get logo;
  @override
  @JsonKey(name: 'package_invalid_at')
  String get packageInvalidAt;
  @override
  int get products;
  @override
  int get orders;
  @override
  String? get address;
  @override
  String? get email;
  @override
  String? get phone;
  @override
  String? get facebook;
  @override
  String? get google;
  @override
  String? get twitter;
  @override
  String? get instagram;
  @override
  String? get youtube;
  @override
  double get rating;
  @override
  @JsonKey(ignore: true)
  _$$_ShopModelCopyWith<_$_ShopModel> get copyWith =>
      throw _privateConstructorUsedError;
}
