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
  @JsonKey(name: 'supports_in_store_shopping')
  bool? get supportsInStoreShopping => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String get shopType => throw _privateConstructorUsedError;
  @JsonKey(name: 'type_label')
  String get shopTypeLabel => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_open')
  bool? get isOpen => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<String>? get sliders => throw _privateConstructorUsedError;
  @JsonKey(name: 'insurance_companies')
  List<InsuranceCompanyModel>? get insuranceCompanies =>
      throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String get logo => throw _privateConstructorUsedError;
  @JsonKey(name: 'package_invalid_at')
  String get packageInvalidAt => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get facebook => throw _privateConstructorUsedError;
  String? get google => throw _privateConstructorUsedError;
  String? get twitter => throw _privateConstructorUsedError;
  String? get instagram => throw _privateConstructorUsedError;
  String? get youtube => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  bool get follow => throw _privateConstructorUsedError;
  ShopPickupModel? get pickup => throw _privateConstructorUsedError;
  @JsonKey(name: 'working_hours')
  List<WorkingHoursModel>? get workingHours =>
      throw _privateConstructorUsedError;

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
      @JsonKey(name: 'supports_in_store_shopping')
      bool? supportsInStoreShopping,
      @JsonKey(name: 'type') String shopType,
      @JsonKey(name: 'type_label') String shopTypeLabel,
      @JsonKey(name: 'is_open') bool? isOpen,
      String name,
      List<String>? sliders,
      @JsonKey(name: 'insurance_companies')
      List<InsuranceCompanyModel>? insuranceCompanies,
      String? title,
      String? description,
      String logo,
      @JsonKey(name: 'package_invalid_at') String packageInvalidAt,
      String? address,
      String? email,
      String? phone,
      String? facebook,
      String? google,
      String? twitter,
      String? instagram,
      String? youtube,
      double rating,
      bool follow,
      ShopPickupModel? pickup,
      @JsonKey(name: 'working_hours') List<WorkingHoursModel>? workingHours});

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
    Object? supportsInStoreShopping = freezed,
    Object? shopType = null,
    Object? shopTypeLabel = null,
    Object? isOpen = freezed,
    Object? name = null,
    Object? sliders = freezed,
    Object? insuranceCompanies = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? logo = null,
    Object? packageInvalidAt = null,
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
    Object? workingHours = freezed,
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
      supportsInStoreShopping: freezed == supportsInStoreShopping
          ? _value.supportsInStoreShopping
          : supportsInStoreShopping // ignore: cast_nullable_to_non_nullable
              as bool?,
      shopType: null == shopType
          ? _value.shopType
          : shopType // ignore: cast_nullable_to_non_nullable
              as String,
      shopTypeLabel: null == shopTypeLabel
          ? _value.shopTypeLabel
          : shopTypeLabel // ignore: cast_nullable_to_non_nullable
              as String,
      isOpen: freezed == isOpen
          ? _value.isOpen
          : isOpen // ignore: cast_nullable_to_non_nullable
              as bool?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      sliders: freezed == sliders
          ? _value.sliders
          : sliders // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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
      follow: null == follow
          ? _value.follow
          : follow // ignore: cast_nullable_to_non_nullable
              as bool,
      pickup: freezed == pickup
          ? _value.pickup
          : pickup // ignore: cast_nullable_to_non_nullable
              as ShopPickupModel?,
      workingHours: freezed == workingHours
          ? _value.workingHours
          : workingHours // ignore: cast_nullable_to_non_nullable
              as List<WorkingHoursModel>?,
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
      @JsonKey(name: 'supports_in_store_shopping')
      bool? supportsInStoreShopping,
      @JsonKey(name: 'type') String shopType,
      @JsonKey(name: 'type_label') String shopTypeLabel,
      @JsonKey(name: 'is_open') bool? isOpen,
      String name,
      List<String>? sliders,
      @JsonKey(name: 'insurance_companies')
      List<InsuranceCompanyModel>? insuranceCompanies,
      String? title,
      String? description,
      String logo,
      @JsonKey(name: 'package_invalid_at') String packageInvalidAt,
      String? address,
      String? email,
      String? phone,
      String? facebook,
      String? google,
      String? twitter,
      String? instagram,
      String? youtube,
      double rating,
      bool follow,
      ShopPickupModel? pickup,
      @JsonKey(name: 'working_hours') List<WorkingHoursModel>? workingHours});

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
    Object? supportsInStoreShopping = freezed,
    Object? shopType = null,
    Object? shopTypeLabel = null,
    Object? isOpen = freezed,
    Object? name = null,
    Object? sliders = freezed,
    Object? insuranceCompanies = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? logo = null,
    Object? packageInvalidAt = null,
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
    Object? workingHours = freezed,
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
      supportsInStoreShopping: freezed == supportsInStoreShopping
          ? _value.supportsInStoreShopping
          : supportsInStoreShopping // ignore: cast_nullable_to_non_nullable
              as bool?,
      shopType: null == shopType
          ? _value.shopType
          : shopType // ignore: cast_nullable_to_non_nullable
              as String,
      shopTypeLabel: null == shopTypeLabel
          ? _value.shopTypeLabel
          : shopTypeLabel // ignore: cast_nullable_to_non_nullable
              as String,
      isOpen: freezed == isOpen
          ? _value.isOpen
          : isOpen // ignore: cast_nullable_to_non_nullable
              as bool?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      sliders: freezed == sliders
          ? _value._sliders
          : sliders // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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
      follow: null == follow
          ? _value.follow
          : follow // ignore: cast_nullable_to_non_nullable
              as bool,
      pickup: freezed == pickup
          ? _value.pickup
          : pickup // ignore: cast_nullable_to_non_nullable
              as ShopPickupModel?,
      workingHours: freezed == workingHours
          ? _value._workingHours
          : workingHours // ignore: cast_nullable_to_non_nullable
              as List<WorkingHoursModel>?,
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
      @JsonKey(name: 'supports_in_store_shopping') this.supportsInStoreShopping,
      @JsonKey(name: 'type') required this.shopType,
      @JsonKey(name: 'type_label') required this.shopTypeLabel,
      @JsonKey(name: 'is_open') this.isOpen,
      required this.name,
      final List<String>? sliders,
      @JsonKey(name: 'insurance_companies')
      final List<InsuranceCompanyModel>? insuranceCompanies,
      this.title,
      this.description,
      required this.logo,
      @JsonKey(name: 'package_invalid_at') required this.packageInvalidAt,
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
      this.pickup,
      @JsonKey(name: 'working_hours')
      final List<WorkingHoursModel>? workingHours})
      : _sliders = sliders,
        _insuranceCompanies = insuranceCompanies,
        _workingHours = workingHours,
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
  @JsonKey(name: 'supports_in_store_shopping')
  final bool? supportsInStoreShopping;
  @override
  @JsonKey(name: 'type')
  final String shopType;
  @override
  @JsonKey(name: 'type_label')
  final String shopTypeLabel;
  @override
  @JsonKey(name: 'is_open')
  final bool? isOpen;
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
  final bool follow;
  @override
  final ShopPickupModel? pickup;
  final List<WorkingHoursModel>? _workingHours;
  @override
  @JsonKey(name: 'working_hours')
  List<WorkingHoursModel>? get workingHours {
    final value = _workingHours;
    if (value == null) return null;
    if (_workingHours is EqualUnmodifiableListView) return _workingHours;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ShopModel(id: $id, userId: $userId, hasBranches: $hasBranches, supportsInStoreShopping: $supportsInStoreShopping, shopType: $shopType, shopTypeLabel: $shopTypeLabel, isOpen: $isOpen, name: $name, sliders: $sliders, insuranceCompanies: $insuranceCompanies, title: $title, description: $description, logo: $logo, packageInvalidAt: $packageInvalidAt, address: $address, email: $email, phone: $phone, facebook: $facebook, google: $google, twitter: $twitter, instagram: $instagram, youtube: $youtube, rating: $rating, follow: $follow, pickup: $pickup, workingHours: $workingHours)';
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
            (identical(
                    other.supportsInStoreShopping, supportsInStoreShopping) ||
                other.supportsInStoreShopping == supportsInStoreShopping) &&
            (identical(other.shopType, shopType) ||
                other.shopType == shopType) &&
            (identical(other.shopTypeLabel, shopTypeLabel) ||
                other.shopTypeLabel == shopTypeLabel) &&
            (identical(other.isOpen, isOpen) || other.isOpen == isOpen) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._sliders, _sliders) &&
            const DeepCollectionEquality()
                .equals(other._insuranceCompanies, _insuranceCompanies) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.packageInvalidAt, packageInvalidAt) ||
                other.packageInvalidAt == packageInvalidAt) &&
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
            (identical(other.pickup, pickup) || other.pickup == pickup) &&
            const DeepCollectionEquality()
                .equals(other._workingHours, _workingHours));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        userId,
        hasBranches,
        supportsInStoreShopping,
        shopType,
        shopTypeLabel,
        isOpen,
        name,
        const DeepCollectionEquality().hash(_sliders),
        const DeepCollectionEquality().hash(_insuranceCompanies),
        title,
        description,
        logo,
        packageInvalidAt,
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
        pickup,
        const DeepCollectionEquality().hash(_workingHours)
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
      @JsonKey(name: 'supports_in_store_shopping')
      final bool? supportsInStoreShopping,
      @JsonKey(name: 'type') required final String shopType,
      @JsonKey(name: 'type_label') required final String shopTypeLabel,
      @JsonKey(name: 'is_open') final bool? isOpen,
      required final String name,
      final List<String>? sliders,
      @JsonKey(name: 'insurance_companies')
      final List<InsuranceCompanyModel>? insuranceCompanies,
      final String? title,
      final String? description,
      required final String logo,
      @JsonKey(name: 'package_invalid_at')
      required final String packageInvalidAt,
      final String? address,
      required final String? email,
      required final String? phone,
      required final String? facebook,
      required final String? google,
      required final String? twitter,
      required final String? instagram,
      required final String? youtube,
      required final double rating,
      required final bool follow,
      final ShopPickupModel? pickup,
      @JsonKey(name: 'working_hours')
      final List<WorkingHoursModel>? workingHours}) = _$_ShopModel;
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
  @JsonKey(name: 'supports_in_store_shopping')
  bool? get supportsInStoreShopping;
  @override
  @JsonKey(name: 'type')
  String get shopType;
  @override
  @JsonKey(name: 'type_label')
  String get shopTypeLabel;
  @override
  @JsonKey(name: 'is_open')
  bool? get isOpen;
  @override
  String get name;
  @override
  List<String>? get sliders;
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
  bool get follow;
  @override
  ShopPickupModel? get pickup;
  @override
  @JsonKey(name: 'working_hours')
  List<WorkingHoursModel>? get workingHours;
  @override
  @JsonKey(ignore: true)
  _$$_ShopModelCopyWith<_$_ShopModel> get copyWith =>
      throw _privateConstructorUsedError;
}

