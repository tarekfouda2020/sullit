// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_options.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductOption _$ProductOptionFromJson(Map<String, dynamic> json) {
  return _ProductOption.fromJson(json);
}

/// @nodoc
mixin _$ProductOption {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_required')
  bool get isRequired => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_select')
  int? get maxSelect => throw _privateConstructorUsedError;
  @JsonKey(name: 'sort_order')
  int get sortOrder => throw _privateConstructorUsedError;
  List<ProductOptionValueModel> get values =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductOptionCopyWith<ProductOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductOptionCopyWith<$Res> {
  factory $ProductOptionCopyWith(
          ProductOption value, $Res Function(ProductOption) then) =
      _$ProductOptionCopyWithImpl<$Res, ProductOption>;
  @useResult
  $Res call(
      {int id,
      String name,
      String type,
      @JsonKey(name: 'is_required') bool isRequired,
      @JsonKey(name: 'max_select') int? maxSelect,
      @JsonKey(name: 'sort_order') int sortOrder,
      List<ProductOptionValueModel> values});
}

/// @nodoc
class _$ProductOptionCopyWithImpl<$Res, $Val extends ProductOption>
    implements $ProductOptionCopyWith<$Res> {
  _$ProductOptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? isRequired = null,
    Object? maxSelect = freezed,
    Object? sortOrder = null,
    Object? values = null,
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      isRequired: null == isRequired
          ? _value.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      maxSelect: freezed == maxSelect
          ? _value.maxSelect
          : maxSelect // ignore: cast_nullable_to_non_nullable
              as int?,
      sortOrder: null == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as int,
      values: null == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<ProductOptionValueModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductOptionCopyWith<$Res>
    implements $ProductOptionCopyWith<$Res> {
  factory _$$_ProductOptionCopyWith(
          _$_ProductOption value, $Res Function(_$_ProductOption) then) =
      __$$_ProductOptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String type,
      @JsonKey(name: 'is_required') bool isRequired,
      @JsonKey(name: 'max_select') int? maxSelect,
      @JsonKey(name: 'sort_order') int sortOrder,
      List<ProductOptionValueModel> values});
}

/// @nodoc
class __$$_ProductOptionCopyWithImpl<$Res>
    extends _$ProductOptionCopyWithImpl<$Res, _$_ProductOption>
    implements _$$_ProductOptionCopyWith<$Res> {
  __$$_ProductOptionCopyWithImpl(
      _$_ProductOption _value, $Res Function(_$_ProductOption) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? isRequired = null,
    Object? maxSelect = freezed,
    Object? sortOrder = null,
    Object? values = null,
  }) {
    return _then(_$_ProductOption(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      isRequired: null == isRequired
          ? _value.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      maxSelect: freezed == maxSelect
          ? _value.maxSelect
          : maxSelect // ignore: cast_nullable_to_non_nullable
              as int?,
      sortOrder: null == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as int,
      values: null == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<ProductOptionValueModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductOption extends _ProductOption {
  const _$_ProductOption(
      {required this.id,
      required this.name,
      required this.type,
      @JsonKey(name: 'is_required') required this.isRequired,
      @JsonKey(name: 'max_select') this.maxSelect,
      @JsonKey(name: 'sort_order') required this.sortOrder,
      required final List<ProductOptionValueModel> values})
      : _values = values,
        super._();

  factory _$_ProductOption.fromJson(Map<String, dynamic> json) =>
      _$$_ProductOptionFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String type;
  @override
  @JsonKey(name: 'is_required')
  final bool isRequired;
  @override
  @JsonKey(name: 'max_select')
  final int? maxSelect;
  @override
  @JsonKey(name: 'sort_order')
  final int sortOrder;
  final List<ProductOptionValueModel> _values;
  @override
  List<ProductOptionValueModel> get values {
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_values);
  }

  @override
  String toString() {
    return 'ProductOption(id: $id, name: $name, type: $type, isRequired: $isRequired, maxSelect: $maxSelect, sortOrder: $sortOrder, values: $values)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductOption &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.isRequired, isRequired) ||
                other.isRequired == isRequired) &&
            (identical(other.maxSelect, maxSelect) ||
                other.maxSelect == maxSelect) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder) &&
            const DeepCollectionEquality().equals(other._values, _values));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, type, isRequired,
      maxSelect, sortOrder, const DeepCollectionEquality().hash(_values));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductOptionCopyWith<_$_ProductOption> get copyWith =>
      __$$_ProductOptionCopyWithImpl<_$_ProductOption>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductOptionToJson(
      this,
    );
  }
}

abstract class _ProductOption extends ProductOption {
  const factory _ProductOption(
      {required final int id,
      required final String name,
      required final String type,
      @JsonKey(name: 'is_required') required final bool isRequired,
      @JsonKey(name: 'max_select') final int? maxSelect,
      @JsonKey(name: 'sort_order') required final int sortOrder,
      required final List<ProductOptionValueModel> values}) = _$_ProductOption;
  const _ProductOption._() : super._();

