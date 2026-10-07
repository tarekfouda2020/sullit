// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'price_finder_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PriceFinderResultModel _$PriceFinderResultModelFromJson(
    Map<String, dynamic> json) {
  return _PriceFinderResultModel.fromJson(json);
}

/// @nodoc
mixin _$PriceFinderResultModel {
  int get id => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  PriceComparisonProductModel get product => throw _privateConstructorUsedError;
  @JsonKey(name: 'best_deal')
  PriceFinderDealModel? get bestDeal => throw _privateConstructorUsedError;
  List<PriceFinderDealModel> get offers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PriceFinderResultModelCopyWith<PriceFinderResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceFinderResultModelCopyWith<$Res> {
  factory $PriceFinderResultModelCopyWith(PriceFinderResultModel value,
          $Res Function(PriceFinderResultModel) then) =
      _$PriceFinderResultModelCopyWithImpl<$Res, PriceFinderResultModel>;
  @useResult
  $Res call(
      {int id,
      String status,
      PriceComparisonProductModel product,
      @JsonKey(name: 'best_deal') PriceFinderDealModel? bestDeal,
      List<PriceFinderDealModel> offers});

  $PriceComparisonProductModelCopyWith<$Res> get product;
  $PriceFinderDealModelCopyWith<$Res>? get bestDeal;
}

/// @nodoc
class _$PriceFinderResultModelCopyWithImpl<$Res,
        $Val extends PriceFinderResultModel>
    implements $PriceFinderResultModelCopyWith<$Res> {
  _$PriceFinderResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? product = null,
    Object? bestDeal = freezed,
    Object? offers = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as PriceComparisonProductModel,
      bestDeal: freezed == bestDeal
          ? _value.bestDeal
          : bestDeal // ignore: cast_nullable_to_non_nullable
              as PriceFinderDealModel?,
      offers: null == offers
          ? _value.offers
          : offers // ignore: cast_nullable_to_non_nullable
              as List<PriceFinderDealModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PriceComparisonProductModelCopyWith<$Res> get product {
    return $PriceComparisonProductModelCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PriceFinderDealModelCopyWith<$Res>? get bestDeal {
    if (_value.bestDeal == null) {
      return null;
    }

    return $PriceFinderDealModelCopyWith<$Res>(_value.bestDeal!, (value) {
      return _then(_value.copyWith(bestDeal: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PriceFinderResultModelCopyWith<$Res>
    implements $PriceFinderResultModelCopyWith<$Res> {
  factory _$$_PriceFinderResultModelCopyWith(_$_PriceFinderResultModel value,
          $Res Function(_$_PriceFinderResultModel) then) =
      __$$_PriceFinderResultModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String status,
      PriceComparisonProductModel product,
      @JsonKey(name: 'best_deal') PriceFinderDealModel? bestDeal,
      List<PriceFinderDealModel> offers});

  @override
  $PriceComparisonProductModelCopyWith<$Res> get product;
  @override
  $PriceFinderDealModelCopyWith<$Res>? get bestDeal;
}

/// @nodoc
class __$$_PriceFinderResultModelCopyWithImpl<$Res>
    extends _$PriceFinderResultModelCopyWithImpl<$Res,
        _$_PriceFinderResultModel>
    implements _$$_PriceFinderResultModelCopyWith<$Res> {
  __$$_PriceFinderResultModelCopyWithImpl(_$_PriceFinderResultModel _value,
      $Res Function(_$_PriceFinderResultModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? product = null,
    Object? bestDeal = freezed,
    Object? offers = null,
  }) {
    return _then(_$_PriceFinderResultModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as PriceComparisonProductModel,
      bestDeal: freezed == bestDeal
          ? _value.bestDeal
          : bestDeal // ignore: cast_nullable_to_non_nullable
              as PriceFinderDealModel?,
      offers: null == offers
          ? _value._offers
          : offers // ignore: cast_nullable_to_non_nullable
              as List<PriceFinderDealModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_PriceFinderResultModel extends _PriceFinderResultModel
    with DiagnosticableTreeMixin {
  const _$_PriceFinderResultModel(
      {required this.id,
      required this.status,
      required this.product,
      @JsonKey(name: 'best_deal') this.bestDeal,
      final List<PriceFinderDealModel> offers = const []})
      : _offers = offers,
        super._();

  factory _$_PriceFinderResultModel.fromJson(Map<String, dynamic> json) =>
      _$$_PriceFinderResultModelFromJson(json);

  @override
  final int id;
  @override
  final String status;
  @override
  final PriceComparisonProductModel product;
  @override
  @JsonKey(name: 'best_deal')
  final PriceFinderDealModel? bestDeal;
  final List<PriceFinderDealModel> _offers;
  @override
  @JsonKey()
  List<PriceFinderDealModel> get offers {
    if (_offers is EqualUnmodifiableListView) return _offers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_offers);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PriceFinderResultModel(id: $id, status: $status, product: $product, bestDeal: $bestDeal, offers: $offers)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PriceFinderResultModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('product', product))
      ..add(DiagnosticsProperty('bestDeal', bestDeal))
      ..add(DiagnosticsProperty('offers', offers));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PriceFinderResultModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.bestDeal, bestDeal) ||
                other.bestDeal == bestDeal) &&
            const DeepCollectionEquality().equals(other._offers, _offers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, status, product, bestDeal,
      const DeepCollectionEquality().hash(_offers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PriceFinderResultModelCopyWith<_$_PriceFinderResultModel> get copyWith =>
      __$$_PriceFinderResultModelCopyWithImpl<_$_PriceFinderResultModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PriceFinderResultModelToJson(
      this,
    );
  }
}

abstract class _PriceFinderResultModel extends PriceFinderResultModel {
  const factory _PriceFinderResultModel(
      {required final int id,
      required final String status,
      required final PriceComparisonProductModel product,
      @JsonKey(name: 'best_deal') final PriceFinderDealModel? bestDeal,
      final List<PriceFinderDealModel> offers}) = _$_PriceFinderResultModel;
  const _PriceFinderResultModel._() : super._();

  factory _PriceFinderResultModel.fromJson(Map<String, dynamic> json) =
      _$_PriceFinderResultModel.fromJson;

  @override
  int get id;
  @override
  String get status;
  @override
  PriceComparisonProductModel get product;
  @override
  @JsonKey(name: 'best_deal')
  PriceFinderDealModel? get bestDeal;
  @override
  List<PriceFinderDealModel> get offers;
  @override
  @JsonKey(ignore: true)
  _$$_PriceFinderResultModelCopyWith<_$_PriceFinderResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

PriceFinderDealModel _$PriceFinderDealModelFromJson(Map<String, dynamic> json) {
  return _PriceFinderDealModel.fromJson(json);
}

/// @nodoc
mixin _$PriceFinderDealModel {
  @JsonKey(name: 'store_name')
  String get storeName => throw _privateConstructorUsedError;
  int get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'distance_km', fromJson: _toDouble)
  double get distanceKm => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _toDouble)
  double get price => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _toDouble)
  double get savings => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_lowest')
  bool get isLowest => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_id')
  int get productId => throw _privateConstructorUsedError;
  @JsonKey(name: 'variant_id')
  int get variantId => throw _privateConstructorUsedError;
  @JsonKey(name: 'branch_id')
  int? get branchId => throw _privateConstructorUsedError;
  @JsonKey(name: 'shop_id')
  int get shopId => throw _privateConstructorUsedError;
  @JsonKey(name: 'currency_symbol')
  String get currencySymbol => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PriceFinderDealModelCopyWith<PriceFinderDealModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceFinderDealModelCopyWith<$Res> {
  factory $PriceFinderDealModelCopyWith(PriceFinderDealModel value,
          $Res Function(PriceFinderDealModel) then) =
      _$PriceFinderDealModelCopyWithImpl<$Res, PriceFinderDealModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'store_name') String storeName,
      int rating,
      @JsonKey(name: 'distance_km', fromJson: _toDouble) double distanceKm,
      @JsonKey(fromJson: _toDouble) double price,
      @JsonKey(fromJson: _toDouble) double savings,
      @JsonKey(name: 'is_lowest') bool isLowest,
      @JsonKey(name: 'product_id') int productId,
      @JsonKey(name: 'variant_id') int variantId,
      @JsonKey(name: 'branch_id') int? branchId,
      @JsonKey(name: 'shop_id') int shopId,
      @JsonKey(name: 'currency_symbol') String currencySymbol});
}

/// @nodoc
class _$PriceFinderDealModelCopyWithImpl<$Res,
        $Val extends PriceFinderDealModel>
    implements $PriceFinderDealModelCopyWith<$Res> {
  _$PriceFinderDealModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? storeName = null,
    Object? rating = null,
    Object? distanceKm = null,
    Object? price = null,
    Object? savings = null,
    Object? isLowest = null,
    Object? productId = null,
    Object? variantId = null,
    Object? branchId = freezed,
    Object? shopId = null,
    Object? currencySymbol = null,
  }) {
    return _then(_value.copyWith(
      storeName: null == storeName
          ? _value.storeName
          : storeName // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      distanceKm: null == distanceKm
          ? _value.distanceKm
          : distanceKm // ignore: cast_nullable_to_non_nullable
              as double,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      savings: null == savings
          ? _value.savings
          : savings // ignore: cast_nullable_to_non_nullable
              as double,
      isLowest: null == isLowest
          ? _value.isLowest
          : isLowest // ignore: cast_nullable_to_non_nullable
              as bool,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      variantId: null == variantId
          ? _value.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as int,
      branchId: freezed == branchId
          ? _value.branchId
          : branchId // ignore: cast_nullable_to_non_nullable
              as int?,
      shopId: null == shopId
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as int,
      currencySymbol: null == currencySymbol
          ? _value.currencySymbol
          : currencySymbol // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PriceFinderDealModelCopyWith<$Res>
    implements $PriceFinderDealModelCopyWith<$Res> {
  factory _$$_PriceFinderDealModelCopyWith(_$_PriceFinderDealModel value,
          $Res Function(_$_PriceFinderDealModel) then) =
      __$$_PriceFinderDealModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'store_name') String storeName,
      int rating,
      @JsonKey(name: 'distance_km', fromJson: _toDouble) double distanceKm,
      @JsonKey(fromJson: _toDouble) double price,
      @JsonKey(fromJson: _toDouble) double savings,
      @JsonKey(name: 'is_lowest') bool isLowest,
      @JsonKey(name: 'product_id') int productId,
      @JsonKey(name: 'variant_id') int variantId,
      @JsonKey(name: 'branch_id') int? branchId,
      @JsonKey(name: 'shop_id') int shopId,
      @JsonKey(name: 'currency_symbol') String currencySymbol});
}

/// @nodoc
class __$$_PriceFinderDealModelCopyWithImpl<$Res>
    extends _$PriceFinderDealModelCopyWithImpl<$Res, _$_PriceFinderDealModel>
    implements _$$_PriceFinderDealModelCopyWith<$Res> {
  __$$_PriceFinderDealModelCopyWithImpl(_$_PriceFinderDealModel _value,
      $Res Function(_$_PriceFinderDealModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? storeName = null,
    Object? rating = null,
    Object? distanceKm = null,
    Object? price = null,
    Object? savings = null,
    Object? isLowest = null,
    Object? productId = null,
    Object? variantId = null,
    Object? branchId = freezed,
    Object? shopId = null,
    Object? currencySymbol = null,
  }) {
    return _then(_$_PriceFinderDealModel(
      storeName: null == storeName
          ? _value.storeName
          : storeName // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      distanceKm: null == distanceKm
          ? _value.distanceKm
          : distanceKm // ignore: cast_nullable_to_non_nullable
              as double,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      savings: null == savings
          ? _value.savings
          : savings // ignore: cast_nullable_to_non_nullable
              as double,
      isLowest: null == isLowest
          ? _value.isLowest
          : isLowest // ignore: cast_nullable_to_non_nullable
              as bool,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      variantId: null == variantId
          ? _value.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as int,
      branchId: freezed == branchId
          ? _value.branchId
          : branchId // ignore: cast_nullable_to_non_nullable
              as int?,
      shopId: null == shopId
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as int,
      currencySymbol: null == currencySymbol
          ? _value.currencySymbol
          : currencySymbol // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_PriceFinderDealModel extends _PriceFinderDealModel
    with DiagnosticableTreeMixin {
  const _$_PriceFinderDealModel(
      {@JsonKey(name: 'store_name') required this.storeName,
      required this.rating,
      @JsonKey(name: 'distance_km', fromJson: _toDouble)
      required this.distanceKm,
      @JsonKey(fromJson: _toDouble) required this.price,
      @JsonKey(fromJson: _toDouble) required this.savings,
      @JsonKey(name: 'is_lowest') required this.isLowest,
      @JsonKey(name: 'product_id') required this.productId,
      @JsonKey(name: 'variant_id') required this.variantId,
      @JsonKey(name: 'branch_id') this.branchId,
      @JsonKey(name: 'shop_id') required this.shopId,
      @JsonKey(name: 'currency_symbol') required this.currencySymbol})
      : super._();

  factory _$_PriceFinderDealModel.fromJson(Map<String, dynamic> json) =>
      _$$_PriceFinderDealModelFromJson(json);

  @override
  @JsonKey(name: 'store_name')
  final String storeName;
  @override
  final int rating;
  @override
  @JsonKey(name: 'distance_km', fromJson: _toDouble)
  final double distanceKm;
  @override
  @JsonKey(fromJson: _toDouble)
  final double price;
  @override
  @JsonKey(fromJson: _toDouble)
  final double savings;
  @override
  @JsonKey(name: 'is_lowest')
  final bool isLowest;
  @override
  @JsonKey(name: 'product_id')
  final int productId;
  @override
  @JsonKey(name: 'variant_id')
  final int variantId;
  @override
  @JsonKey(name: 'branch_id')
  final int? branchId;
  @override
  @JsonKey(name: 'shop_id')
  final int shopId;
  @override
  @JsonKey(name: 'currency_symbol')
  final String currencySymbol;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PriceFinderDealModel(storeName: $storeName, rating: $rating, distanceKm: $distanceKm, price: $price, savings: $savings, isLowest: $isLowest, productId: $productId, variantId: $variantId, branchId: $branchId, shopId: $shopId, currencySymbol: $currencySymbol)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PriceFinderDealModel'))
      ..add(DiagnosticsProperty('storeName', storeName))
      ..add(DiagnosticsProperty('rating', rating))
      ..add(DiagnosticsProperty('distanceKm', distanceKm))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('savings', savings))
      ..add(DiagnosticsProperty('isLowest', isLowest))
      ..add(DiagnosticsProperty('productId', productId))
      ..add(DiagnosticsProperty('variantId', variantId))
      ..add(DiagnosticsProperty('branchId', branchId))
      ..add(DiagnosticsProperty('shopId', shopId))
      ..add(DiagnosticsProperty('currencySymbol', currencySymbol));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PriceFinderDealModel &&
            (identical(other.storeName, storeName) ||
                other.storeName == storeName) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.distanceKm, distanceKm) ||
                other.distanceKm == distanceKm) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.savings, savings) || other.savings == savings) &&
            (identical(other.isLowest, isLowest) ||
                other.isLowest == isLowest) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.variantId, variantId) ||
                other.variantId == variantId) &&
            (identical(other.branchId, branchId) ||
                other.branchId == branchId) &&
            (identical(other.shopId, shopId) || other.shopId == shopId) &&
            (identical(other.currencySymbol, currencySymbol) ||
                other.currencySymbol == currencySymbol));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      storeName,
      rating,
      distanceKm,
      price,
      savings,
      isLowest,
      productId,
      variantId,
      branchId,
      shopId,
      currencySymbol);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PriceFinderDealModelCopyWith<_$_PriceFinderDealModel> get copyWith =>
      __$$_PriceFinderDealModelCopyWithImpl<_$_PriceFinderDealModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PriceFinderDealModelToJson(
      this,
    );
  }
}

