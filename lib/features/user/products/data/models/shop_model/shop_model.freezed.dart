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
  @JsonKey(name: 'has_branches')
  bool? get hasBranches => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String get shopType => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<String>? get sliders => throw _privateConstructorUsedError;
  List<ShopCategoryModel>? get categories => throw _privateConstructorUsedError;
  @JsonKey(name: 'insurance_companies')
  List<InsuranceCompanyModel>? get insuranceCompanies =>
      throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String get logo => throw _privateConstructorUsedError;
  @JsonKey(name: 'package_invalid_at')
  String get packageInvalidAt => throw _privateConstructorUsedError;
  int? get products => throw _privateConstructorUsedError;
  int get orders => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get facebook => throw _privateConstructorUsedError;
  String? get google => throw _privateConstructorUsedError;
  String? get twitter => throw _privateConstructorUsedError;
  String? get instagram => throw _privateConstructorUsedError;
  String? get youtube => throw _privateConstructorUsedError;
  num get rating => throw _privateConstructorUsedError;
  bool get follow => throw _privateConstructorUsedError;
  ShopPickupModel? get pickup => throw _privateConstructorUsedError;

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
      @JsonKey(name: 'has_branches') bool? hasBranches,
      @JsonKey(name: 'type') String shopType,
      String name,
      List<String>? sliders,
      List<ShopCategoryModel>? categories,
      @JsonKey(name: 'insurance_companies')
      List<InsuranceCompanyModel>? insuranceCompanies,
      String? title,
      String? description,
      String logo,
      @JsonKey(name: 'package_invalid_at') String packageInvalidAt,
      int? products,
      int orders,
      String? address,
      String? email,
      String? phone,
      String? facebook,
      String? google,
      String? twitter,
      String? instagram,
      String? youtube,
      num rating,
      bool follow,
      ShopPickupModel? pickup});

  $ShopPickupModelCopyWith<$Res>? get pickup;
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
    Object? hasBranches = freezed,
    Object? shopType = null,
    Object? name = null,
    Object? sliders = freezed,
    Object? categories = freezed,
    Object? insuranceCompanies = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? logo = null,
    Object? packageInvalidAt = null,
    Object? products = freezed,
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
    Object? follow = null,
    Object? pickup = freezed,
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
      hasBranches: freezed == hasBranches
          ? _value.hasBranches
          : hasBranches // ignore: cast_nullable_to_non_nullable
              as bool?,
      shopType: null == shopType
          ? _value.shopType
          : shopType // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      sliders: freezed == sliders
          ? _value.sliders
          : sliders // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<ShopCategoryModel>?,
      insuranceCompanies: freezed == insuranceCompanies
          ? _value.insuranceCompanies
          : insuranceCompanies // ignore: cast_nullable_to_non_nullable
              as List<InsuranceCompanyModel>?,
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
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as int?,
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
              as num,
      follow: null == follow
          ? _value.follow
          : follow // ignore: cast_nullable_to_non_nullable
              as bool,
      pickup: freezed == pickup
          ? _value.pickup
          : pickup // ignore: cast_nullable_to_non_nullable
              as ShopPickupModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ShopPickupModelCopyWith<$Res>? get pickup {
    if (_value.pickup == null) {
      return null;
    }

    return $ShopPickupModelCopyWith<$Res>(_value.pickup!, (value) {
      return _then(_value.copyWith(pickup: value) as $Val);
    });
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
      @JsonKey(name: 'has_branches') bool? hasBranches,
      @JsonKey(name: 'type') String shopType,
      String name,
      List<String>? sliders,
      List<ShopCategoryModel>? categories,
      @JsonKey(name: 'insurance_companies')
      List<InsuranceCompanyModel>? insuranceCompanies,
      String? title,
      String? description,
      String logo,
      @JsonKey(name: 'package_invalid_at') String packageInvalidAt,
      int? products,
      int orders,
      String? address,
      String? email,
      String? phone,
      String? facebook,
      String? google,
      String? twitter,
      String? instagram,
      String? youtube,
      num rating,
      bool follow,
      ShopPickupModel? pickup});

  @override
  $ShopPickupModelCopyWith<$Res>? get pickup;
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
    Object? hasBranches = freezed,
    Object? shopType = null,
    Object? name = null,
    Object? sliders = freezed,
    Object? categories = freezed,
    Object? insuranceCompanies = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? logo = null,
    Object? packageInvalidAt = null,
    Object? products = freezed,
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
    Object? follow = null,
    Object? pickup = freezed,
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
      hasBranches: freezed == hasBranches
          ? _value.hasBranches
          : hasBranches // ignore: cast_nullable_to_non_nullable
              as bool?,
      shopType: null == shopType
          ? _value.shopType
          : shopType // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      sliders: freezed == sliders
          ? _value._sliders
          : sliders // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      categories: freezed == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<ShopCategoryModel>?,
      insuranceCompanies: freezed == insuranceCompanies
          ? _value._insuranceCompanies
          : insuranceCompanies // ignore: cast_nullable_to_non_nullable
              as List<InsuranceCompanyModel>?,
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
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as int?,
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
              as num,
      follow: null == follow
          ? _value.follow
          : follow // ignore: cast_nullable_to_non_nullable
              as bool,
      pickup: freezed == pickup
          ? _value.pickup
          : pickup // ignore: cast_nullable_to_non_nullable
              as ShopPickupModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ShopModel extends _ShopModel {
  const _$_ShopModel(
      {required this.id,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'has_branches') this.hasBranches,
      @JsonKey(name: 'type') required this.shopType,
      required this.name,
      final List<String>? sliders,
      final List<ShopCategoryModel>? categories,
      @JsonKey(name: 'insurance_companies')
      final List<InsuranceCompanyModel>? insuranceCompanies,
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
      required this.rating,
      required this.follow,
      this.pickup})
      : _sliders = sliders,
        _categories = categories,
        _insuranceCompanies = insuranceCompanies,
        super._();

  factory _$_ShopModel.fromJson(Map<String, dynamic> json) =>
      _$$_ShopModelFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'user_id')
  final int userId;
  @override
  @JsonKey(name: 'has_branches')
  final bool? hasBranches;
  @override
  @JsonKey(name: 'type')
  final String shopType;
  @override
  final String name;
  final List<String>? _sliders;
  @override
  List<String>? get sliders {
    final value = _sliders;
    if (value == null) return null;
    if (_sliders is EqualUnmodifiableListView) return _sliders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ShopCategoryModel>? _categories;
  @override
  List<ShopCategoryModel>? get categories {
    final value = _categories;
    if (value == null) return null;
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<InsuranceCompanyModel>? _insuranceCompanies;
  @override
  @JsonKey(name: 'insurance_companies')
  List<InsuranceCompanyModel>? get insuranceCompanies {
    final value = _insuranceCompanies;
    if (value == null) return null;
    if (_insuranceCompanies is EqualUnmodifiableListView)
      return _insuranceCompanies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

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
  final int? products;
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
  final num rating;
  @override
  final bool follow;
  @override
  final ShopPickupModel? pickup;

  @override
  String toString() {
    return 'ShopModel(id: $id, userId: $userId, hasBranches: $hasBranches, shopType: $shopType, name: $name, sliders: $sliders, categories: $categories, insuranceCompanies: $insuranceCompanies, title: $title, description: $description, logo: $logo, packageInvalidAt: $packageInvalidAt, products: $products, orders: $orders, address: $address, email: $email, phone: $phone, facebook: $facebook, google: $google, twitter: $twitter, instagram: $instagram, youtube: $youtube, rating: $rating, follow: $follow, pickup: $pickup)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShopModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.hasBranches, hasBranches) ||
                other.hasBranches == hasBranches) &&
            (identical(other.shopType, shopType) ||
                other.shopType == shopType) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._sliders, _sliders) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality()
                .equals(other._insuranceCompanies, _insuranceCompanies) &&
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
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.follow, follow) || other.follow == follow) &&
            (identical(other.pickup, pickup) || other.pickup == pickup));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        userId,
        hasBranches,
        shopType,
        name,
        const DeepCollectionEquality().hash(_sliders),
        const DeepCollectionEquality().hash(_categories),
        const DeepCollectionEquality().hash(_insuranceCompanies),
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
        rating,
        follow,
        pickup
      ]);

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
      @JsonKey(name: 'has_branches') final bool? hasBranches,
      @JsonKey(name: 'type') required final String shopType,
      required final String name,
      final List<String>? sliders,
      final List<ShopCategoryModel>? categories,
      @JsonKey(name: 'insurance_companies')
      final List<InsuranceCompanyModel>? insuranceCompanies,
      final String? title,
      final String? description,
      required final String logo,
      @JsonKey(name: 'package_invalid_at')
      required final String packageInvalidAt,
      required final int? products,
      required final int orders,
      final String? address,
      required final String? email,
      required final String? phone,
      required final String? facebook,
      required final String? google,
      required final String? twitter,
      required final String? instagram,
      required final String? youtube,
      required final num rating,
      required final bool follow,
      final ShopPickupModel? pickup}) = _$_ShopModel;
  const _ShopModel._() : super._();

  factory _ShopModel.fromJson(Map<String, dynamic> json) =
      _$_ShopModel.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'user_id')
  int get userId;
  @override
  @JsonKey(name: 'has_branches')
  bool? get hasBranches;
  @override
  @JsonKey(name: 'type')
  String get shopType;
  @override
  String get name;
  @override
  List<String>? get sliders;
  @override
  List<ShopCategoryModel>? get categories;
  @override
  @JsonKey(name: 'insurance_companies')
  List<InsuranceCompanyModel>? get insuranceCompanies;
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
  int? get products;
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
  num get rating;
  @override
  bool get follow;
  @override
  ShopPickupModel? get pickup;
  @override
  @JsonKey(ignore: true)
  _$$_ShopModelCopyWith<_$_ShopModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ShopPickupModel _$ShopPickupModelFromJson(Map<String, dynamic> json) {
  return _ShopPickupModel.fromJson(json);
}

