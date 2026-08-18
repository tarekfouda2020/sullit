// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pharmacy_order_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PharmacyOrderItemModel _$PharmacyOrderItemModelFromJson(
    Map<String, dynamic> json) {
  return _PharmacyOrderItemModel.fromJson(json);
}

/// @nodoc
mixin _$PharmacyOrderItemModel {
  int? get id => throw _privateConstructorUsedError;
  String? get variation => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'sold_by_type')
  String? get soldByType => throw _privateConstructorUsedError;
  @JsonKey(name: 'sold_by_name')
  String? get soldByName => throw _privateConstructorUsedError;
  @JsonKey(name: 'available_return_qty')
  int? get availableReturnQty => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_type')
  String? get deliveryType => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  String? get tax => throw _privateConstructorUsedError;
  @JsonKey(name: 'vip_offer_discount')
  String? get vipOfferDiscount => throw _privateConstructorUsedError;
  @JsonKey(name: 'shareholder_discount')
  String? get shareholderDiscount => throw _privateConstructorUsedError;
  ProductModel? get product => throw _privateConstructorUsedError;
  @JsonKey(name: 'review_is_available')
  bool? get reviewIsAvailable => throw _privateConstructorUsedError;
  @JsonKey(name: 'msg_cant_review')
  String? get msgCantReview => throw _privateConstructorUsedError;
  ReviewsModel? get review => throw _privateConstructorUsedError;
  @JsonKey(name: 'shipped_by')
  String? get shippedBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'picker_notes')
  String? get pickerNotes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PharmacyOrderItemModelCopyWith<PharmacyOrderItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PharmacyOrderItemModelCopyWith<$Res> {
  factory $PharmacyOrderItemModelCopyWith(PharmacyOrderItemModel value,
          $Res Function(PharmacyOrderItemModel) then) =
      _$PharmacyOrderItemModelCopyWithImpl<$Res, PharmacyOrderItemModel>;
  @useResult
  $Res call(
      {int? id,
      String? variation,
      int? quantity,
      @JsonKey(name: 'sold_by_type') String? soldByType,
      @JsonKey(name: 'sold_by_name') String? soldByName,
      @JsonKey(name: 'available_return_qty') int? availableReturnQty,
      @JsonKey(name: 'delivery_type') String? deliveryType,
      String? price,
      String? tax,
      @JsonKey(name: 'vip_offer_discount') String? vipOfferDiscount,
      @JsonKey(name: 'shareholder_discount') String? shareholderDiscount,
      ProductModel? product,
      @JsonKey(name: 'review_is_available') bool? reviewIsAvailable,
      @JsonKey(name: 'msg_cant_review') String? msgCantReview,
      ReviewsModel? review,
      @JsonKey(name: 'shipped_by') String? shippedBy,
      @JsonKey(name: 'picker_notes') String? pickerNotes});

  $ProductModelCopyWith<$Res>? get product;
  $ReviewsModelCopyWith<$Res>? get review;
}

