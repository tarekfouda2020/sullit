// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_preview_seller_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CartPreviewSellerModel _$CartPreviewSellerModelFromJson(
    Map<String, dynamic> json) {
  return _CartPreviewSellerModel.fromJson(json);
}

/// @nodoc
mixin _$CartPreviewSellerModel {
  @JsonKey(name: "owner_id")
  int get ownerId => throw _privateConstructorUsedError;
  @JsonKey(name: "shop_id")
  int? get shopId => throw _privateConstructorUsedError;
  @JsonKey(name: "seller_name")
  String get sellerName => throw _privateConstructorUsedError;
  @JsonKey(name: "shop_name")
  String get shopName => throw _privateConstructorUsedError;
  @JsonKey(name: "branch_changed")
  bool get branchChanged => throw _privateConstructorUsedError;
  @JsonKey(name: "from_branch")
  CartPreviewBranchModel? get fromBranch => throw _privateConstructorUsedError;
  @JsonKey(name: "to_branch")
  CartPreviewBranchModel? get toBranch => throw _privateConstructorUsedError;
  @JsonKey(name: "delivery_available")
  bool get deliveryAvailable => throw _privateConstructorUsedError;
  @JsonKey(name: "delivery_message")
  String? get deliveryMessage => throw _privateConstructorUsedError;
  @JsonKey(name: "minimum_order_amount_msg")
  String get minimumAmountMsg => throw _privateConstructorUsedError;
  @JsonKey(name: "minimum_order_amount")
  dynamic get minimumAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "minimum_order_amount_status")
  bool get minimumStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "items_count")
  int get totalItemsCount => throw _privateConstructorUsedError;
  List<CartPreviewRemovedItemModel> get removed =>
      throw _privateConstructorUsedError;
  List<CartPreviewUpdatedItemModel> get updated =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartPreviewSellerModelCopyWith<CartPreviewSellerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartPreviewSellerModelCopyWith<$Res> {
  factory $CartPreviewSellerModelCopyWith(CartPreviewSellerModel value,
          $Res Function(CartPreviewSellerModel) then) =
      _$CartPreviewSellerModelCopyWithImpl<$Res, CartPreviewSellerModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "owner_id") int ownerId,
      @JsonKey(name: "shop_id") int? shopId,
      @JsonKey(name: "seller_name") String sellerName,
      @JsonKey(name: "shop_name") String shopName,
      @JsonKey(name: "branch_changed") bool branchChanged,
      @JsonKey(name: "from_branch") CartPreviewBranchModel? fromBranch,
      @JsonKey(name: "to_branch") CartPreviewBranchModel? toBranch,
      @JsonKey(name: "delivery_available") bool deliveryAvailable,
      @JsonKey(name: "delivery_message") String? deliveryMessage,
      @JsonKey(name: "minimum_order_amount_msg") String minimumAmountMsg,
      @JsonKey(name: "minimum_order_amount") dynamic minimumAmount,
      @JsonKey(name: "minimum_order_amount_status") bool minimumStatus,
      @JsonKey(name: "items_count") int totalItemsCount,
      List<CartPreviewRemovedItemModel> removed,
      List<CartPreviewUpdatedItemModel> updated});

  $CartPreviewBranchModelCopyWith<$Res>? get fromBranch;
  $CartPreviewBranchModelCopyWith<$Res>? get toBranch;
}

