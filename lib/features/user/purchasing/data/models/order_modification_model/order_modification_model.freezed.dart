// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_modification_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderModificationModel _$OrderModificationModelFromJson(
    Map<String, dynamic> json) {
  return _OrderModificationModel.fromJson(json);
}

/// @nodoc
mixin _$OrderModificationModel {
  int get id => throw _privateConstructorUsedError;
  String get action => throw _privateConstructorUsedError;
  @JsonKey(name: 'action_label')
  String get actionLabel => throw _privateConstructorUsedError;
  String get notes => throw _privateConstructorUsedError;
  @JsonKey(name: 'old_price')
  String? get oldPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'new_price')
  String? get newPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'old_quantity')
  int? get oldQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'new_quantity')
  int? get newQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'old_product')
  NewProductModel get oldProduct => throw _privateConstructorUsedError;
  @JsonKey(name: 'new_product')
  NewProductModel? get newProduct => throw _privateConstructorUsedError;
  @JsonKey(name: 'old_variation')
  String get oldVariation => throw _privateConstructorUsedError;
  @JsonKey(name: 'new_variation')
  String get newVariation => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderModificationModelCopyWith<OrderModificationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderModificationModelCopyWith<$Res> {
  factory $OrderModificationModelCopyWith(OrderModificationModel value,
          $Res Function(OrderModificationModel) then) =
      _$OrderModificationModelCopyWithImpl<$Res, OrderModificationModel>;
  @useResult
  $Res call(
      {int id,
      String action,
      @JsonKey(name: 'action_label') String actionLabel,
      String notes,
      @JsonKey(name: 'old_price') String? oldPrice,
      @JsonKey(name: 'new_price') String? newPrice,
      @JsonKey(name: 'old_quantity') int? oldQuantity,
      @JsonKey(name: 'new_quantity') int? newQuantity,
      @JsonKey(name: 'old_product') NewProductModel oldProduct,
      @JsonKey(name: 'new_product') NewProductModel? newProduct,
      @JsonKey(name: 'old_variation') String oldVariation,
      @JsonKey(name: 'new_variation') String newVariation,
      @JsonKey(name: 'created_at') String createdAt});

  $NewProductModelCopyWith<$Res> get oldProduct;
  $NewProductModelCopyWith<$Res>? get newProduct;
}

