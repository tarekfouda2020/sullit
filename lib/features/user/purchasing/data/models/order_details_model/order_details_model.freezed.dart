// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderDetailsModel _$OrderDetailsModelFromJson(Map<String, dynamic> json) {
  return _OrderDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$OrderDetailsModel {
  int get id => throw _privateConstructorUsedError;
  ProductModel? get product => throw _privateConstructorUsedError;
  String get variation => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'available_return_qty')
  int get availableReturnQty => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_type')
  String get deliveryType => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  String? get tax => throw _privateConstructorUsedError;
  @JsonKey(name: 'review_is_available')
  bool get isAvailableReview => throw _privateConstructorUsedError;
  @JsonKey(name: 'msg_cant_review')
  String get msgCantReview => throw _privateConstructorUsedError;
  ReviewsModel? get review => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderDetailsModelCopyWith<OrderDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDetailsModelCopyWith<$Res> {
  factory $OrderDetailsModelCopyWith(
          OrderDetailsModel value, $Res Function(OrderDetailsModel) then) =
      _$OrderDetailsModelCopyWithImpl<$Res, OrderDetailsModel>;
  @useResult
  $Res call(
      {int id,
      ProductModel? product,
      String variation,
      int quantity,
      @JsonKey(name: 'available_return_qty') int availableReturnQty,
      @JsonKey(name: 'delivery_type') String deliveryType,
      String price,
      String? tax,
      @JsonKey(name: 'review_is_available') bool isAvailableReview,
      @JsonKey(name: 'msg_cant_review') String msgCantReview,
      ReviewsModel? review});

  $ProductModelCopyWith<$Res>? get product;
  $ReviewsModelCopyWith<$Res>? get review;
}