  factory _ProductOption.fromJson(Map<String, dynamic> json) =
      _$_ProductOption.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get type;
  @override
  @JsonKey(name: 'is_required')
  bool get isRequired;
  @override
  @JsonKey(name: 'max_select')
  int? get maxSelect;
  @override
  @JsonKey(name: 'sort_order')
  int get sortOrder;
  @override
  List<ProductOptionValueModel> get values;
  @override
  @JsonKey(ignore: true)
  _$$_ProductOptionCopyWith<_$_ProductOption> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductOptionValueModel _$ProductOptionValueModelFromJson(
    Map<String, dynamic> json) {
  return _ProductOptionValueModel.fromJson(json);
}

/// @nodoc
mixin _$ProductOptionValueModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_default')
  bool get isDefault => throw _privateConstructorUsedError;
  @JsonKey(name: 'sort_order')
  int get sortOrder => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductOptionValueModelCopyWith<ProductOptionValueModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductOptionValueModelCopyWith<$Res> {
  factory $ProductOptionValueModelCopyWith(ProductOptionValueModel value,
          $Res Function(ProductOptionValueModel) then) =
      _$ProductOptionValueModelCopyWithImpl<$Res, ProductOptionValueModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      String price,
      @JsonKey(name: 'is_default') bool isDefault,
      @JsonKey(name: 'sort_order') int sortOrder});
}

/// @nodoc
class _$ProductOptionValueModelCopyWithImpl<$Res,
        $Val extends ProductOptionValueModel>
    implements $ProductOptionValueModelCopyWith<$Res> {
  _$ProductOptionValueModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? isDefault = null,
    Object? sortOrder = null,
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
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      isDefault: null == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      sortOrder: null == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductOptionValueModelCopyWith<$Res>
    implements $ProductOptionValueModelCopyWith<$Res> {
  factory _$$_ProductOptionValueModelCopyWith(_$_ProductOptionValueModel value,
          $Res Function(_$_ProductOptionValueModel) then) =
      __$$_ProductOptionValueModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String price,
      @JsonKey(name: 'is_default') bool isDefault,
      @JsonKey(name: 'sort_order') int sortOrder});
}

/// @nodoc
class __$$_ProductOptionValueModelCopyWithImpl<$Res>
    extends _$ProductOptionValueModelCopyWithImpl<$Res,
        _$_ProductOptionValueModel>
    implements _$$_ProductOptionValueModelCopyWith<$Res> {
  __$$_ProductOptionValueModelCopyWithImpl(_$_ProductOptionValueModel _value,
      $Res Function(_$_ProductOptionValueModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? isDefault = null,
    Object? sortOrder = null,
  }) {
    return _then(_$_ProductOptionValueModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      isDefault: null == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      sortOrder: null == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductOptionValueModel extends _ProductOptionValueModel {
  const _$_ProductOptionValueModel(
      {required this.id,
      required this.name,
      required this.price,
      @JsonKey(name: 'is_default') required this.isDefault,
      @JsonKey(name: 'sort_order') required this.sortOrder})
      : super._();

  factory _$_ProductOptionValueModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProductOptionValueModelFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String price;
  @override
  @JsonKey(name: 'is_default')
  final bool isDefault;
  @override
  @JsonKey(name: 'sort_order')
  final int sortOrder;

  @override
  String toString() {
    return 'ProductOptionValueModel(id: $id, name: $name, price: $price, isDefault: $isDefault, sortOrder: $sortOrder)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductOptionValueModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, price, isDefault, sortOrder);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductOptionValueModelCopyWith<_$_ProductOptionValueModel>
      get copyWith =>
          __$$_ProductOptionValueModelCopyWithImpl<_$_ProductOptionValueModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductOptionValueModelToJson(
      this,
    );
  }
}

abstract class _ProductOptionValueModel extends ProductOptionValueModel {
  const factory _ProductOptionValueModel(
          {required final int id,
          required final String name,
          required final String price,
          @JsonKey(name: 'is_default') required final bool isDefault,
          @JsonKey(name: 'sort_order') required final int sortOrder}) =
      _$_ProductOptionValueModel;
  const _ProductOptionValueModel._() : super._();

  factory _ProductOptionValueModel.fromJson(Map<String, dynamic> json) =
      _$_ProductOptionValueModel.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get price;
  @override
  @JsonKey(name: 'is_default')
  bool get isDefault;
  @override
  @JsonKey(name: 'sort_order')
  int get sortOrder;
  @override
  @JsonKey(ignore: true)
  _$$_ProductOptionValueModelCopyWith<_$_ProductOptionValueModel>
      get copyWith => throw _privateConstructorUsedError;
}
