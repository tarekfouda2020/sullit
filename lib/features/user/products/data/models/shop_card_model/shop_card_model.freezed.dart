// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shop_card_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShopCardModel _$ShopCardModelFromJson(Map<String, dynamic> json) {
  return _ShopCardModel.fromJson(json);
}

/// @nodoc
mixin _$ShopCardModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_branches')
  bool get hasBranches => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'type_label')
  String get typeLabel => throw _privateConstructorUsedError;
  String get logo => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  List<String> get sliders => throw _privateConstructorUsedError;
  bool get follow => throw _privateConstructorUsedError;
  @JsonKey(name: 'categories_names')
  String? get categoriesNames => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShopCardModelCopyWith<ShopCardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopCardModelCopyWith<$Res> {
  factory $ShopCardModelCopyWith(
          ShopCardModel value, $Res Function(ShopCardModel) then) =
      _$ShopCardModelCopyWithImpl<$Res, ShopCardModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'has_branches') bool hasBranches,
      String name,
      String type,
      @JsonKey(name: 'type_label') String typeLabel,
      String logo,
      String email,
      String? address,
      String phone,
      double rating,
      List<String> sliders,
      bool follow,
      @JsonKey(name: 'categories_names') String? categoriesNames});
}

/// @nodoc
class _$ShopCardModelCopyWithImpl<$Res, $Val extends ShopCardModel>
    implements $ShopCardModelCopyWith<$Res> {
  _$ShopCardModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? hasBranches = null,
    Object? name = null,
    Object? type = null,
    Object? typeLabel = null,
    Object? logo = null,
    Object? email = null,
    Object? address = freezed,
    Object? phone = null,
    Object? rating = null,
    Object? sliders = null,
    Object? follow = null,
    Object? categoriesNames = freezed,
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
      hasBranches: null == hasBranches
          ? _value.hasBranches
          : hasBranches // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      typeLabel: null == typeLabel
          ? _value.typeLabel
          : typeLabel // ignore: cast_nullable_to_non_nullable
              as String,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      sliders: null == sliders
          ? _value.sliders
          : sliders // ignore: cast_nullable_to_non_nullable
              as List<String>,
      follow: null == follow
          ? _value.follow
          : follow // ignore: cast_nullable_to_non_nullable
              as bool,
      categoriesNames: freezed == categoriesNames
          ? _value.categoriesNames
          : categoriesNames // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShopCardModelCopyWith<$Res>
    implements $ShopCardModelCopyWith<$Res> {
  factory _$$_ShopCardModelCopyWith(
          _$_ShopCardModel value, $Res Function(_$_ShopCardModel) then) =
      __$$_ShopCardModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'has_branches') bool hasBranches,
      String name,
      String type,
      @JsonKey(name: 'type_label') String typeLabel,
      String logo,
      String email,
      String? address,
      String phone,
      double rating,
      List<String> sliders,
      bool follow,
      @JsonKey(name: 'categories_names') String? categoriesNames});
}