/// @nodoc
mixin _$ShopPickupModel {
  int get id => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'postal_code')
  String get postalCode => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  double get lat => throw _privateConstructorUsedError;
  double get lang => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShopPickupModelCopyWith<ShopPickupModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopPickupModelCopyWith<$Res> {
  factory $ShopPickupModelCopyWith(
          ShopPickupModel value, $Res Function(ShopPickupModel) then) =
      _$ShopPickupModelCopyWithImpl<$Res, ShopPickupModel>;
  @useResult
  $Res call(
      {int id,
      String address,
      @JsonKey(name: 'postal_code') String postalCode,
      String phone,
      double lat,
      double lang});
}

/// @nodoc
class _$ShopPickupModelCopyWithImpl<$Res, $Val extends ShopPickupModel>
    implements $ShopPickupModelCopyWith<$Res> {
  _$ShopPickupModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? address = null,
    Object? postalCode = null,
    Object? phone = null,
    Object? lat = null,
    Object? lang = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      postalCode: null == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lang: null == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShopPickupModelCopyWith<$Res>
    implements $ShopPickupModelCopyWith<$Res> {
  factory _$$_ShopPickupModelCopyWith(
          _$_ShopPickupModel value, $Res Function(_$_ShopPickupModel) then) =
      __$$_ShopPickupModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String address,
      @JsonKey(name: 'postal_code') String postalCode,
      String phone,
      double lat,
      double lang});
}