/// @nodoc
class _$PharmacyOrderItemModelCopyWithImpl<$Res,
        $Val extends PharmacyOrderItemModel>
    implements $PharmacyOrderItemModelCopyWith<$Res> {
  _$PharmacyOrderItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? variation = freezed,
    Object? quantity = freezed,
    Object? soldByType = freezed,
    Object? soldByName = freezed,
    Object? availableReturnQty = freezed,
    Object? deliveryType = freezed,
    Object? price = freezed,
    Object? tax = freezed,
    Object? vipOfferDiscount = freezed,
    Object? shareholderDiscount = freezed,
    Object? product = freezed,
    Object? reviewIsAvailable = freezed,
    Object? msgCantReview = freezed,
    Object? review = freezed,
    Object? shippedBy = freezed,
    Object? pickerNotes = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      variation: freezed == variation
          ? _value.variation
          : variation // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      soldByType: freezed == soldByType
          ? _value.soldByType
          : soldByType // ignore: cast_nullable_to_non_nullable
              as String?,
      soldByName: freezed == soldByName
          ? _value.soldByName
          : soldByName // ignore: cast_nullable_to_non_nullable
              as String?,
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
      vipOfferDiscount: freezed == vipOfferDiscount
          ? _value.vipOfferDiscount
          : vipOfferDiscount // ignore: cast_nullable_to_non_nullable
              as String?,
      shareholderDiscount: freezed == shareholderDiscount
          ? _value.shareholderDiscount
          : shareholderDiscount // ignore: cast_nullable_to_non_nullable
              as String?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel?,
      reviewIsAvailable: freezed == reviewIsAvailable
          ? _value.reviewIsAvailable
          : reviewIsAvailable // ignore: cast_nullable_to_non_nullable
              as bool?,
      msgCantReview: freezed == msgCantReview
          ? _value.msgCantReview
          : msgCantReview // ignore: cast_nullable_to_non_nullable
              as String?,
      review: freezed == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as ReviewsModel?,
      shippedBy: freezed == shippedBy
          ? _value.shippedBy
          : shippedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      pickerNotes: freezed == pickerNotes
          ? _value.pickerNotes
          : pickerNotes // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_PharmacyOrderItemModelCopyWith<$Res>
    implements $PharmacyOrderItemModelCopyWith<$Res> {
  factory _$$_PharmacyOrderItemModelCopyWith(_$_PharmacyOrderItemModel value,
          $Res Function(_$_PharmacyOrderItemModel) then) =
      __$$_PharmacyOrderItemModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? variation,
      int? quantity,
      @JsonKey(name: 'sold_by_type') String? soldByType,
      @JsonKey(name: 'sold_by_name') String? soldByName,
      @JsonKey(name: 'available_return_qty') int? availableReturnQty,
      @JsonKey(name: 'delivery_type') String? deliveryType,
      String? price,
      String? tax,
      @JsonKey(name: 'vip_offer_discount') String? vipOfferDiscount,
      @JsonKey(name: 'shareholder_discount') String? shareholderDiscount,
      ProductModel? product,
      @JsonKey(name: 'review_is_available') bool? reviewIsAvailable,
      @JsonKey(name: 'msg_cant_review') String? msgCantReview,
      ReviewsModel? review,
      @JsonKey(name: 'shipped_by') String? shippedBy,
      @JsonKey(name: 'picker_notes') String? pickerNotes});

  @override
  $ProductModelCopyWith<$Res>? get product;
  @override
  $ReviewsModelCopyWith<$Res>? get review;
}

