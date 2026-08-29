// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'instore_cart_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InstoreCartModel _$InstoreCartModelFromJson(Map<String, dynamic> json) {
  return _InstoreCartModel.fromJson(json);
}

/// @nodoc
mixin _$InstoreCartModel {
  @JsonKey(name: 'seller_id')
  int get sellerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'seller_name')
  String get sellerName => throw _privateConstructorUsedError;
  @JsonKey(name: 'seller_image')
  String get sellerImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_branches')
  bool get hasBranches => throw _privateConstructorUsedError;
  @JsonKey(name: 'sub_total')
  num get subTotal => throw _privateConstructorUsedError;
  List<InstoreCartItemModel> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InstoreCartModelCopyWith<InstoreCartModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstoreCartModelCopyWith<$Res> {
  factory $InstoreCartModelCopyWith(
          InstoreCartModel value, $Res Function(InstoreCartModel) then) =
      _$InstoreCartModelCopyWithImpl<$Res, InstoreCartModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'seller_id') int sellerId,
      @JsonKey(name: 'seller_name') String sellerName,
      @JsonKey(name: 'seller_image') String sellerImage,
      @JsonKey(name: 'has_branches') bool hasBranches,
      @JsonKey(name: 'sub_total') num subTotal,
      List<InstoreCartItemModel> items});
}

/// @nodoc
class _$InstoreCartModelCopyWithImpl<$Res, $Val extends InstoreCartModel>
    implements $InstoreCartModelCopyWith<$Res> {
  _$InstoreCartModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sellerId = null,
    Object? sellerName = null,
    Object? sellerImage = null,
    Object? hasBranches = null,
    Object? subTotal = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      sellerId: null == sellerId
          ? _value.sellerId
          : sellerId // ignore: cast_nullable_to_non_nullable
              as int,
      sellerName: null == sellerName
          ? _value.sellerName
          : sellerName // ignore: cast_nullable_to_non_nullable
              as String,
      sellerImage: null == sellerImage
          ? _value.sellerImage
          : sellerImage // ignore: cast_nullable_to_non_nullable
              as String,
      hasBranches: null == hasBranches
          ? _value.hasBranches
          : hasBranches // ignore: cast_nullable_to_non_nullable
              as bool,
      subTotal: null == subTotal
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as num,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<InstoreCartItemModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InstoreCartModelCopyWith<$Res>
    implements $InstoreCartModelCopyWith<$Res> {
  factory _$$_InstoreCartModelCopyWith(
          _$_InstoreCartModel value, $Res Function(_$_InstoreCartModel) then) =
      __$$_InstoreCartModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'seller_id') int sellerId,
      @JsonKey(name: 'seller_name') String sellerName,
      @JsonKey(name: 'seller_image') String sellerImage,
      @JsonKey(name: 'has_branches') bool hasBranches,
      @JsonKey(name: 'sub_total') num subTotal,
      List<InstoreCartItemModel> items});
}

/// @nodoc
class __$$_InstoreCartModelCopyWithImpl<$Res>
    extends _$InstoreCartModelCopyWithImpl<$Res, _$_InstoreCartModel>
    implements _$$_InstoreCartModelCopyWith<$Res> {
  __$$_InstoreCartModelCopyWithImpl(
      _$_InstoreCartModel _value, $Res Function(_$_InstoreCartModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sellerId = null,
    Object? sellerName = null,
    Object? sellerImage = null,
    Object? hasBranches = null,
    Object? subTotal = null,
    Object? items = null,
  }) {
    return _then(_$_InstoreCartModel(
      sellerId: null == sellerId
          ? _value.sellerId
          : sellerId // ignore: cast_nullable_to_non_nullable
              as int,
      sellerName: null == sellerName
          ? _value.sellerName
          : sellerName // ignore: cast_nullable_to_non_nullable
              as String,
      sellerImage: null == sellerImage
          ? _value.sellerImage
          : sellerImage // ignore: cast_nullable_to_non_nullable
              as String,
      hasBranches: null == hasBranches
          ? _value.hasBranches
          : hasBranches // ignore: cast_nullable_to_non_nullable
              as bool,
      subTotal: null == subTotal
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as num,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<InstoreCartItemModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_InstoreCartModel implements _InstoreCartModel {
  const _$_InstoreCartModel(
      {@JsonKey(name: 'seller_id') required this.sellerId,
      @JsonKey(name: 'seller_name') this.sellerName = '',
      @JsonKey(name: 'seller_image') this.sellerImage = '',
      @JsonKey(name: 'has_branches') this.hasBranches = false,
      @JsonKey(name: 'sub_total') required this.subTotal,
      required final List<InstoreCartItemModel> items})
      : _items = items;

  factory _$_InstoreCartModel.fromJson(Map<String, dynamic> json) =>
      _$$_InstoreCartModelFromJson(json);

  @override
  @JsonKey(name: 'seller_id')
  final int sellerId;
  @override
  @JsonKey(name: 'seller_name')
  final String sellerName;
  @override
  @JsonKey(name: 'seller_image')
  final String sellerImage;
  @override
  @JsonKey(name: 'has_branches')
  final bool hasBranches;
  @override
  @JsonKey(name: 'sub_total')
  final num subTotal;
  final List<InstoreCartItemModel> _items;
  @override
  List<InstoreCartItemModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'InstoreCartModel(sellerId: $sellerId, sellerName: $sellerName, sellerImage: $sellerImage, hasBranches: $hasBranches, subTotal: $subTotal, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InstoreCartModel &&
            (identical(other.sellerId, sellerId) ||
                other.sellerId == sellerId) &&
            (identical(other.sellerName, sellerName) ||
                other.sellerName == sellerName) &&
            (identical(other.sellerImage, sellerImage) ||
                other.sellerImage == sellerImage) &&
            (identical(other.hasBranches, hasBranches) ||
                other.hasBranches == hasBranches) &&
            (identical(other.subTotal, subTotal) ||
                other.subTotal == subTotal) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      sellerId,
      sellerName,
      sellerImage,
      hasBranches,
      subTotal,
      const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InstoreCartModelCopyWith<_$_InstoreCartModel> get copyWith =>
      __$$_InstoreCartModelCopyWithImpl<_$_InstoreCartModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InstoreCartModelToJson(
      this,
    );
  }
}

abstract class _InstoreCartModel implements InstoreCartModel {
  const factory _InstoreCartModel(
      {@JsonKey(name: 'seller_id') required final int sellerId,
      @JsonKey(name: 'seller_name') final String sellerName,
      @JsonKey(name: 'seller_image') final String sellerImage,
      @JsonKey(name: 'has_branches') final bool hasBranches,
      @JsonKey(name: 'sub_total') required final num subTotal,
      required final List<InstoreCartItemModel> items}) = _$_InstoreCartModel;

  factory _InstoreCartModel.fromJson(Map<String, dynamic> json) =
      _$_InstoreCartModel.fromJson;

  @override
  @JsonKey(name: 'seller_id')
  int get sellerId;
  @override
  @JsonKey(name: 'seller_name')
  String get sellerName;
  @override
  @JsonKey(name: 'seller_image')
  String get sellerImage;
  @override
  @JsonKey(name: 'has_branches')
  bool get hasBranches;
  @override
  @JsonKey(name: 'sub_total')
  num get subTotal;
  @override
  List<InstoreCartItemModel> get items;
  @override
  @JsonKey(ignore: true)
  _$$_InstoreCartModelCopyWith<_$_InstoreCartModel> get copyWith =>
      throw _privateConstructorUsedError;
}