WorkingHoursModel _$WorkingHoursModelFromJson(Map<String, dynamic> json) {
  return _WorkingHoursModel.fromJson(json);
}

/// @nodoc
mixin _$WorkingHoursModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'day_of_week')
  int get dayOfWeek => throw _privateConstructorUsedError;
  @JsonKey(name: 'day_label')
  String get dayLabel => throw _privateConstructorUsedError;
  @JsonKey(name: 'open_time')
  String get openTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'close_time')
  String get closeTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_closed')
  bool get isClosed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkingHoursModelCopyWith<WorkingHoursModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkingHoursModelCopyWith<$Res> {
  factory $WorkingHoursModelCopyWith(
          WorkingHoursModel value, $Res Function(WorkingHoursModel) then) =
      _$WorkingHoursModelCopyWithImpl<$Res, WorkingHoursModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'day_of_week') int dayOfWeek,
      @JsonKey(name: 'day_label') String dayLabel,
      @JsonKey(name: 'open_time') String openTime,
      @JsonKey(name: 'close_time') String closeTime,
      @JsonKey(name: 'is_closed') bool isClosed});
}

/// @nodoc
class _$WorkingHoursModelCopyWithImpl<$Res, $Val extends WorkingHoursModel>
    implements $WorkingHoursModelCopyWith<$Res> {
  _$WorkingHoursModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? dayOfWeek = null,
    Object? dayLabel = null,
    Object? openTime = null,
    Object? closeTime = null,
    Object? isClosed = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      dayOfWeek: null == dayOfWeek
          ? _value.dayOfWeek
          : dayOfWeek // ignore: cast_nullable_to_non_nullable
              as int,
      dayLabel: null == dayLabel
          ? _value.dayLabel
          : dayLabel // ignore: cast_nullable_to_non_nullable
              as String,
      openTime: null == openTime
          ? _value.openTime
          : openTime // ignore: cast_nullable_to_non_nullable
              as String,
      closeTime: null == closeTime
          ? _value.closeTime
          : closeTime // ignore: cast_nullable_to_non_nullable
              as String,
      isClosed: null == isClosed
          ? _value.isClosed
          : isClosed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WorkingHoursModelCopyWith<$Res>
    implements $WorkingHoursModelCopyWith<$Res> {
  factory _$$_WorkingHoursModelCopyWith(_$_WorkingHoursModel value,
          $Res Function(_$_WorkingHoursModel) then) =
      __$$_WorkingHoursModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'day_of_week') int dayOfWeek,
      @JsonKey(name: 'day_label') String dayLabel,
      @JsonKey(name: 'open_time') String openTime,
      @JsonKey(name: 'close_time') String closeTime,
      @JsonKey(name: 'is_closed') bool isClosed});
}