/// @nodoc
class __$$_ShopPickupModelCopyWithImpl<$Res>
    extends _$ShopPickupModelCopyWithImpl<$Res, _$_ShopPickupModel>
    implements _$$_ShopPickupModelCopyWith<$Res> {
  __$$_ShopPickupModelCopyWithImpl(
      _$_ShopPickupModel _value, $Res Function(_$_ShopPickupModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? address = null,
    Object? postalCode = null,
    Object? phone = null,
    Object? lat = null,
    Object? lang = null,
  }) {
    return _then(_$_ShopPickupModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      postalCode: null == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lang: null == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ShopPickupModel extends _ShopPickupModel {
  const _$_ShopPickupModel(
      {required this.id,
      required this.address,
      @JsonKey(name: 'postal_code') required this.postalCode,
      required this.phone,
      required this.lat,
      required this.lang})
      : super._();

  factory _$_ShopPickupModel.fromJson(Map<String, dynamic> json) =>
      _$$_ShopPickupModelFromJson(json);

  @override
  final int id;
  @override
  final String address;
  @override
  @JsonKey(name: 'postal_code')
  final String postalCode;
  @override
  final String phone;
  @override
  final double lat;
  @override
  final double lang;

  @override
  String toString() {
    return 'ShopPickupModel(id: $id, address: $address, postalCode: $postalCode, phone: $phone, lat: $lat, lang: $lang)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShopPickupModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.postalCode, postalCode) ||
                other.postalCode == postalCode) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lang, lang) || other.lang == lang));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, address, postalCode, phone, lat, lang);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShopPickupModelCopyWith<_$_ShopPickupModel> get copyWith =>
      __$$_ShopPickupModelCopyWithImpl<_$_ShopPickupModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShopPickupModelToJson(
      this,
    );
  }
}

abstract class _ShopPickupModel extends ShopPickupModel {
  const factory _ShopPickupModel(
      {required final int id,
      required final String address,
      @JsonKey(name: 'postal_code') required final String postalCode,
      required final String phone,
      required final double lat,
      required final double lang}) = _$_ShopPickupModel;
  const _ShopPickupModel._() : super._();

  factory _ShopPickupModel.fromJson(Map<String, dynamic> json) =
      _$_ShopPickupModel.fromJson;