/// @nodoc
class _$OrderModificationModelCopyWithImpl<$Res,
        $Val extends OrderModificationModel>
    implements $OrderModificationModelCopyWith<$Res> {
  _$OrderModificationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? action = null,
    Object? actionLabel = null,
    Object? notes = null,
    Object? oldPrice = freezed,
    Object? newPrice = freezed,
    Object? oldQuantity = freezed,
    Object? newQuantity = freezed,
    Object? oldProduct = null,
    Object? newProduct = freezed,
    Object? oldVariation = null,
    Object? newVariation = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
      actionLabel: null == actionLabel
          ? _value.actionLabel
          : actionLabel // ignore: cast_nullable_to_non_nullable
              as String,
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
      oldPrice: freezed == oldPrice
          ? _value.oldPrice
          : oldPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      newPrice: freezed == newPrice
          ? _value.newPrice
          : newPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      oldQuantity: freezed == oldQuantity
          ? _value.oldQuantity
          : oldQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      newQuantity: freezed == newQuantity
          ? _value.newQuantity
          : newQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      oldProduct: null == oldProduct
          ? _value.oldProduct
          : oldProduct // ignore: cast_nullable_to_non_nullable
              as NewProductModel,
      newProduct: freezed == newProduct
          ? _value.newProduct
          : newProduct // ignore: cast_nullable_to_non_nullable
              as NewProductModel?,
      oldVariation: null == oldVariation
          ? _value.oldVariation
          : oldVariation // ignore: cast_nullable_to_non_nullable
              as String,
      newVariation: null == newVariation
          ? _value.newVariation
          : newVariation // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NewProductModelCopyWith<$Res> get oldProduct {
    return $NewProductModelCopyWith<$Res>(_value.oldProduct, (value) {
      return _then(_value.copyWith(oldProduct: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NewProductModelCopyWith<$Res>? get newProduct {
    if (_value.newProduct == null) {
      return null;
    }

    return $NewProductModelCopyWith<$Res>(_value.newProduct!, (value) {
      return _then(_value.copyWith(newProduct: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OrderModificationModelCopyWith<$Res>
    implements $OrderModificationModelCopyWith<$Res> {
  factory _$$_OrderModificationModelCopyWith(_$_OrderModificationModel value,
          $Res Function(_$_OrderModificationModel) then) =
      __$$_OrderModificationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String action,
      @JsonKey(name: 'action_label') String actionLabel,
      String notes,
      @JsonKey(name: 'old_price') String? oldPrice,
      @JsonKey(name: 'new_price') String? newPrice,
      @JsonKey(name: 'old_quantity') int? oldQuantity,
      @JsonKey(name: 'new_quantity') int? newQuantity,
      @JsonKey(name: 'old_product') NewProductModel oldProduct,
      @JsonKey(name: 'new_product') NewProductModel? newProduct,
      @JsonKey(name: 'old_variation') String oldVariation,
      @JsonKey(name: 'new_variation') String newVariation,
      @JsonKey(name: 'created_at') String createdAt});

  @override
  $NewProductModelCopyWith<$Res> get oldProduct;
  @override
  $NewProductModelCopyWith<$Res>? get newProduct;
}

/// @nodoc
class __$$_OrderModificationModelCopyWithImpl<$Res>
    extends _$OrderModificationModelCopyWithImpl<$Res,
        _$_OrderModificationModel>
    implements _$$_OrderModificationModelCopyWith<$Res> {
  __$$_OrderModificationModelCopyWithImpl(_$_OrderModificationModel _value,
      $Res Function(_$_OrderModificationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? action = null,
    Object? actionLabel = null,
    Object? notes = null,
    Object? oldPrice = freezed,
    Object? newPrice = freezed,
    Object? oldQuantity = freezed,
    Object? newQuantity = freezed,
    Object? oldProduct = null,
    Object? newProduct = freezed,
    Object? oldVariation = null,
    Object? newVariation = null,
    Object? createdAt = null,
  }) {
    return _then(_$_OrderModificationModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
      actionLabel: null == actionLabel
          ? _value.actionLabel
          : actionLabel // ignore: cast_nullable_to_non_nullable
              as String,
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
      oldPrice: freezed == oldPrice
          ? _value.oldPrice
          : oldPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      newPrice: freezed == newPrice
          ? _value.newPrice
          : newPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      oldQuantity: freezed == oldQuantity
          ? _value.oldQuantity
          : oldQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      newQuantity: freezed == newQuantity
          ? _value.newQuantity
          : newQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      oldProduct: null == oldProduct
          ? _value.oldProduct
          : oldProduct // ignore: cast_nullable_to_non_nullable
              as NewProductModel,
      newProduct: freezed == newProduct
          ? _value.newProduct
          : newProduct // ignore: cast_nullable_to_non_nullable
              as NewProductModel?,
      oldVariation: null == oldVariation
          ? _value.oldVariation
          : oldVariation // ignore: cast_nullable_to_non_nullable
              as String,
      newVariation: null == newVariation
          ? _value.newVariation
          : newVariation // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderModificationModel extends _OrderModificationModel {
  const _$_OrderModificationModel(
      {required this.id,
      required this.action,
      @JsonKey(name: 'action_label') required this.actionLabel,
      required this.notes,
      @JsonKey(name: 'old_price') required this.oldPrice,
      @JsonKey(name: 'new_price') required this.newPrice,
      @JsonKey(name: 'old_quantity') required this.oldQuantity,
      @JsonKey(name: 'new_quantity') required this.newQuantity,
      @JsonKey(name: 'old_product') required this.oldProduct,
      @JsonKey(name: 'new_product') this.newProduct,
      @JsonKey(name: 'old_variation') required this.oldVariation,
      @JsonKey(name: 'new_variation') required this.newVariation,
      @JsonKey(name: 'created_at') required this.createdAt})
      : super._();

  factory _$_OrderModificationModel.fromJson(Map<String, dynamic> json) =>
      _$$_OrderModificationModelFromJson(json);

  @override
  final int id;
  @override
  final String action;
  @override
  @JsonKey(name: 'action_label')
  final String actionLabel;
  @override
  final String notes;
  @override
  @JsonKey(name: 'old_price')
  final String? oldPrice;
  @override
  @JsonKey(name: 'new_price')
  final String? newPrice;
  @override
  @JsonKey(name: 'old_quantity')
  final int? oldQuantity;
  @override
  @JsonKey(name: 'new_quantity')
  final int? newQuantity;
  @override
  @JsonKey(name: 'old_product')
  final NewProductModel oldProduct;
  @override
  @JsonKey(name: 'new_product')
  final NewProductModel? newProduct;
  @override
  @JsonKey(name: 'old_variation')
  final String oldVariation;
  @override
  @JsonKey(name: 'new_variation')
  final String newVariation;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;

  @override
  String toString() {
    return 'OrderModificationModel(id: $id, action: $action, actionLabel: $actionLabel, notes: $notes, oldPrice: $oldPrice, newPrice: $newPrice, oldQuantity: $oldQuantity, newQuantity: $newQuantity, oldProduct: $oldProduct, newProduct: $newProduct, oldVariation: $oldVariation, newVariation: $newVariation, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderModificationModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.actionLabel, actionLabel) ||
                other.actionLabel == actionLabel) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.oldPrice, oldPrice) ||
                other.oldPrice == oldPrice) &&
            (identical(other.newPrice, newPrice) ||
                other.newPrice == newPrice) &&
            (identical(other.oldQuantity, oldQuantity) ||
                other.oldQuantity == oldQuantity) &&
            (identical(other.newQuantity, newQuantity) ||
                other.newQuantity == newQuantity) &&
            (identical(other.oldProduct, oldProduct) ||
                other.oldProduct == oldProduct) &&
            (identical(other.newProduct, newProduct) ||
                other.newProduct == newProduct) &&
            (identical(other.oldVariation, oldVariation) ||
                other.oldVariation == oldVariation) &&
            (identical(other.newVariation, newVariation) ||
                other.newVariation == newVariation) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      action,
      actionLabel,
      notes,
      oldPrice,
      newPrice,
      oldQuantity,
      newQuantity,
      oldProduct,
      newProduct,
      oldVariation,
      newVariation,
      createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderModificationModelCopyWith<_$_OrderModificationModel> get copyWith =>
      __$$_OrderModificationModelCopyWithImpl<_$_OrderModificationModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderModificationModelToJson(
      this,
    );
  }
}

abstract class _OrderModificationModel extends OrderModificationModel {
  const factory _OrderModificationModel(
      {required final int id,
      required final String action,
      @JsonKey(name: 'action_label') required final String actionLabel,
      required final String notes,
      @JsonKey(name: 'old_price') required final String? oldPrice,
      @JsonKey(name: 'new_price') required final String? newPrice,
      @JsonKey(name: 'old_quantity') required final int? oldQuantity,
      @JsonKey(name: 'new_quantity') required final int? newQuantity,
      @JsonKey(name: 'old_product') required final NewProductModel oldProduct,
      @JsonKey(name: 'new_product') final NewProductModel? newProduct,
      @JsonKey(name: 'old_variation') required final String oldVariation,
      @JsonKey(name: 'new_variation') required final String newVariation,
      @JsonKey(name: 'created_at')
      required final String createdAt}) = _$_OrderModificationModel;
  const _OrderModificationModel._() : super._();

  factory _OrderModificationModel.fromJson(Map<String, dynamic> json) =
      _$_OrderModificationModel.fromJson;

  @override
  int get id;
  @override
  String get action;
  @override
  @JsonKey(name: 'action_label')
  String get actionLabel;
  @override
  String get notes;
  @override
  @JsonKey(name: 'old_price')
  String? get oldPrice;
  @override
  @JsonKey(name: 'new_price')
  String? get newPrice;
  @override
  @JsonKey(name: 'old_quantity')
  int? get oldQuantity;
  @override
  @JsonKey(name: 'new_quantity')
  int? get newQuantity;
  @override
  @JsonKey(name: 'old_product')
  NewProductModel get oldProduct;
  @override
  @JsonKey(name: 'new_product')
  NewProductModel? get newProduct;
  @override
  @JsonKey(name: 'old_variation')
  String get oldVariation;
  @override
  @JsonKey(name: 'new_variation')
  String get newVariation;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_OrderModificationModelCopyWith<_$_OrderModificationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

NewProductModel _$NewProductModelFromJson(Map<String, dynamic> json) {
  return _NewProductModel.fromJson(json);
}

/// @nodoc
mixin _$NewProductModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get barcode => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_fresh')
  bool get isFresh => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumbnail_image')
  String get thumbnailImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewProductModelCopyWith<NewProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewProductModelCopyWith<$Res> {
  factory $NewProductModelCopyWith(
          NewProductModel value, $Res Function(NewProductModel) then) =
      _$NewProductModelCopyWithImpl<$Res, NewProductModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      String barcode,
      String unit,
      @JsonKey(name: 'is_fresh') bool isFresh,
      @JsonKey(name: 'thumbnail_image') String thumbnailImage});
}

/// @nodoc
class _$NewProductModelCopyWithImpl<$Res, $Val extends NewProductModel>
    implements $NewProductModelCopyWith<$Res> {
  _$NewProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? barcode = null,
    Object? unit = null,
    Object? isFresh = null,
    Object? thumbnailImage = null,
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
      barcode: null == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      isFresh: null == isFresh
          ? _value.isFresh
          : isFresh // ignore: cast_nullable_to_non_nullable
              as bool,
      thumbnailImage: null == thumbnailImage
          ? _value.thumbnailImage
          : thumbnailImage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NewProductModelCopyWith<$Res>
    implements $NewProductModelCopyWith<$Res> {
  factory _$$_NewProductModelCopyWith(
          _$_NewProductModel value, $Res Function(_$_NewProductModel) then) =
      __$$_NewProductModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String barcode,
      String unit,
      @JsonKey(name: 'is_fresh') bool isFresh,
      @JsonKey(name: 'thumbnail_image') String thumbnailImage});
}

/// @nodoc
class __$$_NewProductModelCopyWithImpl<$Res>
    extends _$NewProductModelCopyWithImpl<$Res, _$_NewProductModel>
    implements _$$_NewProductModelCopyWith<$Res> {
  __$$_NewProductModelCopyWithImpl(
      _$_NewProductModel _value, $Res Function(_$_NewProductModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? barcode = null,
    Object? unit = null,
    Object? isFresh = null,
    Object? thumbnailImage = null,
  }) {
    return _then(_$_NewProductModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      barcode: null == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      isFresh: null == isFresh
          ? _value.isFresh
          : isFresh // ignore: cast_nullable_to_non_nullable
              as bool,
      thumbnailImage: null == thumbnailImage
          ? _value.thumbnailImage
          : thumbnailImage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NewProductModel extends _NewProductModel {
  const _$_NewProductModel(
      {required this.id,
      required this.name,
      required this.barcode,
      required this.unit,
      @JsonKey(name: 'is_fresh') required this.isFresh,
      @JsonKey(name: 'thumbnail_image') required this.thumbnailImage})
      : super._();

  factory _$_NewProductModel.fromJson(Map<String, dynamic> json) =>
      _$$_NewProductModelFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String barcode;
  @override
  final String unit;
  @override
  @JsonKey(name: 'is_fresh')
  final bool isFresh;
  @override
  @JsonKey(name: 'thumbnail_image')
  final String thumbnailImage;

  @override
  String toString() {
    return 'NewProductModel(id: $id, name: $name, barcode: $barcode, unit: $unit, isFresh: $isFresh, thumbnailImage: $thumbnailImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewProductModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.isFresh, isFresh) || other.isFresh == isFresh) &&
            (identical(other.thumbnailImage, thumbnailImage) ||
                other.thumbnailImage == thumbnailImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, barcode, unit, isFresh, thumbnailImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewProductModelCopyWith<_$_NewProductModel> get copyWith =>
      __$$_NewProductModelCopyWithImpl<_$_NewProductModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewProductModelToJson(
      this,
    );
  }
}

abstract class _NewProductModel extends NewProductModel {
  const factory _NewProductModel(
      {required final int id,
      required final String name,
      required final String barcode,
      required final String unit,
      @JsonKey(name: 'is_fresh') required final bool isFresh,
      @JsonKey(name: 'thumbnail_image')
      required final String thumbnailImage}) = _$_NewProductModel;
  const _NewProductModel._() : super._();

  factory _NewProductModel.fromJson(Map<String, dynamic> json) =
      _$_NewProductModel.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get barcode;
  @override
  String get unit;
  @override
  @JsonKey(name: 'is_fresh')
  bool get isFresh;
  @override
  @JsonKey(name: 'thumbnail_image')
  String get thumbnailImage;
  @override
  @JsonKey(ignore: true)
  _$$_NewProductModelCopyWith<_$_NewProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}
