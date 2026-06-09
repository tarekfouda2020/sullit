// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pharmacy_confirm_order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PharmacyConfirmOrderModel _$PharmacyConfirmOrderModelFromJson(
    Map<String, dynamic> json) {
  return _PharmacyConfirmOrderModel.fromJson(json);
}

/// @nodoc
mixin _$PharmacyConfirmOrderModel {
  int? get id => throw _privateConstructorUsedError;
  ProductModel? get product => throw _privateConstructorUsedError;
  String? get variation => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'available_return_qty')
  int? get availableReturnQty => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_type')
  String? get deliveryType => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  String? get tax => throw _privateConstructorUsedError;
  @JsonKey(name: 'review_is_available')
  bool? get isAvailableReview => throw _privateConstructorUsedError;
  @JsonKey(name: 'msg_cant_review')
  String? get msgCantReview => throw _privateConstructorUsedError;
  @JsonKey(name: 'shipped_by')
  String? get shippedBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'sold_by_type')
  String? get soldByType => throw _privateConstructorUsedError;
  @JsonKey(name: 'sold_by_name')
  String? get soldBy => throw _privateConstructorUsedError;
  ReviewsModel? get review => throw _privateConstructorUsedError;
  @JsonKey(name: 'transaction_url')
  String? get transactionUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PharmacyConfirmOrderModelCopyWith<PharmacyConfirmOrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PharmacyConfirmOrderModelCopyWith<$Res> {
  factory $PharmacyConfirmOrderModelCopyWith(PharmacyConfirmOrderModel value,
          $Res Function(PharmacyConfirmOrderModel) then) =
      _$PharmacyConfirmOrderModelCopyWithImpl<$Res, PharmacyConfirmOrderModel>;
  @useResult
  $Res call(
      {int? id,
      ProductModel? product,
      String? variation,
      int? quantity,
      @JsonKey(name: 'available_return_qty') int? availableReturnQty,
      @JsonKey(name: 'delivery_type') String? deliveryType,
      String? price,
      String? tax,
      @JsonKey(name: 'review_is_available') bool? isAvailableReview,
      @JsonKey(name: 'msg_cant_review') String? msgCantReview,
      @JsonKey(name: 'shipped_by') String? shippedBy,
      @JsonKey(name: 'sold_by_type') String? soldByType,
      @JsonKey(name: 'sold_by_name') String? soldBy,
      ReviewsModel? review,
      @JsonKey(name: 'transaction_url') String? transactionUrl});

  $ProductModelCopyWith<$Res>? get product;
  $ReviewsModelCopyWith<$Res>? get review;
}

/// @nodoc
class _$PharmacyConfirmOrderModelCopyWithImpl<$Res,
        $Val extends PharmacyConfirmOrderModel>
    implements $PharmacyConfirmOrderModelCopyWith<$Res> {
  _$PharmacyConfirmOrderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? product = freezed,
    Object? variation = freezed,
    Object? quantity = freezed,
    Object? availableReturnQty = freezed,
    Object? deliveryType = freezed,
    Object? price = freezed,
    Object? tax = freezed,
    Object? isAvailableReview = freezed,
    Object? msgCantReview = freezed,
    Object? shippedBy = freezed,
    Object? soldByType = freezed,
    Object? soldBy = freezed,
    Object? review = freezed,
    Object? transactionUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel?,
      variation: freezed == variation
          ? _value.variation
          : variation // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      availableReturnQty: freezed == availableReturnQty
          ? _value.availableReturnQty
          : availableReturnQty // ignore: cast_nullable_to_non_nullable
              as int?,
      deliveryType: freezed == deliveryType
          ? _value.deliveryType
          : deliveryType // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      tax: freezed == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as String?,
      isAvailableReview: freezed == isAvailableReview
          ? _value.isAvailableReview
          : isAvailableReview // ignore: cast_nullable_to_non_nullable
              as bool?,
      msgCantReview: freezed == msgCantReview
          ? _value.msgCantReview
          : msgCantReview // ignore: cast_nullable_to_non_nullable
              as String?,
      shippedBy: freezed == shippedBy
          ? _value.shippedBy
          : shippedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      soldByType: freezed == soldByType
          ? _value.soldByType
          : soldByType // ignore: cast_nullable_to_non_nullable
              as String?,
      soldBy: freezed == soldBy
          ? _value.soldBy
          : soldBy // ignore: cast_nullable_to_non_nullable
              as String?,
      review: freezed == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as ReviewsModel?,
      transactionUrl: freezed == transactionUrl
          ? _value.transactionUrl
          : transactionUrl // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$_PharmacyConfirmOrderModelCopyWith<$Res>
    implements $PharmacyConfirmOrderModelCopyWith<$Res> {
  factory _$$_PharmacyConfirmOrderModelCopyWith(
          _$_PharmacyConfirmOrderModel value,
          $Res Function(_$_PharmacyConfirmOrderModel) then) =
      __$$_PharmacyConfirmOrderModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      ProductModel? product,
      String? variation,
      int? quantity,
      @JsonKey(name: 'available_return_qty') int? availableReturnQty,
      @JsonKey(name: 'delivery_type') String? deliveryType,
      String? price,
      String? tax,
      @JsonKey(name: 'review_is_available') bool? isAvailableReview,
      @JsonKey(name: 'msg_cant_review') String? msgCantReview,
      @JsonKey(name: 'shipped_by') String? shippedBy,
      @JsonKey(name: 'sold_by_type') String? soldByType,
      @JsonKey(name: 'sold_by_name') String? soldBy,
      ReviewsModel? review,
      @JsonKey(name: 'transaction_url') String? transactionUrl});

  @override
  $ProductModelCopyWith<$Res>? get product;
  @override
  $ReviewsModelCopyWith<$Res>? get review;
}