/// @nodoc
class __$$_PharmacyOrderItemModelCopyWithImpl<$Res>
    extends _$PharmacyOrderItemModelCopyWithImpl<$Res,
        _$_PharmacyOrderItemModel>
    implements _$$_PharmacyOrderItemModelCopyWith<$Res> {
  __$$_PharmacyOrderItemModelCopyWithImpl(_$_PharmacyOrderItemModel _value,
      $Res Function(_$_PharmacyOrderItemModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? variation = freezed,
    Object? quantity = freezed,
    Object? soldByType = freezed,
    Object? soldByName = freezed,
    Object? availableReturnQty = freezed,
    Object? deliveryType = freezed,
    Object? price = freezed,
    Object? tax = freezed,
    Object? vipOfferDiscount = freezed,
    Object? shareholderDiscount = freezed,
    Object? product = freezed,
    Object? reviewIsAvailable = freezed,
    Object? msgCantReview = freezed,
    Object? review = freezed,
    Object? shippedBy = freezed,
    Object? pickerNotes = freezed,
  }) {
    return _then(_$_PharmacyOrderItemModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      variation: freezed == variation
          ? _value.variation
          : variation // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      soldByType: freezed == soldByType
          ? _value.soldByType
          : soldByType // ignore: cast_nullable_to_non_nullable
              as String?,
      soldByName: freezed == soldByName
          ? _value.soldByName
          : soldByName // ignore: cast_nullable_to_non_nullable
              as String?,
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
      vipOfferDiscount: freezed == vipOfferDiscount
          ? _value.vipOfferDiscount
          : vipOfferDiscount // ignore: cast_nullable_to_non_nullable
              as String?,
      shareholderDiscount: freezed == shareholderDiscount
          ? _value.shareholderDiscount
          : shareholderDiscount // ignore: cast_nullable_to_non_nullable
              as String?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel?,
      reviewIsAvailable: freezed == reviewIsAvailable
          ? _value.reviewIsAvailable
          : reviewIsAvailable // ignore: cast_nullable_to_non_nullable
              as bool?,
      msgCantReview: freezed == msgCantReview
          ? _value.msgCantReview
          : msgCantReview // ignore: cast_nullable_to_non_nullable
              as String?,
      review: freezed == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as ReviewsModel?,
      shippedBy: freezed == shippedBy
          ? _value.shippedBy
          : shippedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      pickerNotes: freezed == pickerNotes
          ? _value.pickerNotes
          : pickerNotes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_PharmacyOrderItemModel extends _PharmacyOrderItemModel {
  const _$_PharmacyOrderItemModel(
      {this.id,
      this.variation,
      this.quantity,
      @JsonKey(name: 'sold_by_type') this.soldByType,
      @JsonKey(name: 'sold_by_name') this.soldByName,
      @JsonKey(name: 'available_return_qty') this.availableReturnQty,
      @JsonKey(name: 'delivery_type') this.deliveryType,
      this.price,
      this.tax,
      @JsonKey(name: 'vip_offer_discount') this.vipOfferDiscount,
      @JsonKey(name: 'shareholder_discount') this.shareholderDiscount,
      this.product,
      @JsonKey(name: 'review_is_available') this.reviewIsAvailable,
      @JsonKey(name: 'msg_cant_review') this.msgCantReview,
      this.review,
      @JsonKey(name: 'shipped_by') this.shippedBy,
      @JsonKey(name: 'picker_notes') this.pickerNotes})
      : super._();

  factory _$_PharmacyOrderItemModel.fromJson(Map<String, dynamic> json) =>
      _$$_PharmacyOrderItemModelFromJson(json);

  @override
  final int? id;
  @override
  final String? variation;
  @override
  final int? quantity;
  @override
  @JsonKey(name: 'sold_by_type')
  final String? soldByType;
  @override
  @JsonKey(name: 'sold_by_name')
  final String? soldByName;
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
  @JsonKey(name: 'vip_offer_discount')
  final String? vipOfferDiscount;
  @override
  @JsonKey(name: 'shareholder_discount')
  final String? shareholderDiscount;
  @override
  final ProductModel? product;
  @override
  @JsonKey(name: 'review_is_available')
  final bool? reviewIsAvailable;
  @override
  @JsonKey(name: 'msg_cant_review')
  final String? msgCantReview;
  @override
  final ReviewsModel? review;
  @override
  @JsonKey(name: 'shipped_by')
  final String? shippedBy;
  @override
  @JsonKey(name: 'picker_notes')
  final String? pickerNotes;

  @override
  String toString() {
    return 'PharmacyOrderItemModel(id: $id, variation: $variation, quantity: $quantity, soldByType: $soldByType, soldByName: $soldByName, availableReturnQty: $availableReturnQty, deliveryType: $deliveryType, price: $price, tax: $tax, vipOfferDiscount: $vipOfferDiscount, shareholderDiscount: $shareholderDiscount, product: $product, reviewIsAvailable: $reviewIsAvailable, msgCantReview: $msgCantReview, review: $review, shippedBy: $shippedBy, pickerNotes: $pickerNotes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PharmacyOrderItemModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.variation, variation) ||
                other.variation == variation) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.soldByType, soldByType) ||
                other.soldByType == soldByType) &&
            (identical(other.soldByName, soldByName) ||
                other.soldByName == soldByName) &&
            (identical(other.availableReturnQty, availableReturnQty) ||
                other.availableReturnQty == availableReturnQty) &&
            (identical(other.deliveryType, deliveryType) ||
                other.deliveryType == deliveryType) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.tax, tax) || other.tax == tax) &&
            (identical(other.vipOfferDiscount, vipOfferDiscount) ||
                other.vipOfferDiscount == vipOfferDiscount) &&
            (identical(other.shareholderDiscount, shareholderDiscount) ||
                other.shareholderDiscount == shareholderDiscount) &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.reviewIsAvailable, reviewIsAvailable) ||
                other.reviewIsAvailable == reviewIsAvailable) &&
            (identical(other.msgCantReview, msgCantReview) ||
                other.msgCantReview == msgCantReview) &&
            (identical(other.review, review) || other.review == review) &&
            (identical(other.shippedBy, shippedBy) ||
                other.shippedBy == shippedBy) &&
            (identical(other.pickerNotes, pickerNotes) ||
                other.pickerNotes == pickerNotes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      variation,
      quantity,
      soldByType,
      soldByName,
      availableReturnQty,
      deliveryType,
      price,
      tax,
      vipOfferDiscount,
      shareholderDiscount,
      product,
      reviewIsAvailable,
      msgCantReview,
      review,
      shippedBy,
      pickerNotes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PharmacyOrderItemModelCopyWith<_$_PharmacyOrderItemModel> get copyWith =>
      __$$_PharmacyOrderItemModelCopyWithImpl<_$_PharmacyOrderItemModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PharmacyOrderItemModelToJson(
      this,
    );
  }
}