  @override
  int get id;
  @override
  String get address;
  @override
  @JsonKey(name: 'postal_code')
  String get postalCode;
  @override
  String get phone;
  @override
  double get lat;
  @override
  double get lang;
  @override
  @JsonKey(ignore: true)
  _$$_ShopPickupModelCopyWith<_$_ShopPickupModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ShopCategoryModel _$ShopCategoryModelFromJson(Map<String, dynamic> json) {
  return _ShopCategoryModel.fromJson(json);
}

/// @nodoc
mixin _$ShopCategoryModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "meta_title")
  String? get metaTitle => throw _privateConstructorUsedError;
  @JsonKey(name: "meta_description")
  String? get metaDescription => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShopCategoryModelCopyWith<ShopCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopCategoryModelCopyWith<$Res> {
  factory $ShopCategoryModelCopyWith(
          ShopCategoryModel value, $Res Function(ShopCategoryModel) then) =
      _$ShopCategoryModelCopyWithImpl<$Res, ShopCategoryModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      String icon,
      String slug,
      String? description,
      @JsonKey(name: "meta_title") String? metaTitle,
      @JsonKey(name: "meta_description") String? metaDescription});
}

/// @nodoc
class _$ShopCategoryModelCopyWithImpl<$Res, $Val extends ShopCategoryModel>
    implements $ShopCategoryModelCopyWith<$Res> {
  _$ShopCategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? icon = null,
    Object? slug = null,
    Object? description = freezed,
    Object? metaTitle = freezed,
    Object? metaDescription = freezed,
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
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      metaTitle: freezed == metaTitle
          ? _value.metaTitle
          : metaTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      metaDescription: freezed == metaDescription
          ? _value.metaDescription
          : metaDescription // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShopCategoryModelCopyWith<$Res>
    implements $ShopCategoryModelCopyWith<$Res> {
  factory _$$_ShopCategoryModelCopyWith(_$_ShopCategoryModel value,
          $Res Function(_$_ShopCategoryModel) then) =
      __$$_ShopCategoryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String icon,
      String slug,
      String? description,
      @JsonKey(name: "meta_title") String? metaTitle,
      @JsonKey(name: "meta_description") String? metaDescription});
}

/// @nodoc
class __$$_ShopCategoryModelCopyWithImpl<$Res>
    extends _$ShopCategoryModelCopyWithImpl<$Res, _$_ShopCategoryModel>
    implements _$$_ShopCategoryModelCopyWith<$Res> {
  __$$_ShopCategoryModelCopyWithImpl(
      _$_ShopCategoryModel _value, $Res Function(_$_ShopCategoryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? icon = null,
    Object? slug = null,
    Object? description = freezed,
    Object? metaTitle = freezed,
    Object? metaDescription = freezed,
  }) {
    return _then(_$_ShopCategoryModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      metaTitle: freezed == metaTitle
          ? _value.metaTitle
          : metaTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      metaDescription: freezed == metaDescription
          ? _value.metaDescription
          : metaDescription // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ShopCategoryModel extends _ShopCategoryModel {
  const _$_ShopCategoryModel(
      {required this.id,
      required this.name,
      required this.icon,
      required this.slug,
      this.description,
      @JsonKey(name: "meta_title") this.metaTitle,
      @JsonKey(name: "meta_description") this.metaDescription})
      : super._();

  factory _$_ShopCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$$_ShopCategoryModelFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String icon;
  @override
  final String slug;
  @override
  final String? description;
  @override
  @JsonKey(name: "meta_title")
  final String? metaTitle;
  @override
  @JsonKey(name: "meta_description")
  final String? metaDescription;

  @override
  String toString() {
    return 'ShopCategoryModel(id: $id, name: $name, icon: $icon, slug: $slug, description: $description, metaTitle: $metaTitle, metaDescription: $metaDescription)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShopCategoryModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.metaTitle, metaTitle) ||
                other.metaTitle == metaTitle) &&
            (identical(other.metaDescription, metaDescription) ||
                other.metaDescription == metaDescription));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, icon, slug,
      description, metaTitle, metaDescription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShopCategoryModelCopyWith<_$_ShopCategoryModel> get copyWith =>
      __$$_ShopCategoryModelCopyWithImpl<_$_ShopCategoryModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShopCategoryModelToJson(
      this,
    );
  }
}

abstract class _ShopCategoryModel extends ShopCategoryModel {
  const factory _ShopCategoryModel(
          {required final int id,
          required final String name,
          required final String icon,
          required final String slug,
          final String? description,
          @JsonKey(name: "meta_title") final String? metaTitle,
          @JsonKey(name: "meta_description") final String? metaDescription}) =
      _$_ShopCategoryModel;
  const _ShopCategoryModel._() : super._();

  factory _ShopCategoryModel.fromJson(Map<String, dynamic> json) =
      _$_ShopCategoryModel.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get icon;
  @override
  String get slug;
  @override
  String? get description;
  @override
  @JsonKey(name: "meta_title")
  String? get metaTitle;
  @override
  @JsonKey(name: "meta_description")
  String? get metaDescription;
  @override
  @JsonKey(ignore: true)
  _$$_ShopCategoryModelCopyWith<_$_ShopCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}
