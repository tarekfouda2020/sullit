// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ai_chat_payload_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AiChatPayloadModel _$AiChatPayloadModelFromJson(Map<String, dynamic> json) {
  return _AiChatPayloadModel.fromJson(json);
}

/// @nodoc
mixin _$AiChatPayloadModel {
  String? get type => throw _privateConstructorUsedError;
  String? get action => throw _privateConstructorUsedError;
  List<AiChatCartItemModel>? get items => throw _privateConstructorUsedError;
  @JsonKey(name: 'sub_total')
  String? get subTotal => throw _privateConstructorUsedError;
  @JsonKey(name: 'calculable_total')
  String? get calculableTotal => throw _privateConstructorUsedError;
  @JsonKey(name: 'currency_symbol')
  String? get currencySymbol => throw _privateConstructorUsedError;
  int? get returned => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'view_all')
  AiChatViewAllModel? get viewAll => throw _privateConstructorUsedError;
  AiChatProductCardModel? get product => throw _privateConstructorUsedError;
  List<AiChatProductCardModel>? get products =>
      throw _privateConstructorUsedError;
  List<AiChatShopCardModel>? get shops => throw _privateConstructorUsedError;
  AiChatShopCardModel? get shop => throw _privateConstructorUsedError;
  List<AiChatBranchModel>? get branches => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_status')
  String? get deliveryStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_status')
  String? get paymentStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'grand_total')
  num? get grandTotal => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_label')
  String? get statusLabel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AiChatPayloadModelCopyWith<AiChatPayloadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AiChatPayloadModelCopyWith<$Res> {
  factory $AiChatPayloadModelCopyWith(
          AiChatPayloadModel value, $Res Function(AiChatPayloadModel) then) =
      _$AiChatPayloadModelCopyWithImpl<$Res, AiChatPayloadModel>;
  @useResult
  $Res call(
      {String? type,
      String? action,
      List<AiChatCartItemModel>? items,
      @JsonKey(name: 'sub_total') String? subTotal,
      @JsonKey(name: 'calculable_total') String? calculableTotal,
      @JsonKey(name: 'currency_symbol') String? currencySymbol,
      int? returned,
      int? total,
      @JsonKey(name: 'view_all') AiChatViewAllModel? viewAll,
      AiChatProductCardModel? product,
      List<AiChatProductCardModel>? products,
      List<AiChatShopCardModel>? shops,
      AiChatShopCardModel? shop,
      List<AiChatBranchModel>? branches,
      int? id,
      String? code,
      @JsonKey(name: 'delivery_status') String? deliveryStatus,
      @JsonKey(name: 'payment_status') String? paymentStatus,
      @JsonKey(name: 'grand_total') num? grandTotal,
      String? status,
      @JsonKey(name: 'status_label') String? statusLabel});

  $AiChatViewAllModelCopyWith<$Res>? get viewAll;
  $AiChatProductCardModelCopyWith<$Res>? get product;
  $AiChatShopCardModelCopyWith<$Res>? get shop;
}