abstract class _PriceFinderDealModel extends PriceFinderDealModel {
  const factory _PriceFinderDealModel(
      {@JsonKey(name: 'store_name') required final String storeName,
      required final int rating,
      @JsonKey(name: 'distance_km', fromJson: _toDouble)
      required final double distanceKm,
      @JsonKey(fromJson: _toDouble) required final double price,
      @JsonKey(fromJson: _toDouble) required final double savings,
      @JsonKey(name: 'is_lowest') required final bool isLowest,
      @JsonKey(name: 'product_id') required final int productId,
      @JsonKey(name: 'variant_id') required final int variantId,
      @JsonKey(name: 'branch_id') final int? branchId,
      @JsonKey(name: 'shop_id') required final int shopId,
      @JsonKey(name: 'currency_symbol')
      required final String currencySymbol}) = _$_PriceFinderDealModel;
  const _PriceFinderDealModel._() : super._();

  factory _PriceFinderDealModel.fromJson(Map<String, dynamic> json) =
      _$_PriceFinderDealModel.fromJson;

  @override
  @JsonKey(name: 'store_name')
  String get storeName;
  @override
  int get rating;
  @override
  @JsonKey(name: 'distance_km', fromJson: _toDouble)
  double get distanceKm;
  @override
  @JsonKey(fromJson: _toDouble)
  double get price;
  @override
  @JsonKey(fromJson: _toDouble)
  double get savings;
  @override
  @JsonKey(name: 'is_lowest')
  bool get isLowest;
  @override
  @JsonKey(name: 'product_id')
  int get productId;
  @override
  @JsonKey(name: 'variant_id')
  int get variantId;
  @override
  @JsonKey(name: 'branch_id')
  int? get branchId;
  @override
  @JsonKey(name: 'shop_id')
  int get shopId;
  @override
  @JsonKey(name: 'currency_symbol')
  String get currencySymbol;
  @override
  @JsonKey(ignore: true)
  _$$_PriceFinderDealModelCopyWith<_$_PriceFinderDealModel> get copyWith =>
      throw _privateConstructorUsedError;
}
