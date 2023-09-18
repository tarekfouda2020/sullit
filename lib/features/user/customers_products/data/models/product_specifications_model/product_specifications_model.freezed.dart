// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_specifications_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductSpecificationsModel _$ProductSpecificationsModelFromJson(
    Map<String, dynamic> json) {
  return _ProductSpecificationsModel.fromJson(json);
}

/// @nodoc
mixin _$ProductSpecificationsModel {
  @JsonKey(name: "brands")
  List<BrandModel> get brands => throw _privateConstructorUsedError;
  @JsonKey(name: "categories")
  List<CategoryModel> get categories => throw _privateConstructorUsedError;
  @JsonKey(name: "children_categories")
  List<CategoryModel> get subCategories => throw _privateConstructorUsedError;
  @JsonKey(name: "sort_by_types")
  List<SortTypesModel> get sortTypes => throw _privateConstructorUsedError;
  @JsonKey(name: "sort_by_condition_types")
  List<SortTypesModel> get sortConditions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductSpecificationsModelCopyWith<ProductSpecificationsModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductSpecificationsModelCopyWith<$Res> {
  factory $ProductSpecificationsModelCopyWith(ProductSpecificationsModel value,
          $Res Function(ProductSpecificationsModel) then) =
      _$ProductSpecificationsModelCopyWithImpl<$Res,
          ProductSpecificationsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "brands") List<BrandModel> brands,
      @JsonKey(name: "categories") List<CategoryModel> categories,
      @JsonKey(name: "children_categories") List<CategoryModel> subCategories,
      @JsonKey(name: "sort_by_types") List<SortTypesModel> sortTypes,
      @JsonKey(name: "sort_by_condition_types")
      List<SortTypesModel> sortConditions});
}

/// @nodoc
class _$ProductSpecificationsModelCopyWithImpl<$Res,
        $Val extends ProductSpecificationsModel>
    implements $ProductSpecificationsModelCopyWith<$Res> {
  _$ProductSpecificationsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brands = null,
    Object? categories = null,
    Object? subCategories = null,
    Object? sortTypes = null,
    Object? sortConditions = null,
  }) {
    return _then(_value.copyWith(
      brands: null == brands
          ? _value.brands
          : brands // ignore: cast_nullable_to_non_nullable
              as List<BrandModel>,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      subCategories: null == subCategories
          ? _value.subCategories
          : subCategories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      sortTypes: null == sortTypes
          ? _value.sortTypes
          : sortTypes // ignore: cast_nullable_to_non_nullable
              as List<SortTypesModel>,
      sortConditions: null == sortConditions
          ? _value.sortConditions
          : sortConditions // ignore: cast_nullable_to_non_nullable
              as List<SortTypesModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductSpecificationsModelCopyWith<$Res>
    implements $ProductSpecificationsModelCopyWith<$Res> {
  factory _$$_ProductSpecificationsModelCopyWith(
          _$_ProductSpecificationsModel value,
          $Res Function(_$_ProductSpecificationsModel) then) =
      __$$_ProductSpecificationsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "brands") List<BrandModel> brands,
      @JsonKey(name: "categories") List<CategoryModel> categories,
      @JsonKey(name: "children_categories") List<CategoryModel> subCategories,
      @JsonKey(name: "sort_by_types") List<SortTypesModel> sortTypes,
      @JsonKey(name: "sort_by_condition_types")
      List<SortTypesModel> sortConditions});
}