abstract class _PharmacyOrderItemModel extends PharmacyOrderItemModel {
  const factory _PharmacyOrderItemModel(
      {final int? id,
      final String? variation,
      final int? quantity,
      @JsonKey(name: 'sold_by_type') final String? soldByType,
      @JsonKey(name: 'sold_by_name') final String? soldByName,
      @JsonKey(name: 'available_return_qty') final int? availableReturnQty,
      @JsonKey(name: 'delivery_type') final String? deliveryType,
      final String? price,
      final String? tax,
      @JsonKey(name: 'vip_offer_discount') final String? vipOfferDiscount,
      @JsonKey(name: 'shareholder_discount') final String? shareholderDiscount,
      final ProductModel? product,
      @JsonKey(name: 'review_is_available') final bool? reviewIsAvailable,
      @JsonKey(name: 'msg_cant_review') final String? msgCantReview,
      final ReviewsModel? review,
      @JsonKey(name: 'shipped_by') final String? shippedBy,
      @JsonKey(name: 'picker_notes')
      final String? pickerNotes}) = _$_PharmacyOrderItemModel;
  const _PharmacyOrderItemModel._() : super._();

  factory _PharmacyOrderItemModel.fromJson(Map<String, dynamic> json) =
      _$_PharmacyOrderItemModel.fromJson;

  @override
  int? get id;
  @override
  String? get variation;
  @override
  int? get quantity;
  @override
  @JsonKey(name: 'sold_by_type')
  String? get soldByType;
  @override
  @JsonKey(name: 'sold_by_name')
  String? get soldByName;
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
  @JsonKey(name: 'vip_offer_discount')
  String? get vipOfferDiscount;
  @override
  @JsonKey(name: 'shareholder_discount')
  String? get shareholderDiscount;
  @override
  ProductModel? get product;
  @override
  @JsonKey(name: 'review_is_available')
  bool? get reviewIsAvailable;
  @override
  @JsonKey(name: 'msg_cant_review')
  String? get msgCantReview;
  @override
  ReviewsModel? get review;
  @override
  @JsonKey(name: 'shipped_by')
  String? get shippedBy;
  @override
  @JsonKey(name: 'picker_notes')
  String? get pickerNotes;
  @override
  @JsonKey(ignore: true)
  _$$_PharmacyOrderItemModelCopyWith<_$_PharmacyOrderItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}
