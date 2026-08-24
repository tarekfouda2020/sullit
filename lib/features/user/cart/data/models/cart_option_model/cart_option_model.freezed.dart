// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_option_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CartOptionModel _$CartOptionModelFromJson(Map<String, dynamic> json) {
  return _CartOptionModel.fromJson(json);
}

/// @nodoc
mixin _$CartOptionModel {
  CartOptionInfoModel get option => throw _privateConstructorUsedError;
  List<CartOptionValueModel> get values => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartOptionModelCopyWith<CartOptionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartOptionModelCopyWith<$Res> {
  factory $CartOptionModelCopyWith(
          CartOptionModel value, $Res Function(CartOptionModel) then) =
      _$CartOptionModelCopyWithImpl<$Res, CartOptionModel>;
  @useResult
  $Res call({CartOptionInfoModel option, List<CartOptionValueModel> values});

  $CartOptionInfoModelCopyWith<$Res> get option;
}

/// @nodoc
class _$CartOptionModelCopyWithImpl<$Res, $Val extends CartOptionModel>
    implements $CartOptionModelCopyWith<$Res> {
  _$CartOptionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? option = null,
    Object? values = null,
  }) {
    return _then(_value.copyWith(
      option: null == option
          ? _value.option
          : option // ignore: cast_nullable_to_non_nullable
              as CartOptionInfoModel,
      values: null == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<CartOptionValueModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CartOptionInfoModelCopyWith<$Res> get option {
    return $CartOptionInfoModelCopyWith<$Res>(_value.option, (value) {
      return _then(_value.copyWith(option: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CartOptionModelCopyWith<$Res>
    implements $CartOptionModelCopyWith<$Res> {
  factory _$$_CartOptionModelCopyWith(
          _$_CartOptionModel value, $Res Function(_$_CartOptionModel) then) =
      __$$_CartOptionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CartOptionInfoModel option, List<CartOptionValueModel> values});

  @override
  $CartOptionInfoModelCopyWith<$Res> get option;
}

/// @nodoc
class __$$_CartOptionModelCopyWithImpl<$Res>
    extends _$CartOptionModelCopyWithImpl<$Res, _$_CartOptionModel>
    implements _$$_CartOptionModelCopyWith<$Res> {
  __$$_CartOptionModelCopyWithImpl(
      _$_CartOptionModel _value, $Res Function(_$_CartOptionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? option = null,
    Object? values = null,
  }) {
    return _then(_$_CartOptionModel(
      option: null == option
          ? _value.option
          : option // ignore: cast_nullable_to_non_nullable
              as CartOptionInfoModel,
      values: null == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<CartOptionValueModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_CartOptionModel extends _CartOptionModel {
  const _$_CartOptionModel(
      {required this.option, required final List<CartOptionValueModel> values})
      : _values = values,
        super._();

  factory _$_CartOptionModel.fromJson(Map<String, dynamic> json) =>
      _$$_CartOptionModelFromJson(json);

  @override
  final CartOptionInfoModel option;
  final List<CartOptionValueModel> _values;
  @override
  List<CartOptionValueModel> get values {
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_values);
  }

  @override
  String toString() {
    return 'CartOptionModel(option: $option, values: $values)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartOptionModel &&
            (identical(other.option, option) || other.option == option) &&
            const DeepCollectionEquality().equals(other._values, _values));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, option, const DeepCollectionEquality().hash(_values));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartOptionModelCopyWith<_$_CartOptionModel> get copyWith =>
      __$$_CartOptionModelCopyWithImpl<_$_CartOptionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartOptionModelToJson(
      this,
    );
  }
}

abstract class _CartOptionModel extends CartOptionModel {
  const factory _CartOptionModel(
      {required final CartOptionInfoModel option,
      required final List<CartOptionValueModel> values}) = _$_CartOptionModel;
  const _CartOptionModel._() : super._();

  factory _CartOptionModel.fromJson(Map<String, dynamic> json) =
      _$_CartOptionModel.fromJson;

  @override
  CartOptionInfoModel get option;
  @override
  List<CartOptionValueModel> get values;
  @override
  @JsonKey(ignore: true)
  _$$_CartOptionModelCopyWith<_$_CartOptionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

CartOptionInfoModel _$CartOptionInfoModelFromJson(Map<String, dynamic> json) {
  return _CartOptionInfoModel.fromJson(json);
}

/// @nodoc
mixin _$CartOptionInfoModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_required')
  bool get isRequired => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_select')
  int? get maxSelect => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartOptionInfoModelCopyWith<CartOptionInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartOptionInfoModelCopyWith<$Res> {
  factory $CartOptionInfoModelCopyWith(
          CartOptionInfoModel value, $Res Function(CartOptionInfoModel) then) =
      _$CartOptionInfoModelCopyWithImpl<$Res, CartOptionInfoModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      String type,
      @JsonKey(name: 'is_required') bool isRequired,
      @JsonKey(name: 'max_select') int? maxSelect});
}

/// @nodoc
class _$CartOptionInfoModelCopyWithImpl<$Res, $Val extends CartOptionInfoModel>
    implements $CartOptionInfoModelCopyWith<$Res> {
  _$CartOptionInfoModelCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CartOptionInfoModelCopyWith<$Res>
    implements $CartOptionInfoModelCopyWith<$Res> {
  factory _$$_CartOptionInfoModelCopyWith(_$_CartOptionInfoModel value,
          $Res Function(_$_CartOptionInfoModel) then) =
      __$$_CartOptionInfoModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String type,
      @JsonKey(name: 'is_required') bool isRequired,
      @JsonKey(name: 'max_select') int? maxSelect});
}

/// @nodoc
class __$$_CartOptionInfoModelCopyWithImpl<$Res>
    extends _$CartOptionInfoModelCopyWithImpl<$Res, _$_CartOptionInfoModel>
    implements _$$_CartOptionInfoModelCopyWith<$Res> {
  __$$_CartOptionInfoModelCopyWithImpl(_$_CartOptionInfoModel _value,
      $Res Function(_$_CartOptionInfoModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? isRequired = null,
    Object? maxSelect = freezed,
  }) {
    return _then(_$_CartOptionInfoModel(
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
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_CartOptionInfoModel extends _CartOptionInfoModel {
  const _$_CartOptionInfoModel(
      {required this.id,
      required this.name,
      required this.type,
      @JsonKey(name: 'is_required') required this.isRequired,
      @JsonKey(name: 'max_select') this.maxSelect})
      : super._();

  factory _$_CartOptionInfoModel.fromJson(Map<String, dynamic> json) =>
      _$$_CartOptionInfoModelFromJson(json);

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
  String toString() {
    return 'CartOptionInfoModel(id: $id, name: $name, type: $type, isRequired: $isRequired, maxSelect: $maxSelect)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartOptionInfoModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.isRequired, isRequired) ||
                other.isRequired == isRequired) &&
            (identical(other.maxSelect, maxSelect) ||
                other.maxSelect == maxSelect));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, type, isRequired, maxSelect);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartOptionInfoModelCopyWith<_$_CartOptionInfoModel> get copyWith =>
      __$$_CartOptionInfoModelCopyWithImpl<_$_CartOptionInfoModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartOptionInfoModelToJson(
      this,
    );
  }
}

abstract class _CartOptionInfoModel extends CartOptionInfoModel {
  const factory _CartOptionInfoModel(
          {required final int id,
          required final String name,
          required final String type,
          @JsonKey(name: 'is_required') required final bool isRequired,
          @JsonKey(name: 'max_select') final int? maxSelect}) =
      _$_CartOptionInfoModel;
  const _CartOptionInfoModel._() : super._();

  factory _CartOptionInfoModel.fromJson(Map<String, dynamic> json) =
      _$_CartOptionInfoModel.fromJson;

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
  @JsonKey(ignore: true)
  _$$_CartOptionInfoModelCopyWith<_$_CartOptionInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

CartOptionValueModel _$CartOptionValueModelFromJson(Map<String, dynamic> json) {
  return _CartOptionValueModel.fromJson(json);
}

/// @nodoc
mixin _$CartOptionValueModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartOptionValueModelCopyWith<CartOptionValueModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartOptionValueModelCopyWith<$Res> {
  factory $CartOptionValueModelCopyWith(CartOptionValueModel value,
          $Res Function(CartOptionValueModel) then) =
      _$CartOptionValueModelCopyWithImpl<$Res, CartOptionValueModel>;
  @useResult
  $Res call({int id, String name, String price});
}

/// @nodoc
class _$CartOptionValueModelCopyWithImpl<$Res,
        $Val extends CartOptionValueModel>
    implements $CartOptionValueModelCopyWith<$Res> {
  _$CartOptionValueModelCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CartOptionValueModelCopyWith<$Res>
    implements $CartOptionValueModelCopyWith<$Res> {
  factory _$$_CartOptionValueModelCopyWith(_$_CartOptionValueModel value,
          $Res Function(_$_CartOptionValueModel) then) =
      __$$_CartOptionValueModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String price});
}

/// @nodoc
class __$$_CartOptionValueModelCopyWithImpl<$Res>
    extends _$CartOptionValueModelCopyWithImpl<$Res, _$_CartOptionValueModel>
    implements _$$_CartOptionValueModelCopyWith<$Res> {
  __$$_CartOptionValueModelCopyWithImpl(_$_CartOptionValueModel _value,
      $Res Function(_$_CartOptionValueModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
  }) {
    return _then(_$_CartOptionValueModel(
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
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_CartOptionValueModel extends _CartOptionValueModel {
  const _$_CartOptionValueModel(
      {required this.id, required this.name, required this.price})
      : super._();

  factory _$_CartOptionValueModel.fromJson(Map<String, dynamic> json) =>
      _$$_CartOptionValueModelFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String price;

  @override
  String toString() {
    return 'CartOptionValueModel(id: $id, name: $name, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartOptionValueModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartOptionValueModelCopyWith<_$_CartOptionValueModel> get copyWith =>
      __$$_CartOptionValueModelCopyWithImpl<_$_CartOptionValueModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartOptionValueModelToJson(
      this,
    );
  }
}

abstract class _CartOptionValueModel extends CartOptionValueModel {
  const factory _CartOptionValueModel(
      {required final int id,
      required final String name,
      required final String price}) = _$_CartOptionValueModel;
  const _CartOptionValueModel._() : super._();

  factory _CartOptionValueModel.fromJson(Map<String, dynamic> json) =
      _$_CartOptionValueModel.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get price;
  @override
  @JsonKey(ignore: true)
  _$$_CartOptionValueModelCopyWith<_$_CartOptionValueModel> get copyWith =>
      throw _privateConstructorUsedError;
}