/// @nodoc
class __$$_WorkingHoursModelCopyWithImpl<$Res>
    extends _$WorkingHoursModelCopyWithImpl<$Res, _$_WorkingHoursModel>
    implements _$$_WorkingHoursModelCopyWith<$Res> {
  __$$_WorkingHoursModelCopyWithImpl(
      _$_WorkingHoursModel _value, $Res Function(_$_WorkingHoursModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? dayOfWeek = null,
    Object? dayLabel = null,
    Object? openTime = null,
    Object? closeTime = null,
    Object? isClosed = null,
  }) {
    return _then(_$_WorkingHoursModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      dayOfWeek: null == dayOfWeek
          ? _value.dayOfWeek
          : dayOfWeek // ignore: cast_nullable_to_non_nullable
              as int,
      dayLabel: null == dayLabel
          ? _value.dayLabel
          : dayLabel // ignore: cast_nullable_to_non_nullable
              as String,
      openTime: null == openTime
          ? _value.openTime
          : openTime // ignore: cast_nullable_to_non_nullable
              as String,
      closeTime: null == closeTime
          ? _value.closeTime
          : closeTime // ignore: cast_nullable_to_non_nullable
              as String,
      isClosed: null == isClosed
          ? _value.isClosed
          : isClosed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_WorkingHoursModel extends _WorkingHoursModel {
  const _$_WorkingHoursModel(
      {required this.id,
      @JsonKey(name: 'day_of_week') required this.dayOfWeek,
      @JsonKey(name: 'day_label') required this.dayLabel,
      @JsonKey(name: 'open_time') required this.openTime,
      @JsonKey(name: 'close_time') required this.closeTime,
      @JsonKey(name: 'is_closed') required this.isClosed})
      : super._();

  factory _$_WorkingHoursModel.fromJson(Map<String, dynamic> json) =>
      _$$_WorkingHoursModelFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'day_of_week')
  final int dayOfWeek;
  @override
  @JsonKey(name: 'day_label')
  final String dayLabel;
  @override
  @JsonKey(name: 'open_time')
  final String openTime;
  @override
  @JsonKey(name: 'close_time')
  final String closeTime;
  @override
  @JsonKey(name: 'is_closed')
  final bool isClosed;

  @override
  String toString() {
    return 'WorkingHoursModel(id: $id, dayOfWeek: $dayOfWeek, dayLabel: $dayLabel, openTime: $openTime, closeTime: $closeTime, isClosed: $isClosed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorkingHoursModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.dayOfWeek, dayOfWeek) ||
                other.dayOfWeek == dayOfWeek) &&
            (identical(other.dayLabel, dayLabel) ||
                other.dayLabel == dayLabel) &&
            (identical(other.openTime, openTime) ||
                other.openTime == openTime) &&
            (identical(other.closeTime, closeTime) ||
                other.closeTime == closeTime) &&
            (identical(other.isClosed, isClosed) ||
                other.isClosed == isClosed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, dayOfWeek, dayLabel, openTime, closeTime, isClosed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WorkingHoursModelCopyWith<_$_WorkingHoursModel> get copyWith =>
      __$$_WorkingHoursModelCopyWithImpl<_$_WorkingHoursModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WorkingHoursModelToJson(
      this,
    );
  }
}

abstract class _WorkingHoursModel extends WorkingHoursModel {
  const factory _WorkingHoursModel(
          {required final int id,
          @JsonKey(name: 'day_of_week') required final int dayOfWeek,
          @JsonKey(name: 'day_label') required final String dayLabel,
          @JsonKey(name: 'open_time') required final String openTime,
          @JsonKey(name: 'close_time') required final String closeTime,
          @JsonKey(name: 'is_closed') required final bool isClosed}) =
      _$_WorkingHoursModel;
  const _WorkingHoursModel._() : super._();

  factory _WorkingHoursModel.fromJson(Map<String, dynamic> json) =
      _$_WorkingHoursModel.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'day_of_week')
  int get dayOfWeek;
  @override
  @JsonKey(name: 'day_label')
  String get dayLabel;
  @override
  @JsonKey(name: 'open_time')
  String get openTime;
  @override
  @JsonKey(name: 'close_time')
  String get closeTime;
  @override
  @JsonKey(name: 'is_closed')
  bool get isClosed;
  @override
  @JsonKey(ignore: true)
  _$$_WorkingHoursModelCopyWith<_$_WorkingHoursModel> get copyWith =>
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
