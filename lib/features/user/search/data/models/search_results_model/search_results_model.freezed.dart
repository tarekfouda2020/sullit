// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_results_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchResultsModel _$SearchResultsModelFromJson(Map<String, dynamic> json) {
  return _SearchResultsModel.fromJson(json);
}

/// @nodoc
mixin _$SearchResultsModel {
  @JsonKey(name: 'popular_suggestions')
  List<String> get suggestions => throw _privateConstructorUsedError;
  @JsonKey(name: 'products')
  List<ProductModel> get products => throw _privateConstructorUsedError;
  @JsonKey(name: 'categories')
  List<CategoryModel> get categories => throw _privateConstructorUsedError;
  @JsonKey(name: 'shops')
  List<ShopModel> get shops => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchResultsModelCopyWith<SearchResultsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResultsModelCopyWith<$Res> {
  factory $SearchResultsModelCopyWith(
          SearchResultsModel value, $Res Function(SearchResultsModel) then) =
      _$SearchResultsModelCopyWithImpl<$Res, SearchResultsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'popular_suggestions') List<String> suggestions,
      @JsonKey(name: 'products') List<ProductModel> products,
      @JsonKey(name: 'categories') List<CategoryModel> categories,
      @JsonKey(name: 'shops') List<ShopModel> shops});
}

/// @nodoc
class _$SearchResultsModelCopyWithImpl<$Res, $Val extends SearchResultsModel>
    implements $SearchResultsModelCopyWith<$Res> {
  _$SearchResultsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? suggestions = null,
    Object? products = null,
    Object? categories = null,
    Object? shops = null,
  }) {
    return _then(_value.copyWith(
      suggestions: null == suggestions
          ? _value.suggestions
          : suggestions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      shops: null == shops
          ? _value.shops
          : shops // ignore: cast_nullable_to_non_nullable
              as List<ShopModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchResultsModelCopyWith<$Res>
    implements $SearchResultsModelCopyWith<$Res> {
  factory _$$_SearchResultsModelCopyWith(_$_SearchResultsModel value,
          $Res Function(_$_SearchResultsModel) then) =
      __$$_SearchResultsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'popular_suggestions') List<String> suggestions,
      @JsonKey(name: 'products') List<ProductModel> products,
      @JsonKey(name: 'categories') List<CategoryModel> categories,
      @JsonKey(name: 'shops') List<ShopModel> shops});
}

/// @nodoc
class __$$_SearchResultsModelCopyWithImpl<$Res>
    extends _$SearchResultsModelCopyWithImpl<$Res, _$_SearchResultsModel>
    implements _$$_SearchResultsModelCopyWith<$Res> {
  __$$_SearchResultsModelCopyWithImpl(
      _$_SearchResultsModel _value, $Res Function(_$_SearchResultsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? suggestions = null,
    Object? products = null,
    Object? categories = null,
    Object? shops = null,
  }) {
    return _then(_$_SearchResultsModel(
      suggestions: null == suggestions
          ? _value._suggestions
          : suggestions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      shops: null == shops
          ? _value._shops
          : shops // ignore: cast_nullable_to_non_nullable
              as List<ShopModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_SearchResultsModel extends _SearchResultsModel {
  const _$_SearchResultsModel(
      {@JsonKey(name: 'popular_suggestions')
      required final List<String> suggestions,
      @JsonKey(name: 'products') required final List<ProductModel> products,
      @JsonKey(name: 'categories')
      required final List<CategoryModel> categories,
      @JsonKey(name: 'shops') required final List<ShopModel> shops})
      : _suggestions = suggestions,
        _products = products,
        _categories = categories,
        _shops = shops,
        super._();

  factory _$_SearchResultsModel.fromJson(Map<String, dynamic> json) =>
      _$$_SearchResultsModelFromJson(json);

  final List<String> _suggestions;
  @override
  @JsonKey(name: 'popular_suggestions')
  List<String> get suggestions {
    if (_suggestions is EqualUnmodifiableListView) return _suggestions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_suggestions);
  }

  final List<ProductModel> _products;
  @override
  @JsonKey(name: 'products')
  List<ProductModel> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  final List<CategoryModel> _categories;
  @override
  @JsonKey(name: 'categories')
  List<CategoryModel> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<ShopModel> _shops;
  @override
  @JsonKey(name: 'shops')
  List<ShopModel> get shops {
    if (_shops is EqualUnmodifiableListView) return _shops;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_shops);
  }

  @override
  String toString() {
    return 'SearchResultsModel(suggestions: $suggestions, products: $products, categories: $categories, shops: $shops)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchResultsModel &&
            const DeepCollectionEquality()
                .equals(other._suggestions, _suggestions) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality().equals(other._shops, _shops));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_suggestions),
      const DeepCollectionEquality().hash(_products),
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_shops));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchResultsModelCopyWith<_$_SearchResultsModel> get copyWith =>
      __$$_SearchResultsModelCopyWithImpl<_$_SearchResultsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchResultsModelToJson(
      this,
    );
  }
}

abstract class _SearchResultsModel extends SearchResultsModel {
  const factory _SearchResultsModel(
          {@JsonKey(name: 'popular_suggestions')
          required final List<String> suggestions,
          @JsonKey(name: 'products') required final List<ProductModel> products,
          @JsonKey(name: 'categories')
          required final List<CategoryModel> categories,
          @JsonKey(name: 'shops') required final List<ShopModel> shops}) =
      _$_SearchResultsModel;
  const _SearchResultsModel._() : super._();

  factory _SearchResultsModel.fromJson(Map<String, dynamic> json) =
      _$_SearchResultsModel.fromJson;

  @override
  @JsonKey(name: 'popular_suggestions')
  List<String> get suggestions;
  @override
  @JsonKey(name: 'products')
  List<ProductModel> get products;
  @override
  @JsonKey(name: 'categories')
  List<CategoryModel> get categories;
  @override
  @JsonKey(name: 'shops')
  List<ShopModel> get shops;
  @override
  @JsonKey(ignore: true)
  _$$_SearchResultsModelCopyWith<_$_SearchResultsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