/// @nodoc
class __$$_ShopCardModelCopyWithImpl<$Res>
    extends _$ShopCardModelCopyWithImpl<$Res, _$_ShopCardModel>
    implements _$$_ShopCardModelCopyWith<$Res> {
  __$$_ShopCardModelCopyWithImpl(
      _$_ShopCardModel _value, $Res Function(_$_ShopCardModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? hasBranches = null,
    Object? name = null,
    Object? type = null,
    Object? typeLabel = null,
    Object? logo = null,
    Object? email = null,
    Object? address = freezed,
    Object? phone = null,
    Object? rating = null,
    Object? sliders = null,
    Object? follow = null,
    Object? categoriesNames = freezed,
  }) {
    return _then(_$_ShopCardModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      hasBranches: null == hasBranches
          ? _value.hasBranches
          : hasBranches // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      typeLabel: null == typeLabel
          ? _value.typeLabel
          : typeLabel // ignore: cast_nullable_to_non_nullable
              as String,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      sliders: null == sliders
          ? _value._sliders
          : sliders // ignore: cast_nullable_to_non_nullable
              as List<String>,
      follow: null == follow
          ? _value.follow
          : follow // ignore: cast_nullable_to_non_nullable
              as bool,
      categoriesNames: freezed == categoriesNames
          ? _value.categoriesNames
          : categoriesNames // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ShopCardModel extends _ShopCardModel {
  const _$_ShopCardModel(
      {required this.id,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'has_branches') required this.hasBranches,
      required this.name,
      required this.type,
      @JsonKey(name: 'type_label') required this.typeLabel,
      required this.logo,
      required this.email,
      required this.address,
      required this.phone,
      required this.rating,
      required final List<String> sliders,
      required this.follow,
      @JsonKey(name: 'categories_names') this.categoriesNames})
      : _sliders = sliders,
        super._();

  factory _$_ShopCardModel.fromJson(Map<String, dynamic> json) =>
      _$$_ShopCardModelFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'user_id')
  final int userId;
  @override
  @JsonKey(name: 'has_branches')
  final bool hasBranches;
  @override
  final String name;
  @override
  final String type;
  @override
  @JsonKey(name: 'type_label')
  final String typeLabel;
  @override
  final String logo;
  @override
  final String email;
  @override
  final String? address;
  @override
  final String phone;
  @override
  final double rating;
  final List<String> _sliders;
  @override
  List<String> get sliders {
    if (_sliders is EqualUnmodifiableListView) return _sliders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sliders);
  }

  @override
  final bool follow;
  @override
  @JsonKey(name: 'categories_names')
  final String? categoriesNames;

  @override
  String toString() {
    return 'ShopCardModel(id: $id, userId: $userId, hasBranches: $hasBranches, name: $name, type: $type, typeLabel: $typeLabel, logo: $logo, email: $email, address: $address, phone: $phone, rating: $rating, sliders: $sliders, follow: $follow, categoriesNames: $categoriesNames)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShopCardModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.hasBranches, hasBranches) ||
                other.hasBranches == hasBranches) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.typeLabel, typeLabel) ||
                other.typeLabel == typeLabel) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            const DeepCollectionEquality().equals(other._sliders, _sliders) &&
            (identical(other.follow, follow) || other.follow == follow) &&
            (identical(other.categoriesNames, categoriesNames) ||
                other.categoriesNames == categoriesNames));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      hasBranches,
      name,
      type,
      typeLabel,
      logo,
      email,
      address,
      phone,
      rating,
      const DeepCollectionEquality().hash(_sliders),
      follow,
      categoriesNames);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShopCardModelCopyWith<_$_ShopCardModel> get copyWith =>
      __$$_ShopCardModelCopyWithImpl<_$_ShopCardModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShopCardModelToJson(
      this,
    );
  }
}

abstract class _ShopCardModel extends ShopCardModel {
  const factory _ShopCardModel(
          {required final int id,
          @JsonKey(name: 'user_id') required final int userId,
          @JsonKey(name: 'has_branches') required final bool hasBranches,
          required final String name,
          required final String type,
          @JsonKey(name: 'type_label') required final String typeLabel,
          required final String logo,
          required final String email,
          required final String? address,
          required final String phone,
          required final double rating,
          required final List<String> sliders,
          required final bool follow,
          @JsonKey(name: 'categories_names') final String? categoriesNames}) =
      _$_ShopCardModel;
  const _ShopCardModel._() : super._();

  factory _ShopCardModel.fromJson(Map<String, dynamic> json) =
      _$_ShopCardModel.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'user_id')
  int get userId;
  @override
  @JsonKey(name: 'has_branches')
  bool get hasBranches;
  @override
  String get name;
  @override
  String get type;
  @override
  @JsonKey(name: 'type_label')
  String get typeLabel;
  @override
  String get logo;
  @override
  String get email;
  @override
  String? get address;
  @override
  String get phone;
  @override
  double get rating;
  @override
  List<String> get sliders;
  @override
  bool get follow;
  @override
  @JsonKey(name: 'categories_names')
  String? get categoriesNames;
  @override
  @JsonKey(ignore: true)
  _$$_ShopCardModelCopyWith<_$_ShopCardModel> get copyWith =>
      throw _privateConstructorUsedError;
}