/// @nodoc
class __$$_ProductSpecificationsModelCopyWithImpl<$Res>
    extends _$ProductSpecificationsModelCopyWithImpl<$Res,
        _$_ProductSpecificationsModel>
    implements _$$_ProductSpecificationsModelCopyWith<$Res> {
  __$$_ProductSpecificationsModelCopyWithImpl(
      _$_ProductSpecificationsModel _value,
      $Res Function(_$_ProductSpecificationsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brands = null,
    Object? categories = null,
    Object? subCategories = null,
    Object? sortTypes = null,
    Object? sortConditions = null,
  }) {
    return _then(_$_ProductSpecificationsModel(
      brands: null == brands
          ? _value._brands
          : brands // ignore: cast_nullable_to_non_nullable
              as List<BrandModel>,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      subCategories: null == subCategories
          ? _value._subCategories
          : subCategories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      sortTypes: null == sortTypes
          ? _value._sortTypes
          : sortTypes // ignore: cast_nullable_to_non_nullable
              as List<SortTypesModel>,
      sortConditions: null == sortConditions
          ? _value._sortConditions
          : sortConditions // ignore: cast_nullable_to_non_nullable
              as List<SortTypesModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ProductSpecificationsModel extends _ProductSpecificationsModel {
  const _$_ProductSpecificationsModel(
      {@JsonKey(name: "brands") required final List<BrandModel> brands,
      @JsonKey(name: "categories")
      required final List<CategoryModel> categories,
      @JsonKey(name: "children_categories")
      required final List<CategoryModel> subCategories,
      @JsonKey(name: "sort_by_types")
      required final List<SortTypesModel> sortTypes,
      @JsonKey(name: "sort_by_condition_types")
      required final List<SortTypesModel> sortConditions})
      : _brands = brands,
        _categories = categories,
        _subCategories = subCategories,
        _sortTypes = sortTypes,
        _sortConditions = sortConditions,
        super._();

  factory _$_ProductSpecificationsModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProductSpecificationsModelFromJson(json);

  final List<BrandModel> _brands;
  @override
  @JsonKey(name: "brands")
  List<BrandModel> get brands {
    if (_brands is EqualUnmodifiableListView) return _brands;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_brands);
  }

  final List<CategoryModel> _categories;
  @override
  @JsonKey(name: "categories")
  List<CategoryModel> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<CategoryModel> _subCategories;
  @override
  @JsonKey(name: "children_categories")
  List<CategoryModel> get subCategories {
    if (_subCategories is EqualUnmodifiableListView) return _subCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subCategories);
  }

  final List<SortTypesModel> _sortTypes;
  @override
  @JsonKey(name: "sort_by_types")
  List<SortTypesModel> get sortTypes {
    if (_sortTypes is EqualUnmodifiableListView) return _sortTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sortTypes);
  }

  final List<SortTypesModel> _sortConditions;
  @override
  @JsonKey(name: "sort_by_condition_types")
  List<SortTypesModel> get sortConditions {
    if (_sortConditions is EqualUnmodifiableListView) return _sortConditions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sortConditions);
  }

  @override
  String toString() {
    return 'ProductSpecificationsModel(brands: $brands, categories: $categories, subCategories: $subCategories, sortTypes: $sortTypes, sortConditions: $sortConditions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductSpecificationsModel &&
            const DeepCollectionEquality().equals(other._brands, _brands) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality()
                .equals(other._subCategories, _subCategories) &&
            const DeepCollectionEquality()
                .equals(other._sortTypes, _sortTypes) &&
            const DeepCollectionEquality()
                .equals(other._sortConditions, _sortConditions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_brands),
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_subCategories),
      const DeepCollectionEquality().hash(_sortTypes),
      const DeepCollectionEquality().hash(_sortConditions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductSpecificationsModelCopyWith<_$_ProductSpecificationsModel>
      get copyWith => __$$_ProductSpecificationsModelCopyWithImpl<
          _$_ProductSpecificationsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductSpecificationsModelToJson(
      this,
    );
  }
}

abstract class _ProductSpecificationsModel extends ProductSpecificationsModel {
  const factory _ProductSpecificationsModel(
          {@JsonKey(name: "brands") required final List<BrandModel> brands,
          @JsonKey(name: "categories")
          required final List<CategoryModel> categories,
          @JsonKey(name: "children_categories")
          required final List<CategoryModel> subCategories,
          @JsonKey(name: "sort_by_types")
          required final List<SortTypesModel> sortTypes,
          @JsonKey(name: "sort_by_condition_types")
          required final List<SortTypesModel> sortConditions}) =
      _$_ProductSpecificationsModel;
  const _ProductSpecificationsModel._() : super._();

  factory _ProductSpecificationsModel.fromJson(Map<String, dynamic> json) =
      _$_ProductSpecificationsModel.fromJson;

  @override
  @JsonKey(name: "brands")
  List<BrandModel> get brands;
  @override
  @JsonKey(name: "categories")
  List<CategoryModel> get categories;
  @override
  @JsonKey(name: "children_categories")
  List<CategoryModel> get subCategories;
  @override
  @JsonKey(name: "sort_by_types")
  List<SortTypesModel> get sortTypes;
  @override
  @JsonKey(name: "sort_by_condition_types")
  List<SortTypesModel> get sortConditions;
  @override
  @JsonKey(ignore: true)
  _$$_ProductSpecificationsModelCopyWith<_$_ProductSpecificationsModel>
      get copyWith => throw _privateConstructorUsedError;
}