/// @nodoc
class _$AiChatPayloadModelCopyWithImpl<$Res, $Val extends AiChatPayloadModel>
    implements $AiChatPayloadModelCopyWith<$Res> {
  _$AiChatPayloadModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? action = freezed,
    Object? items = freezed,
    Object? subTotal = freezed,
    Object? calculableTotal = freezed,
    Object? currencySymbol = freezed,
    Object? returned = freezed,
    Object? total = freezed,
    Object? viewAll = freezed,
    Object? product = freezed,
    Object? products = freezed,
    Object? shops = freezed,
    Object? shop = freezed,
    Object? branches = freezed,
    Object? id = freezed,
    Object? code = freezed,
    Object? deliveryStatus = freezed,
    Object? paymentStatus = freezed,
    Object? grandTotal = freezed,
    Object? status = freezed,
    Object? statusLabel = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<AiChatCartItemModel>?,
      subTotal: freezed == subTotal
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as String?,
      calculableTotal: freezed == calculableTotal
          ? _value.calculableTotal
          : calculableTotal // ignore: cast_nullable_to_non_nullable
              as String?,
      currencySymbol: freezed == currencySymbol
          ? _value.currencySymbol
          : currencySymbol // ignore: cast_nullable_to_non_nullable
              as String?,
      returned: freezed == returned
          ? _value.returned
          : returned // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      viewAll: freezed == viewAll
          ? _value.viewAll
          : viewAll // ignore: cast_nullable_to_non_nullable
              as AiChatViewAllModel?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as AiChatProductCardModel?,
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<AiChatProductCardModel>?,
      shops: freezed == shops
          ? _value.shops
          : shops // ignore: cast_nullable_to_non_nullable
              as List<AiChatShopCardModel>?,
      shop: freezed == shop
          ? _value.shop
          : shop // ignore: cast_nullable_to_non_nullable
              as AiChatShopCardModel?,
      branches: freezed == branches
          ? _value.branches
          : branches // ignore: cast_nullable_to_non_nullable
              as List<AiChatBranchModel>?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryStatus: freezed == deliveryStatus
          ? _value.deliveryStatus
          : deliveryStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      grandTotal: freezed == grandTotal
          ? _value.grandTotal
          : grandTotal // ignore: cast_nullable_to_non_nullable
              as num?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      statusLabel: freezed == statusLabel
          ? _value.statusLabel
          : statusLabel // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AiChatViewAllModelCopyWith<$Res>? get viewAll {
    if (_value.viewAll == null) {
      return null;
    }

    return $AiChatViewAllModelCopyWith<$Res>(_value.viewAll!, (value) {
      return _then(_value.copyWith(viewAll: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AiChatProductCardModelCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $AiChatProductCardModelCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AiChatShopCardModelCopyWith<$Res>? get shop {
    if (_value.shop == null) {
      return null;
    }

    return $AiChatShopCardModelCopyWith<$Res>(_value.shop!, (value) {
      return _then(_value.copyWith(shop: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AiChatPayloadModelCopyWith<$Res>
    implements $AiChatPayloadModelCopyWith<$Res> {
  factory _$$_AiChatPayloadModelCopyWith(_$_AiChatPayloadModel value,
          $Res Function(_$_AiChatPayloadModel) then) =
      __$$_AiChatPayloadModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? type,
      String? action,
      List<AiChatCartItemModel>? items,
      @JsonKey(name: 'sub_total') String? subTotal,
      @JsonKey(name: 'calculable_total') String? calculableTotal,
      @JsonKey(name: 'currency_symbol') String? currencySymbol,
      int? returned,
      int? total,
      @JsonKey(name: 'view_all') AiChatViewAllModel? viewAll,
      AiChatProductCardModel? product,
      List<AiChatProductCardModel>? products,
      List<AiChatShopCardModel>? shops,
      AiChatShopCardModel? shop,
      List<AiChatBranchModel>? branches,
      int? id,
      String? code,
      @JsonKey(name: 'delivery_status') String? deliveryStatus,
      @JsonKey(name: 'payment_status') String? paymentStatus,
      @JsonKey(name: 'grand_total') num? grandTotal,
      String? status,
      @JsonKey(name: 'status_label') String? statusLabel});

  @override
  $AiChatViewAllModelCopyWith<$Res>? get viewAll;
  @override
  $AiChatProductCardModelCopyWith<$Res>? get product;
  @override
  $AiChatShopCardModelCopyWith<$Res>? get shop;
}

/// @nodoc
class __$$_AiChatPayloadModelCopyWithImpl<$Res>
    extends _$AiChatPayloadModelCopyWithImpl<$Res, _$_AiChatPayloadModel>
    implements _$$_AiChatPayloadModelCopyWith<$Res> {
  __$$_AiChatPayloadModelCopyWithImpl(
      _$_AiChatPayloadModel _value, $Res Function(_$_AiChatPayloadModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? action = freezed,
    Object? items = freezed,
    Object? subTotal = freezed,
    Object? calculableTotal = freezed,
    Object? currencySymbol = freezed,
    Object? returned = freezed,
    Object? total = freezed,
    Object? viewAll = freezed,
    Object? product = freezed,
    Object? products = freezed,
    Object? shops = freezed,
    Object? shop = freezed,
    Object? branches = freezed,
    Object? id = freezed,
    Object? code = freezed,
    Object? deliveryStatus = freezed,
    Object? paymentStatus = freezed,
    Object? grandTotal = freezed,
    Object? status = freezed,
    Object? statusLabel = freezed,
  }) {
    return _then(_$_AiChatPayloadModel(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<AiChatCartItemModel>?,
      subTotal: freezed == subTotal
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as String?,
      calculableTotal: freezed == calculableTotal
          ? _value.calculableTotal
          : calculableTotal // ignore: cast_nullable_to_non_nullable
              as String?,
      currencySymbol: freezed == currencySymbol
          ? _value.currencySymbol
          : currencySymbol // ignore: cast_nullable_to_non_nullable
              as String?,
      returned: freezed == returned
          ? _value.returned
          : returned // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      viewAll: freezed == viewAll
          ? _value.viewAll
          : viewAll // ignore: cast_nullable_to_non_nullable
              as AiChatViewAllModel?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as AiChatProductCardModel?,
      products: freezed == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<AiChatProductCardModel>?,
      shops: freezed == shops
          ? _value._shops
          : shops // ignore: cast_nullable_to_non_nullable
              as List<AiChatShopCardModel>?,
      shop: freezed == shop
          ? _value.shop
          : shop // ignore: cast_nullable_to_non_nullable
              as AiChatShopCardModel?,
      branches: freezed == branches
          ? _value._branches
          : branches // ignore: cast_nullable_to_non_nullable
              as List<AiChatBranchModel>?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryStatus: freezed == deliveryStatus
          ? _value.deliveryStatus
          : deliveryStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      grandTotal: freezed == grandTotal
          ? _value.grandTotal
          : grandTotal // ignore: cast_nullable_to_non_nullable
              as num?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      statusLabel: freezed == statusLabel
          ? _value.statusLabel
          : statusLabel // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_AiChatPayloadModel extends _AiChatPayloadModel {
  const _$_AiChatPayloadModel(
      {this.type,
      this.action,
      final List<AiChatCartItemModel>? items,
      @JsonKey(name: 'sub_total') this.subTotal,
      @JsonKey(name: 'calculable_total') this.calculableTotal,
      @JsonKey(name: 'currency_symbol') this.currencySymbol,
      this.returned,
      this.total,
      @JsonKey(name: 'view_all') this.viewAll,
      this.product,
      final List<AiChatProductCardModel>? products,
      final List<AiChatShopCardModel>? shops,
      this.shop,
      final List<AiChatBranchModel>? branches,
      this.id,
      this.code,
      @JsonKey(name: 'delivery_status') this.deliveryStatus,
      @JsonKey(name: 'payment_status') this.paymentStatus,
      @JsonKey(name: 'grand_total') this.grandTotal,
      this.status,
      @JsonKey(name: 'status_label') this.statusLabel})
      : _items = items,
        _products = products,
        _shops = shops,
        _branches = branches,
        super._();

  factory _$_AiChatPayloadModel.fromJson(Map<String, dynamic> json) =>
      _$$_AiChatPayloadModelFromJson(json);

  @override
  final String? type;
  @override
  final String? action;
  final List<AiChatCartItemModel>? _items;
  @override
  List<AiChatCartItemModel>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'sub_total')
  final String? subTotal;
  @override
  @JsonKey(name: 'calculable_total')
  final String? calculableTotal;
  @override
  @JsonKey(name: 'currency_symbol')
  final String? currencySymbol;
  @override
  final int? returned;
  @override
  final int? total;
  @override
  @JsonKey(name: 'view_all')
  final AiChatViewAllModel? viewAll;
  @override
  final AiChatProductCardModel? product;
  final List<AiChatProductCardModel>? _products;
  @override
  List<AiChatProductCardModel>? get products {
    final value = _products;
    if (value == null) return null;
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<AiChatShopCardModel>? _shops;
  @override
  List<AiChatShopCardModel>? get shops {
    final value = _shops;
    if (value == null) return null;
    if (_shops is EqualUnmodifiableListView) return _shops;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final AiChatShopCardModel? shop;
  final List<AiChatBranchModel>? _branches;
  @override
  List<AiChatBranchModel>? get branches {
    final value = _branches;
    if (value == null) return null;
    if (_branches is EqualUnmodifiableListView) return _branches;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? id;
  @override
  final String? code;
  @override
  @JsonKey(name: 'delivery_status')
  final String? deliveryStatus;
  @override
  @JsonKey(name: 'payment_status')
  final String? paymentStatus;
  @override
  @JsonKey(name: 'grand_total')
  final num? grandTotal;
  @override
  final String? status;
  @override
  @JsonKey(name: 'status_label')
  final String? statusLabel;

  @override
  String toString() {
    return 'AiChatPayloadModel(type: $type, action: $action, items: $items, subTotal: $subTotal, calculableTotal: $calculableTotal, currencySymbol: $currencySymbol, returned: $returned, total: $total, viewAll: $viewAll, product: $product, products: $products, shops: $shops, shop: $shop, branches: $branches, id: $id, code: $code, deliveryStatus: $deliveryStatus, paymentStatus: $paymentStatus, grandTotal: $grandTotal, status: $status, statusLabel: $statusLabel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AiChatPayloadModel &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.action, action) || other.action == action) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.subTotal, subTotal) ||
                other.subTotal == subTotal) &&
            (identical(other.calculableTotal, calculableTotal) ||
                other.calculableTotal == calculableTotal) &&
            (identical(other.currencySymbol, currencySymbol) ||
                other.currencySymbol == currencySymbol) &&
            (identical(other.returned, returned) ||
                other.returned == returned) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.viewAll, viewAll) || other.viewAll == viewAll) &&
            (identical(other.product, product) || other.product == product) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality().equals(other._shops, _shops) &&
            (identical(other.shop, shop) || other.shop == shop) &&
            const DeepCollectionEquality().equals(other._branches, _branches) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.deliveryStatus, deliveryStatus) ||
                other.deliveryStatus == deliveryStatus) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.grandTotal, grandTotal) ||
                other.grandTotal == grandTotal) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusLabel, statusLabel) ||
                other.statusLabel == statusLabel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        type,
        action,
        const DeepCollectionEquality().hash(_items),
        subTotal,
        calculableTotal,
        currencySymbol,
        returned,
        total,
        viewAll,
        product,
        const DeepCollectionEquality().hash(_products),
        const DeepCollectionEquality().hash(_shops),
        shop,
        const DeepCollectionEquality().hash(_branches),
        id,
        code,
        deliveryStatus,
        paymentStatus,
        grandTotal,
        status,
        statusLabel
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AiChatPayloadModelCopyWith<_$_AiChatPayloadModel> get copyWith =>
      __$$_AiChatPayloadModelCopyWithImpl<_$_AiChatPayloadModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AiChatPayloadModelToJson(
      this,
    );
  }
}

abstract class _AiChatPayloadModel extends AiChatPayloadModel {
  const factory _AiChatPayloadModel(
          {final String? type,
          final String? action,
          final List<AiChatCartItemModel>? items,
          @JsonKey(name: 'sub_total') final String? subTotal,
          @JsonKey(name: 'calculable_total') final String? calculableTotal,
          @JsonKey(name: 'currency_symbol') final String? currencySymbol,
          final int? returned,
          final int? total,
          @JsonKey(name: 'view_all') final AiChatViewAllModel? viewAll,
          final AiChatProductCardModel? product,
          final List<AiChatProductCardModel>? products,
          final List<AiChatShopCardModel>? shops,
          final AiChatShopCardModel? shop,
          final List<AiChatBranchModel>? branches,
          final int? id,
          final String? code,
          @JsonKey(name: 'delivery_status') final String? deliveryStatus,
          @JsonKey(name: 'payment_status') final String? paymentStatus,
          @JsonKey(name: 'grand_total') final num? grandTotal,
          final String? status,
          @JsonKey(name: 'status_label') final String? statusLabel}) =
      _$_AiChatPayloadModel;
  const _AiChatPayloadModel._() : super._();

  factory _AiChatPayloadModel.fromJson(Map<String, dynamic> json) =
      _$_AiChatPayloadModel.fromJson;

  @override
  String? get type;
  @override
  String? get action;
  @override
  List<AiChatCartItemModel>? get items;
  @override
  @JsonKey(name: 'sub_total')
  String? get subTotal;
  @override
  @JsonKey(name: 'calculable_total')
  String? get calculableTotal;
  @override
  @JsonKey(name: 'currency_symbol')
  String? get currencySymbol;
  @override
  int? get returned;
  @override
  int? get total;
  @override
  @JsonKey(name: 'view_all')
  AiChatViewAllModel? get viewAll;
  @override
  AiChatProductCardModel? get product;
  @override
  List<AiChatProductCardModel>? get products;
  @override
  List<AiChatShopCardModel>? get shops;
  @override
  AiChatShopCardModel? get shop;
  @override
  List<AiChatBranchModel>? get branches;
  @override
  int? get id;
  @override
  String? get code;
  @override
  @JsonKey(name: 'delivery_status')
  String? get deliveryStatus;
  @override
  @JsonKey(name: 'payment_status')
  String? get paymentStatus;
  @override
  @JsonKey(name: 'grand_total')
  num? get grandTotal;
  @override
  String? get status;
  @override
  @JsonKey(name: 'status_label')
  String? get statusLabel;
  @override
  @JsonKey(ignore: true)
  _$$_AiChatPayloadModelCopyWith<_$_AiChatPayloadModel> get copyWith =>
      throw _privateConstructorUsedError;
}
