// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoryModel _$CategoryModelFromJson(Map<String, dynamic> json) {
  return _CategoryModel.fromJson(json);
}

/// @nodoc
mixin _$CategoryModel {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'icon')
  String get icon => throw _privateConstructorUsedError;
  @JsonKey(name: 'slug')
  String get slug => throw _privateConstructorUsedError;
  @JsonKey(name: 'banner')
  String? get banner => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_level')
  int? get orderLevel => throw _privateConstructorUsedError;
  @JsonKey(name: 'digital')
  int? get digital => throw _privateConstructorUsedError;
  @JsonKey(name: 'chileds')
  List<CategoryModel>? get subCats => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryModelCopyWith<CategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryModelCopyWith<$Res> {
  factory $CategoryModelCopyWith(
          CategoryModel value, $Res Function(CategoryModel) then) =
      _$CategoryModelCopyWithImpl<$Res, CategoryModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'icon') String icon,
      @JsonKey(name: 'slug') String slug,
      @JsonKey(name: 'banner') String? banner,
      @JsonKey(name: 'order_level') int? orderLevel,
      @JsonKey(name: 'digital') int? digital,
      @JsonKey(name: 'chileds') List<CategoryModel>? subCats});
}

/// @nodoc
class _$CategoryModelCopyWithImpl<$Res, $Val extends CategoryModel>
    implements $CategoryModelCopyWith<$Res> {
  _$CategoryModelCopyWithImpl(this._value, this._then);

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
    Object? banner = freezed,
    Object? orderLevel = freezed,
    Object? digital = freezed,
    Object? subCats = freezed,
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
      banner: freezed == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as String?,
      orderLevel: freezed == orderLevel
          ? _value.orderLevel
          : orderLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      digital: freezed == digital
          ? _value.digital
          : digital // ignore: cast_nullable_to_non_nullable
              as int?,
      subCats: freezed == subCats
          ? _value.subCats
          : subCats // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoryModelCopyWith<$Res>
    implements $CategoryModelCopyWith<$Res> {
  factory _$$_CategoryModelCopyWith(
          _$_CategoryModel value, $Res Function(_$_CategoryModel) then) =
      __$$_CategoryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'icon') String icon,
      @JsonKey(name: 'slug') String slug,
      @JsonKey(name: 'banner') String? banner,
      @JsonKey(name: 'order_level') int? orderLevel,
      @JsonKey(name: 'digital') int? digital,
      @JsonKey(name: 'chileds') List<CategoryModel>? subCats});
}

/// @nodoc
class __$$_CategoryModelCopyWithImpl<$Res>
    extends _$CategoryModelCopyWithImpl<$Res, _$_CategoryModel>
    implements _$$_CategoryModelCopyWith<$Res> {
  __$$_CategoryModelCopyWithImpl(
      _$_CategoryModel _value, $Res Function(_$_CategoryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? icon = null,
    Object? slug = null,
    Object? banner = freezed,
    Object? orderLevel = freezed,
    Object? digital = freezed,
    Object? subCats = freezed,
  }) {
    return _then(_$_CategoryModel(
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
      banner: freezed == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as String?,
      orderLevel: freezed == orderLevel
          ? _value.orderLevel
          : orderLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      digital: freezed == digital
          ? _value.digital
          : digital // ignore: cast_nullable_to_non_nullable
              as int?,
      subCats: freezed == subCats
          ? _value._subCats
          : subCats // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_CategoryModel extends _CategoryModel {
  const _$_CategoryModel(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'icon') required this.icon,
      @JsonKey(name: 'slug') required this.slug,
      @JsonKey(name: 'banner') this.banner,
      @JsonKey(name: 'order_level') this.orderLevel,
      @JsonKey(name: 'digital') this.digital,
      @JsonKey(name: 'chileds') final List<CategoryModel>? subCats})
      : _subCats = subCats,
        super._();

  factory _$_CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'icon')
  final String icon;
  @override
  @JsonKey(name: 'slug')
  final String slug;
  @override
  @JsonKey(name: 'banner')
  final String? banner;
  @override
  @JsonKey(name: 'order_level')
  final int? orderLevel;
  @override
  @JsonKey(name: 'digital')
  final int? digital;
  final List<CategoryModel>? _subCats;
  @override
  @JsonKey(name: 'chileds')
  List<CategoryModel>? get subCats {
    final value = _subCats;
    if (value == null) return null;
    if (_subCats is EqualUnmodifiableListView) return _subCats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CategoryModel(id: $id, name: $name, icon: $icon, slug: $slug, banner: $banner, orderLevel: $orderLevel, digital: $digital, subCats: $subCats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.banner, banner) || other.banner == banner) &&
            (identical(other.orderLevel, orderLevel) ||
                other.orderLevel == orderLevel) &&
            (identical(other.digital, digital) || other.digital == digital) &&
            const DeepCollectionEquality().equals(other._subCats, _subCats));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, icon, slug, banner,
      orderLevel, digital, const DeepCollectionEquality().hash(_subCats));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryModelCopyWith<_$_CategoryModel> get copyWith =>
      __$$_CategoryModelCopyWithImpl<_$_CategoryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryModelToJson(
      this,
    );
  }
}

abstract class _CategoryModel extends CategoryModel {
  const factory _CategoryModel(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'icon') required final String icon,
          @JsonKey(name: 'slug') required final String slug,
          @JsonKey(name: 'banner') final String? banner,
          @JsonKey(name: 'order_level') final int? orderLevel,
          @JsonKey(name: 'digital') final int? digital,
          @JsonKey(name: 'chileds') final List<CategoryModel>? subCats}) =
      _$_CategoryModel;
  const _CategoryModel._() : super._();

  factory _CategoryModel.fromJson(Map<String, dynamic> json) =
      _$_CategoryModel.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'icon')
  String get icon;
  @override
  @JsonKey(name: 'slug')
  String get slug;
  @override
  @JsonKey(name: 'banner')
  String? get banner;
  @override
  @JsonKey(name: 'order_level')
  int? get orderLevel;
  @override
  @JsonKey(name: 'digital')
  int? get digital;
  @override
  @JsonKey(name: 'chileds')
  List<CategoryModel>? get subCats;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryModelCopyWith<_$_CategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}