/// @nodoc
class _$CartPreviewSellerModelCopyWithImpl<$Res,
        $Val extends CartPreviewSellerModel>
    implements $CartPreviewSellerModelCopyWith<$Res> {
  _$CartPreviewSellerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ownerId = null,
    Object? shopId = freezed,
    Object? sellerName = null,
    Object? shopName = null,
    Object? branchChanged = null,
    Object? fromBranch = freezed,
    Object? toBranch = freezed,
    Object? deliveryAvailable = null,
    Object? deliveryMessage = freezed,
    Object? minimumAmountMsg = null,
    Object? minimumAmount = freezed,
    Object? minimumStatus = null,
    Object? totalItemsCount = null,
    Object? removed = null,
    Object? updated = null,
  }) {
    return _then(_value.copyWith(
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int,
      shopId: freezed == shopId
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as int?,
      sellerName: null == sellerName
          ? _value.sellerName
          : sellerName // ignore: cast_nullable_to_non_nullable
              as String,
      shopName: null == shopName
          ? _value.shopName
          : shopName // ignore: cast_nullable_to_non_nullable
              as String,
      branchChanged: null == branchChanged
          ? _value.branchChanged
          : branchChanged // ignore: cast_nullable_to_non_nullable
              as bool,
      fromBranch: freezed == fromBranch
          ? _value.fromBranch
          : fromBranch // ignore: cast_nullable_to_non_nullable
              as CartPreviewBranchModel?,
      toBranch: freezed == toBranch
          ? _value.toBranch
          : toBranch // ignore: cast_nullable_to_non_nullable
              as CartPreviewBranchModel?,
      deliveryAvailable: null == deliveryAvailable
          ? _value.deliveryAvailable
          : deliveryAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      deliveryMessage: freezed == deliveryMessage
          ? _value.deliveryMessage
          : deliveryMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      minimumAmountMsg: null == minimumAmountMsg
          ? _value.minimumAmountMsg
          : minimumAmountMsg // ignore: cast_nullable_to_non_nullable
              as String,
      minimumAmount: freezed == minimumAmount
          ? _value.minimumAmount
          : minimumAmount // ignore: cast_nullable_to_non_nullable
              as dynamic,
      minimumStatus: null == minimumStatus
          ? _value.minimumStatus
          : minimumStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      totalItemsCount: null == totalItemsCount
          ? _value.totalItemsCount
          : totalItemsCount // ignore: cast_nullable_to_non_nullable
              as int,
      removed: null == removed
          ? _value.removed
          : removed // ignore: cast_nullable_to_non_nullable
              as List<CartPreviewRemovedItemModel>,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as List<CartPreviewUpdatedItemModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CartPreviewBranchModelCopyWith<$Res>? get fromBranch {
    if (_value.fromBranch == null) {
      return null;
    }

    return $CartPreviewBranchModelCopyWith<$Res>(_value.fromBranch!, (value) {
      return _then(_value.copyWith(fromBranch: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CartPreviewBranchModelCopyWith<$Res>? get toBranch {
    if (_value.toBranch == null) {
      return null;
    }

    return $CartPreviewBranchModelCopyWith<$Res>(_value.toBranch!, (value) {
      return _then(_value.copyWith(toBranch: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CartPreviewSellerModelCopyWith<$Res>
    implements $CartPreviewSellerModelCopyWith<$Res> {
  factory _$$_CartPreviewSellerModelCopyWith(_$_CartPreviewSellerModel value,
          $Res Function(_$_CartPreviewSellerModel) then) =
      __$$_CartPreviewSellerModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "owner_id") int ownerId,
      @JsonKey(name: "shop_id") int? shopId,
      @JsonKey(name: "seller_name") String sellerName,
      @JsonKey(name: "shop_name") String shopName,
      @JsonKey(name: "branch_changed") bool branchChanged,
      @JsonKey(name: "from_branch") CartPreviewBranchModel? fromBranch,
      @JsonKey(name: "to_branch") CartPreviewBranchModel? toBranch,
      @JsonKey(name: "delivery_available") bool deliveryAvailable,
      @JsonKey(name: "delivery_message") String? deliveryMessage,
      @JsonKey(name: "minimum_order_amount_msg") String minimumAmountMsg,
      @JsonKey(name: "minimum_order_amount") dynamic minimumAmount,
      @JsonKey(name: "minimum_order_amount_status") bool minimumStatus,
      @JsonKey(name: "items_count") int totalItemsCount,
      List<CartPreviewRemovedItemModel> removed,
      List<CartPreviewUpdatedItemModel> updated});

  @override
  $CartPreviewBranchModelCopyWith<$Res>? get fromBranch;
  @override
  $CartPreviewBranchModelCopyWith<$Res>? get toBranch;
}

/// @nodoc
class __$$_CartPreviewSellerModelCopyWithImpl<$Res>
    extends _$CartPreviewSellerModelCopyWithImpl<$Res,
        _$_CartPreviewSellerModel>
    implements _$$_CartPreviewSellerModelCopyWith<$Res> {
  __$$_CartPreviewSellerModelCopyWithImpl(_$_CartPreviewSellerModel _value,
      $Res Function(_$_CartPreviewSellerModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ownerId = null,
    Object? shopId = freezed,
    Object? sellerName = null,
    Object? shopName = null,
    Object? branchChanged = null,
    Object? fromBranch = freezed,
    Object? toBranch = freezed,
    Object? deliveryAvailable = null,
    Object? deliveryMessage = freezed,
    Object? minimumAmountMsg = null,
    Object? minimumAmount = freezed,
    Object? minimumStatus = null,
    Object? totalItemsCount = null,
    Object? removed = null,
    Object? updated = null,
  }) {
    return _then(_$_CartPreviewSellerModel(
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int,
      shopId: freezed == shopId
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as int?,
      sellerName: null == sellerName
          ? _value.sellerName
          : sellerName // ignore: cast_nullable_to_non_nullable
              as String,
      shopName: null == shopName
          ? _value.shopName
          : shopName // ignore: cast_nullable_to_non_nullable
              as String,
      branchChanged: null == branchChanged
          ? _value.branchChanged
          : branchChanged // ignore: cast_nullable_to_non_nullable
              as bool,
      fromBranch: freezed == fromBranch
          ? _value.fromBranch
          : fromBranch // ignore: cast_nullable_to_non_nullable
              as CartPreviewBranchModel?,
      toBranch: freezed == toBranch
          ? _value.toBranch
          : toBranch // ignore: cast_nullable_to_non_nullable
              as CartPreviewBranchModel?,
      deliveryAvailable: null == deliveryAvailable
          ? _value.deliveryAvailable
          : deliveryAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      deliveryMessage: freezed == deliveryMessage
          ? _value.deliveryMessage
          : deliveryMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      minimumAmountMsg: null == minimumAmountMsg
          ? _value.minimumAmountMsg
          : minimumAmountMsg // ignore: cast_nullable_to_non_nullable
              as String,
      minimumAmount: freezed == minimumAmount
          ? _value.minimumAmount
          : minimumAmount // ignore: cast_nullable_to_non_nullable
              as dynamic,
      minimumStatus: null == minimumStatus
          ? _value.minimumStatus
          : minimumStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      totalItemsCount: null == totalItemsCount
          ? _value.totalItemsCount
          : totalItemsCount // ignore: cast_nullable_to_non_nullable
              as int,
      removed: null == removed
          ? _value._removed
          : removed // ignore: cast_nullable_to_non_nullable
              as List<CartPreviewRemovedItemModel>,
      updated: null == updated
          ? _value._updated
          : updated // ignore: cast_nullable_to_non_nullable
              as List<CartPreviewUpdatedItemModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_CartPreviewSellerModel extends _CartPreviewSellerModel {
  const _$_CartPreviewSellerModel(
      {@JsonKey(name: "owner_id") required this.ownerId,
      @JsonKey(name: "shop_id") this.shopId,
      @JsonKey(name: "seller_name") required this.sellerName,
      @JsonKey(name: "shop_name") required this.shopName,
      @JsonKey(name: "branch_changed") required this.branchChanged,
      @JsonKey(name: "from_branch") this.fromBranch,
      @JsonKey(name: "to_branch") this.toBranch,
      @JsonKey(name: "delivery_available") required this.deliveryAvailable,
      @JsonKey(name: "delivery_message") this.deliveryMessage,
      @JsonKey(name: "minimum_order_amount_msg") required this.minimumAmountMsg,
      @JsonKey(name: "minimum_order_amount") required this.minimumAmount,
      @JsonKey(name: "minimum_order_amount_status") required this.minimumStatus,
      @JsonKey(name: "items_count") required this.totalItemsCount,
      final List<CartPreviewRemovedItemModel> removed = const [],
      final List<CartPreviewUpdatedItemModel> updated = const []})
      : _removed = removed,
        _updated = updated,
        super._();

  factory _$_CartPreviewSellerModel.fromJson(Map<String, dynamic> json) =>
      _$$_CartPreviewSellerModelFromJson(json);

  @override
  @JsonKey(name: "owner_id")
  final int ownerId;
  @override
  @JsonKey(name: "shop_id")
  final int? shopId;
  @override
  @JsonKey(name: "seller_name")
  final String sellerName;
  @override
  @JsonKey(name: "shop_name")
  final String shopName;
  @override
  @JsonKey(name: "branch_changed")
  final bool branchChanged;
  @override
  @JsonKey(name: "from_branch")
  final CartPreviewBranchModel? fromBranch;
  @override
  @JsonKey(name: "to_branch")
  final CartPreviewBranchModel? toBranch;
  @override
  @JsonKey(name: "delivery_available")
  final bool deliveryAvailable;
  @override
  @JsonKey(name: "delivery_message")
  final String? deliveryMessage;
  @override
  @JsonKey(name: "minimum_order_amount_msg")
  final String minimumAmountMsg;
  @override
  @JsonKey(name: "minimum_order_amount")
  final dynamic minimumAmount;
  @override
  @JsonKey(name: "minimum_order_amount_status")
  final bool minimumStatus;
  @override
  @JsonKey(name: "items_count")
  final int totalItemsCount;
  final List<CartPreviewRemovedItemModel> _removed;
  @override
  @JsonKey()
  List<CartPreviewRemovedItemModel> get removed {
    if (_removed is EqualUnmodifiableListView) return _removed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_removed);
  }

  final List<CartPreviewUpdatedItemModel> _updated;
  @override
  @JsonKey()
  List<CartPreviewUpdatedItemModel> get updated {
    if (_updated is EqualUnmodifiableListView) return _updated;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_updated);
  }

  @override
  String toString() {
    return 'CartPreviewSellerModel(ownerId: $ownerId, shopId: $shopId, sellerName: $sellerName, shopName: $shopName, branchChanged: $branchChanged, fromBranch: $fromBranch, toBranch: $toBranch, deliveryAvailable: $deliveryAvailable, deliveryMessage: $deliveryMessage, minimumAmountMsg: $minimumAmountMsg, minimumAmount: $minimumAmount, minimumStatus: $minimumStatus, totalItemsCount: $totalItemsCount, removed: $removed, updated: $updated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartPreviewSellerModel &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.shopId, shopId) || other.shopId == shopId) &&
            (identical(other.sellerName, sellerName) ||
                other.sellerName == sellerName) &&
            (identical(other.shopName, shopName) ||
                other.shopName == shopName) &&
            (identical(other.branchChanged, branchChanged) ||
                other.branchChanged == branchChanged) &&
            (identical(other.fromBranch, fromBranch) ||
                other.fromBranch == fromBranch) &&
            (identical(other.toBranch, toBranch) ||
                other.toBranch == toBranch) &&
            (identical(other.deliveryAvailable, deliveryAvailable) ||
                other.deliveryAvailable == deliveryAvailable) &&
            (identical(other.deliveryMessage, deliveryMessage) ||
                other.deliveryMessage == deliveryMessage) &&
            (identical(other.minimumAmountMsg, minimumAmountMsg) ||
                other.minimumAmountMsg == minimumAmountMsg) &&
            const DeepCollectionEquality()
                .equals(other.minimumAmount, minimumAmount) &&
            (identical(other.minimumStatus, minimumStatus) ||
                other.minimumStatus == minimumStatus) &&
            (identical(other.totalItemsCount, totalItemsCount) ||
                other.totalItemsCount == totalItemsCount) &&
            const DeepCollectionEquality().equals(other._removed, _removed) &&
            const DeepCollectionEquality().equals(other._updated, _updated));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      ownerId,
      shopId,
      sellerName,
      shopName,
      branchChanged,
      fromBranch,
      toBranch,
      deliveryAvailable,
      deliveryMessage,
      minimumAmountMsg,
      const DeepCollectionEquality().hash(minimumAmount),
      minimumStatus,
      totalItemsCount,
      const DeepCollectionEquality().hash(_removed),
      const DeepCollectionEquality().hash(_updated));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartPreviewSellerModelCopyWith<_$_CartPreviewSellerModel> get copyWith =>
      __$$_CartPreviewSellerModelCopyWithImpl<_$_CartPreviewSellerModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartPreviewSellerModelToJson(
      this,
    );
  }
}

abstract class _CartPreviewSellerModel extends CartPreviewSellerModel {
  const factory _CartPreviewSellerModel(
      {@JsonKey(name: "owner_id") required final int ownerId,
      @JsonKey(name: "shop_id") final int? shopId,
      @JsonKey(name: "seller_name") required final String sellerName,
      @JsonKey(name: "shop_name") required final String shopName,
      @JsonKey(name: "branch_changed") required final bool branchChanged,
      @JsonKey(name: "from_branch") final CartPreviewBranchModel? fromBranch,
      @JsonKey(name: "to_branch") final CartPreviewBranchModel? toBranch,
      @JsonKey(name: "delivery_available")
      required final bool deliveryAvailable,
      @JsonKey(name: "delivery_message") final String? deliveryMessage,
      @JsonKey(name: "minimum_order_amount_msg")
      required final String minimumAmountMsg,
      @JsonKey(name: "minimum_order_amount")
      required final dynamic minimumAmount,
      @JsonKey(name: "minimum_order_amount_status")
      required final bool minimumStatus,
      @JsonKey(name: "items_count") required final int totalItemsCount,
      final List<CartPreviewRemovedItemModel> removed,
      final List<CartPreviewUpdatedItemModel>
          updated}) = _$_CartPreviewSellerModel;
  const _CartPreviewSellerModel._() : super._();

  factory _CartPreviewSellerModel.fromJson(Map<String, dynamic> json) =
      _$_CartPreviewSellerModel.fromJson;

  @override
  @JsonKey(name: "owner_id")
  int get ownerId;
  @override
  @JsonKey(name: "shop_id")
  int? get shopId;
  @override
  @JsonKey(name: "seller_name")
  String get sellerName;
  @override
  @JsonKey(name: "shop_name")
  String get shopName;
  @override
  @JsonKey(name: "branch_changed")
  bool get branchChanged;
  @override
  @JsonKey(name: "from_branch")
  CartPreviewBranchModel? get fromBranch;
  @override
  @JsonKey(name: "to_branch")
  CartPreviewBranchModel? get toBranch;
  @override
  @JsonKey(name: "delivery_available")
  bool get deliveryAvailable;
  @override
  @JsonKey(name: "delivery_message")
  String? get deliveryMessage;
  @override
  @JsonKey(name: "minimum_order_amount_msg")
  String get minimumAmountMsg;
  @override
  @JsonKey(name: "minimum_order_amount")
  dynamic get minimumAmount;
  @override
  @JsonKey(name: "minimum_order_amount_status")
  bool get minimumStatus;
  @override
  @JsonKey(name: "items_count")
  int get totalItemsCount;
  @override
  List<CartPreviewRemovedItemModel> get removed;
  @override
  List<CartPreviewUpdatedItemModel> get updated;
  @override
  @JsonKey(ignore: true)
  _$$_CartPreviewSellerModelCopyWith<_$_CartPreviewSellerModel> get copyWith =>
      throw _privateConstructorUsedError;
}
