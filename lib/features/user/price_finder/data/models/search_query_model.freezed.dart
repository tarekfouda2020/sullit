// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_query_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchQueryModel _$SearchQueryModelFromJson(Map<String, dynamic> json) {
  return _SearchQueryModel.fromJson(json);
}

/// @nodoc
mixin _$SearchQueryModel {
  int get id => throw _privateConstructorUsedError;
  String get query => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  SearchQueryCategoryModel? get category => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchQueryModelCopyWith<SearchQueryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchQueryModelCopyWith<$Res> {
  factory $SearchQueryModelCopyWith(
          SearchQueryModel value, $Res Function(SearchQueryModel) then) =
      _$SearchQueryModelCopyWithImpl<$Res, SearchQueryModel>;
  @useResult
  $Res call(
      {int id, String query, int count, SearchQueryCategoryModel? category});

  $SearchQueryCategoryModelCopyWith<$Res>? get category;
}

/// @nodoc
class _$SearchQueryModelCopyWithImpl<$Res, $Val extends SearchQueryModel>
    implements $SearchQueryModelCopyWith<$Res> {
  _$SearchQueryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? query = null,
    Object? count = null,
    Object? category = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as SearchQueryCategoryModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SearchQueryCategoryModelCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $SearchQueryCategoryModelCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SearchQueryModelCopyWith<$Res>
    implements $SearchQueryModelCopyWith<$Res> {
  factory _$$_SearchQueryModelCopyWith(
          _$_SearchQueryModel value, $Res Function(_$_SearchQueryModel) then) =
      __$$_SearchQueryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, String query, int count, SearchQueryCategoryModel? category});

  @override
  $SearchQueryCategoryModelCopyWith<$Res>? get category;
}

/// @nodoc
class __$$_SearchQueryModelCopyWithImpl<$Res>
    extends _$SearchQueryModelCopyWithImpl<$Res, _$_SearchQueryModel>
    implements _$$_SearchQueryModelCopyWith<$Res> {
  __$$_SearchQueryModelCopyWithImpl(
      _$_SearchQueryModel _value, $Res Function(_$_SearchQueryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? query = null,
    Object? count = null,
    Object? category = freezed,
  }) {
    return _then(_$_SearchQueryModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as SearchQueryCategoryModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_SearchQueryModel extends _SearchQueryModel {
  const _$_SearchQueryModel(
      {required this.id,
      required this.query,
      required this.count,
      this.category})
      : super._();

  factory _$_SearchQueryModel.fromJson(Map<String, dynamic> json) =>
      _$$_SearchQueryModelFromJson(json);

  @override
  final int id;
  @override
  final String query;
  @override
  final int count;
  @override
  final SearchQueryCategoryModel? category;

  @override
  String toString() {
    return 'SearchQueryModel(id: $id, query: $query, count: $count, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchQueryModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, query, count, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchQueryModelCopyWith<_$_SearchQueryModel> get copyWith =>
      __$$_SearchQueryModelCopyWithImpl<_$_SearchQueryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchQueryModelToJson(
      this,
    );
  }
}

abstract class _SearchQueryModel extends SearchQueryModel {
  const factory _SearchQueryModel(
      {required final int id,
      required final String query,
      required final int count,
      final SearchQueryCategoryModel? category}) = _$_SearchQueryModel;
  const _SearchQueryModel._() : super._();

  factory _SearchQueryModel.fromJson(Map<String, dynamic> json) =
      _$_SearchQueryModel.fromJson;

  @override
  int get id;
  @override
  String get query;
  @override
  int get count;
  @override
  SearchQueryCategoryModel? get category;
  @override
  @JsonKey(ignore: true)
  _$$_SearchQueryModelCopyWith<_$_SearchQueryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

SearchQueryCategoryModel _$SearchQueryCategoryModelFromJson(
    Map<String, dynamic> json) {
  return _SearchQueryCategoryModel.fromJson(json);
}

/// @nodoc
mixin _$SearchQueryCategoryModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchQueryCategoryModelCopyWith<SearchQueryCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchQueryCategoryModelCopyWith<$Res> {
  factory $SearchQueryCategoryModelCopyWith(SearchQueryCategoryModel value,
          $Res Function(SearchQueryCategoryModel) then) =
      _$SearchQueryCategoryModelCopyWithImpl<$Res, SearchQueryCategoryModel>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$SearchQueryCategoryModelCopyWithImpl<$Res,
        $Val extends SearchQueryCategoryModel>
    implements $SearchQueryCategoryModelCopyWith<$Res> {
  _$SearchQueryCategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchQueryCategoryModelCopyWith<$Res>
    implements $SearchQueryCategoryModelCopyWith<$Res> {
  factory _$$_SearchQueryCategoryModelCopyWith(
          _$_SearchQueryCategoryModel value,
          $Res Function(_$_SearchQueryCategoryModel) then) =
      __$$_SearchQueryCategoryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$_SearchQueryCategoryModelCopyWithImpl<$Res>
    extends _$SearchQueryCategoryModelCopyWithImpl<$Res,
        _$_SearchQueryCategoryModel>
    implements _$$_SearchQueryCategoryModelCopyWith<$Res> {
  __$$_SearchQueryCategoryModelCopyWithImpl(_$_SearchQueryCategoryModel _value,
      $Res Function(_$_SearchQueryCategoryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$_SearchQueryCategoryModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_SearchQueryCategoryModel extends _SearchQueryCategoryModel {
  const _$_SearchQueryCategoryModel({required this.id, required this.name})
      : super._();

  factory _$_SearchQueryCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$$_SearchQueryCategoryModelFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'SearchQueryCategoryModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchQueryCategoryModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchQueryCategoryModelCopyWith<_$_SearchQueryCategoryModel>
      get copyWith => __$$_SearchQueryCategoryModelCopyWithImpl<
          _$_SearchQueryCategoryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchQueryCategoryModelToJson(
      this,
    );
  }
}

abstract class _SearchQueryCategoryModel extends SearchQueryCategoryModel {
  const factory _SearchQueryCategoryModel(
      {required final int id,
      required final String name}) = _$_SearchQueryCategoryModel;
  const _SearchQueryCategoryModel._() : super._();

  factory _SearchQueryCategoryModel.fromJson(Map<String, dynamic> json) =
      _$_SearchQueryCategoryModel.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_SearchQueryCategoryModelCopyWith<_$_SearchQueryCategoryModel>
      get copyWith => throw _privateConstructorUsedError;
}