/// @nodoc
class __$$_PharmacyConfirmOrderModelCopyWithImpl<$Res>
    extends _$PharmacyConfirmOrderModelCopyWithImpl<$Res,
        _$_PharmacyConfirmOrderModel>
    implements _$$_PharmacyConfirmOrderModelCopyWith<$Res> {
  __$$_PharmacyConfirmOrderModelCopyWithImpl(
      _$_PharmacyConfirmOrderModel _value,
      $Res Function(_$_PharmacyConfirmOrderModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? product = freezed,
    Object? variation = freezed,
    Object? quantity = freezed,
    Object? availableReturnQty = freezed,
    Object? deliveryType = freezed,
    Object? price = freezed,
    Object? tax = freezed,
    Object? isAvailableReview = freezed,
    Object? msgCantReview = freezed,
    Object? shippedBy = freezed,
    Object? soldByType = freezed,
    Object? soldBy = freezed,
    Object? review = freezed,
    Object? transactionUrl = freezed,
  }) {
    return _then(_$_PharmacyConfirmOrderModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel?,
      variation: freezed == variation
          ? _value.variation
          : variation // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      availableReturnQty: freezed == availableReturnQty
          ? _value.availableReturnQty
          : availableReturnQty // ignore: cast_nullable_to_non_nullable
              as int?,
      deliveryType: freezed == deliveryType
          ? _value.deliveryType
          : deliveryType // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      tax: freezed == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as String?,
      isAvailableReview: freezed == isAvailableReview
          ? _value.isAvailableReview
          : isAvailableReview // ignore: cast_nullable_to_non_nullable
              as bool?,
      msgCantReview: freezed == msgCantReview
          ? _value.msgCantReview
          : msgCantReview // ignore: cast_nullable_to_non_nullable
              as String?,
      shippedBy: freezed == shippedBy
          ? _value.shippedBy
          : shippedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      soldByType: freezed == soldByType
          ? _value.soldByType
          : soldByType // ignore: cast_nullable_to_non_nullable
              as String?,
      soldBy: freezed == soldBy
          ? _value.soldBy
          : soldBy // ignore: cast_nullable_to_non_nullable
              as String?,
      review: freezed == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as ReviewsModel?,
      transactionUrl: freezed == transactionUrl
          ? _value.transactionUrl
          : transactionUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_PharmacyConfirmOrderModel extends _PharmacyConfirmOrderModel {
  const _$_PharmacyConfirmOrderModel(
      {this.id,
      this.product,
      this.variation,
      this.quantity,
      @JsonKey(name: 'available_return_qty') this.availableReturnQty,
      @JsonKey(name: 'delivery_type') this.deliveryType,
      this.price,
      this.tax,
      @JsonKey(name: 'review_is_available') this.isAvailableReview,
      @JsonKey(name: 'msg_cant_review') this.msgCantReview,
      @JsonKey(name: 'shipped_by') this.shippedBy,
      @JsonKey(name: 'sold_by_type') this.soldByType,
      @JsonKey(name: 'sold_by_name') this.soldBy,
      this.review,
      @JsonKey(name: 'transaction_url') this.transactionUrl})
      : super._();

  factory _$_PharmacyConfirmOrderModel.fromJson(Map<String, dynamic> json) =>
      _$$_PharmacyConfirmOrderModelFromJson(json);

  @override
  final int? id;
  @override
  final ProductModel? product;
  @override
  final String? variation;
  @override
  final int? quantity;
  @override
  @JsonKey(name: 'available_return_qty')
  final int? availableReturnQty;
  @override
  @JsonKey(name: 'delivery_type')
  final String? deliveryType;
  @override
  final String? price;
  @override
  final String? tax;
  @override
  @JsonKey(name: 'review_is_available')
  final bool? isAvailableReview;
  @override
  @JsonKey(name: 'msg_cant_review')
  final String? msgCantReview;
  @override
  @JsonKey(name: 'shipped_by')
  final String? shippedBy;
  @override
  @JsonKey(name: 'sold_by_type')
  final String? soldByType;
  @override
  @JsonKey(name: 'sold_by_name')
  final String? soldBy;
  @override
  final ReviewsModel? review;
  @override
  @JsonKey(name: 'transaction_url')
  final String? transactionUrl;

  @override
  String toString() {
    return 'PharmacyConfirmOrderModel(id: $id, product: $product, variation: $variation, quantity: $quantity, availableReturnQty: $availableReturnQty, deliveryType: $deliveryType, price: $price, tax: $tax, isAvailableReview: $isAvailableReview, msgCantReview: $msgCantReview, shippedBy: $shippedBy, soldByType: $soldByType, soldBy: $soldBy, review: $review, transactionUrl: $transactionUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PharmacyConfirmOrderModel &&
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
            (identical(other.shippedBy, shippedBy) ||
                other.shippedBy == shippedBy) &&
            (identical(other.soldByType, soldByType) ||
                other.soldByType == soldByType) &&
            (identical(other.soldBy, soldBy) || other.soldBy == soldBy) &&
            (identical(other.review, review) || other.review == review) &&
            (identical(other.transactionUrl, transactionUrl) ||
                other.transactionUrl == transactionUrl));
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
      shippedBy,
      soldByType,
      soldBy,
      review,
      transactionUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PharmacyConfirmOrderModelCopyWith<_$_PharmacyConfirmOrderModel>
      get copyWith => __$$_PharmacyConfirmOrderModelCopyWithImpl<
          _$_PharmacyConfirmOrderModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PharmacyConfirmOrderModelToJson(
      this,
    );
  }
}

abstract class _PharmacyConfirmOrderModel extends PharmacyConfirmOrderModel {
  const factory _PharmacyConfirmOrderModel(
          {final int? id,
          final ProductModel? product,
          final String? variation,
          final int? quantity,
          @JsonKey(name: 'available_return_qty') final int? availableReturnQty,
          @JsonKey(name: 'delivery_type') final String? deliveryType,
          final String? price,
          final String? tax,
          @JsonKey(name: 'review_is_available') final bool? isAvailableReview,
          @JsonKey(name: 'msg_cant_review') final String? msgCantReview,
          @JsonKey(name: 'shipped_by') final String? shippedBy,
          @JsonKey(name: 'sold_by_type') final String? soldByType,
          @JsonKey(name: 'sold_by_name') final String? soldBy,
          final ReviewsModel? review,
          @JsonKey(name: 'transaction_url') final String? transactionUrl}) =
      _$_PharmacyConfirmOrderModel;
  const _PharmacyConfirmOrderModel._() : super._();

  factory _PharmacyConfirmOrderModel.fromJson(Map<String, dynamic> json) =
      _$_PharmacyConfirmOrderModel.fromJson;

  @override
  int? get id;
  @override
  ProductModel? get product;
  @override
  String? get variation;
  @override
  int? get quantity;
  @override
  @JsonKey(name: 'available_return_qty')
  int? get availableReturnQty;
  @override
  @JsonKey(name: 'delivery_type')
  String? get deliveryType;
  @override
  String? get price;
  @override
  String? get tax;
  @override
  @JsonKey(name: 'review_is_available')
  bool? get isAvailableReview;
  @override
  @JsonKey(name: 'msg_cant_review')
  String? get msgCantReview;
  @override
  @JsonKey(name: 'shipped_by')
  String? get shippedBy;
  @override
  @JsonKey(name: 'sold_by_type')
  String? get soldByType;
  @override
  @JsonKey(name: 'sold_by_name')
  String? get soldBy;
  @override
  ReviewsModel? get review;
  @override
  @JsonKey(name: 'transaction_url')
  String? get transactionUrl;
  @override
  @JsonKey(ignore: true)
  _$$_PharmacyConfirmOrderModelCopyWith<_$_PharmacyConfirmOrderModel>
      get copyWith => throw _privateConstructorUsedError;
}