/// @nodoc
class _$OrderDetailsModelCopyWithImpl<$Res, $Val extends OrderDetailsModel>
    implements $OrderDetailsModelCopyWith<$Res> {
  _$OrderDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? product = freezed,
    Object? variation = null,
    Object? quantity = null,
    Object? availableReturnQty = null,
    Object? deliveryType = null,
    Object? price = null,
    Object? tax = freezed,
    Object? isAvailableReview = null,
    Object? msgCantReview = null,
    Object? review = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel?,
      variation: null == variation
          ? _value.variation
          : variation // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      availableReturnQty: null == availableReturnQty
          ? _value.availableReturnQty
          : availableReturnQty // ignore: cast_nullable_to_non_nullable
              as int,
      deliveryType: null == deliveryType
          ? _value.deliveryType
          : deliveryType // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      tax: freezed == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as String?,
      isAvailableReview: null == isAvailableReview
          ? _value.isAvailableReview
          : isAvailableReview // ignore: cast_nullable_to_non_nullable
              as bool,
      msgCantReview: null == msgCantReview
          ? _value.msgCantReview
          : msgCantReview // ignore: cast_nullable_to_non_nullable
              as String,
      review: freezed == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as ReviewsModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductModelCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $ProductModelCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReviewsModelCopyWith<$Res>? get review {
    if (_value.review == null) {
      return null;
    }

    return $ReviewsModelCopyWith<$Res>(_value.review!, (value) {
      return _then(_value.copyWith(review: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OrderDetailsModelCopyWith<$Res>
    implements $OrderDetailsModelCopyWith<$Res> {
  factory _$$_OrderDetailsModelCopyWith(_$_OrderDetailsModel value,
          $Res Function(_$_OrderDetailsModel) then) =
      __$$_OrderDetailsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      ProductModel? product,
      String variation,
      int quantity,
      @JsonKey(name: 'available_return_qty') int availableReturnQty,
      @JsonKey(name: 'delivery_type') String deliveryType,
      String price,
      String? tax,
      @JsonKey(name: 'review_is_available') bool isAvailableReview,
      @JsonKey(name: 'msg_cant_review') String msgCantReview,
      ReviewsModel? review});

  @override
  $ProductModelCopyWith<$Res>? get product;
  @override
  $ReviewsModelCopyWith<$Res>? get review;
}

/// @nodoc
class __$$_OrderDetailsModelCopyWithImpl<$Res>
    extends _$OrderDetailsModelCopyWithImpl<$Res, _$_OrderDetailsModel>
    implements _$$_OrderDetailsModelCopyWith<$Res> {
  __$$_OrderDetailsModelCopyWithImpl(
      _$_OrderDetailsModel _value, $Res Function(_$_OrderDetailsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? product = freezed,
    Object? variation = null,
    Object? quantity = null,
    Object? availableReturnQty = null,
    Object? deliveryType = null,
    Object? price = null,
    Object? tax = freezed,
    Object? isAvailableReview = null,
    Object? msgCantReview = null,
    Object? review = freezed,
  }) {
    return _then(_$_OrderDetailsModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel?,
      variation: null == variation
          ? _value.variation
          : variation // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      availableReturnQty: null == availableReturnQty
          ? _value.availableReturnQty
          : availableReturnQty // ignore: cast_nullable_to_non_nullable
              as int,
      deliveryType: null == deliveryType
          ? _value.deliveryType
          : deliveryType // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      tax: freezed == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as String?,
      isAvailableReview: null == isAvailableReview
          ? _value.isAvailableReview
          : isAvailableReview // ignore: cast_nullable_to_non_nullable
              as bool,
      msgCantReview: null == msgCantReview
          ? _value.msgCantReview
          : msgCantReview // ignore: cast_nullable_to_non_nullable
              as String,
      review: freezed == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as ReviewsModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_OrderDetailsModel extends _OrderDetailsModel {
  const _$_OrderDetailsModel(
      {required this.id,
      this.product,
      required this.variation,
      required this.quantity,
      @JsonKey(name: 'available_return_qty') required this.availableReturnQty,
      @JsonKey(name: 'delivery_type') required this.deliveryType,
      required this.price,
      this.tax,
      @JsonKey(name: 'review_is_available') required this.isAvailableReview,
      @JsonKey(name: 'msg_cant_review') required this.msgCantReview,
      this.review})
      : super._();

  factory _$_OrderDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$$_OrderDetailsModelFromJson(json);

  @override
  final int id;
  @override
  final ProductModel? product;
  @override
  final String variation;
  @override
  final int quantity;
  @override
  @JsonKey(name: 'available_return_qty')
  final int availableReturnQty;
  @override
  @JsonKey(name: 'delivery_type')
  final String deliveryType;
  @override
  final String price;
  @override
  final String? tax;
  @override
  @JsonKey(name: 'review_is_available')
  final bool isAvailableReview;
  @override
  @JsonKey(name: 'msg_cant_review')
  final String msgCantReview;
  @override
  final ReviewsModel? review;

  @override
  String toString() {
    return 'OrderDetailsModel(id: $id, product: $product, variation: $variation, quantity: $quantity, availableReturnQty: $availableReturnQty, deliveryType: $deliveryType, price: $price, tax: $tax, isAvailableReview: $isAvailableReview, msgCantReview: $msgCantReview, review: $review)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderDetailsModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.variation, variation) ||
                other.variation == variation) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.availableReturnQty, availableReturnQty) ||
                other.availableReturnQty == availableReturnQty) &&
            (identical(other.deliveryType, deliveryType) ||
                other.deliveryType == deliveryType) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.tax, tax) || other.tax == tax) &&
            (identical(other.isAvailableReview, isAvailableReview) ||
                other.isAvailableReview == isAvailableReview) &&
            (identical(other.msgCantReview, msgCantReview) ||
                other.msgCantReview == msgCantReview) &&
            (identical(other.review, review) || other.review == review));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      product,
      variation,
      quantity,
      availableReturnQty,
      deliveryType,
      price,
      tax,
      isAvailableReview,
      msgCantReview,
      review);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderDetailsModelCopyWith<_$_OrderDetailsModel> get copyWith =>
      __$$_OrderDetailsModelCopyWithImpl<_$_OrderDetailsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderDetailsModelToJson(
      this,
    );
  }
}

abstract class _OrderDetailsModel extends OrderDetailsModel {
  const factory _OrderDetailsModel(
      {required final int id,
      final ProductModel? product,
      required final String variation,
      required final int quantity,
      @JsonKey(name: 'available_return_qty')
      required final int availableReturnQty,
      @JsonKey(name: 'delivery_type') required final String deliveryType,
      required final String price,
      final String? tax,
      @JsonKey(name: 'review_is_available')
      required final bool isAvailableReview,
      @JsonKey(name: 'msg_cant_review') required final String msgCantReview,
      final ReviewsModel? review}) = _$_OrderDetailsModel;
  const _OrderDetailsModel._() : super._();

  factory _OrderDetailsModel.fromJson(Map<String, dynamic> json) =
      _$_OrderDetailsModel.fromJson;

  @override
  int get id;
  @override
  ProductModel? get product;
  @override
  String get variation;
  @override
  int get quantity;
  @override
  @JsonKey(name: 'available_return_qty')
  int get availableReturnQty;
  @override
  @JsonKey(name: 'delivery_type')
  String get deliveryType;
  @override
  String get price;
  @override
  String? get tax;
  @override
  @JsonKey(name: 'review_is_available')
  bool get isAvailableReview;
  @override
  @JsonKey(name: 'msg_cant_review')
  String get msgCantReview;
  @override
  ReviewsModel? get review;
  @override
  @JsonKey(ignore: true)
  _$$_OrderDetailsModelCopyWith<_$_OrderDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
