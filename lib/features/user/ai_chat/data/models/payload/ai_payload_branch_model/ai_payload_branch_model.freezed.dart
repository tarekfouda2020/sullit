// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ai_payload_branch_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AiPayloadBranchModel _$AiPayloadBranchModelFromJson(Map<String, dynamic> json) {
  return _AiPayloadBranchModel.fromJson(json);
}

/// @nodoc
mixin _$AiPayloadBranchModel {
  AiChatShopCardModel? get shop => throw _privateConstructorUsedError;
  List<AiChatBranchModel> get branches => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;
  int? get returned => throw _privateConstructorUsedError;
  @JsonKey(name: 'view_all')
  AiChatViewAllModel? get viewAll => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AiPayloadBranchModelCopyWith<AiPayloadBranchModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AiPayloadBranchModelCopyWith<$Res> {
  factory $AiPayloadBranchModelCopyWith(AiPayloadBranchModel value,
          $Res Function(AiPayloadBranchModel) then) =
      _$AiPayloadBranchModelCopyWithImpl<$Res, AiPayloadBranchModel>;
  @useResult
  $Res call(
      {AiChatShopCardModel? shop,
      List<AiChatBranchModel> branches,
      int? total,
      int? returned,
      @JsonKey(name: 'view_all') AiChatViewAllModel? viewAll});

  $AiChatShopCardModelCopyWith<$Res>? get shop;
  $AiChatViewAllModelCopyWith<$Res>? get viewAll;
}

/// @nodoc
class _$AiPayloadBranchModelCopyWithImpl<$Res,
        $Val extends AiPayloadBranchModel>
    implements $AiPayloadBranchModelCopyWith<$Res> {
  _$AiPayloadBranchModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shop = freezed,
    Object? branches = null,
    Object? total = freezed,
    Object? returned = freezed,
    Object? viewAll = freezed,
  }) {
    return _then(_value.copyWith(
      shop: freezed == shop
          ? _value.shop
          : shop // ignore: cast_nullable_to_non_nullable
              as AiChatShopCardModel?,
      branches: null == branches
          ? _value.branches
          : branches // ignore: cast_nullable_to_non_nullable
              as List<AiChatBranchModel>,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      returned: freezed == returned
          ? _value.returned
          : returned // ignore: cast_nullable_to_non_nullable
              as int?,
      viewAll: freezed == viewAll
          ? _value.viewAll
          : viewAll // ignore: cast_nullable_to_non_nullable
              as AiChatViewAllModel?,
    ) as $Val);
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
}

/// @nodoc
abstract class _$$_AiPayloadBranchModelCopyWith<$Res>
    implements $AiPayloadBranchModelCopyWith<$Res> {
  factory _$$_AiPayloadBranchModelCopyWith(_$_AiPayloadBranchModel value,
          $Res Function(_$_AiPayloadBranchModel) then) =
      __$$_AiPayloadBranchModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AiChatShopCardModel? shop,
      List<AiChatBranchModel> branches,
      int? total,
      int? returned,
      @JsonKey(name: 'view_all') AiChatViewAllModel? viewAll});

  @override
  $AiChatShopCardModelCopyWith<$Res>? get shop;
  @override
  $AiChatViewAllModelCopyWith<$Res>? get viewAll;
}

/// @nodoc
class __$$_AiPayloadBranchModelCopyWithImpl<$Res>
    extends _$AiPayloadBranchModelCopyWithImpl<$Res, _$_AiPayloadBranchModel>
    implements _$$_AiPayloadBranchModelCopyWith<$Res> {
  __$$_AiPayloadBranchModelCopyWithImpl(_$_AiPayloadBranchModel _value,
      $Res Function(_$_AiPayloadBranchModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shop = freezed,
    Object? branches = null,
    Object? total = freezed,
    Object? returned = freezed,
    Object? viewAll = freezed,
  }) {
    return _then(_$_AiPayloadBranchModel(
      shop: freezed == shop
          ? _value.shop
          : shop // ignore: cast_nullable_to_non_nullable
              as AiChatShopCardModel?,
      branches: null == branches
          ? _value._branches
          : branches // ignore: cast_nullable_to_non_nullable
              as List<AiChatBranchModel>,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      returned: freezed == returned
          ? _value.returned
          : returned // ignore: cast_nullable_to_non_nullable
              as int?,
      viewAll: freezed == viewAll
          ? _value.viewAll
          : viewAll // ignore: cast_nullable_to_non_nullable
              as AiChatViewAllModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_AiPayloadBranchModel extends _AiPayloadBranchModel {
  const _$_AiPayloadBranchModel(
      {this.shop,
      final List<AiChatBranchModel> branches = const <AiChatBranchModel>[],
      this.total,
      this.returned,
      @JsonKey(name: 'view_all') this.viewAll})
      : _branches = branches,
        super._();

  factory _$_AiPayloadBranchModel.fromJson(Map<String, dynamic> json) =>
      _$$_AiPayloadBranchModelFromJson(json);

  @override
  final AiChatShopCardModel? shop;
  final List<AiChatBranchModel> _branches;
  @override
  @JsonKey()
  List<AiChatBranchModel> get branches {
    if (_branches is EqualUnmodifiableListView) return _branches;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_branches);
  }

  @override
  final int? total;
  @override
  final int? returned;
  @override
  @JsonKey(name: 'view_all')
  final AiChatViewAllModel? viewAll;

  @override
  String toString() {
    return 'AiPayloadBranchModel(shop: $shop, branches: $branches, total: $total, returned: $returned, viewAll: $viewAll)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AiPayloadBranchModel &&
            (identical(other.shop, shop) || other.shop == shop) &&
            const DeepCollectionEquality().equals(other._branches, _branches) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.returned, returned) ||
                other.returned == returned) &&
            (identical(other.viewAll, viewAll) || other.viewAll == viewAll));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, shop,
      const DeepCollectionEquality().hash(_branches), total, returned, viewAll);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AiPayloadBranchModelCopyWith<_$_AiPayloadBranchModel> get copyWith =>
      __$$_AiPayloadBranchModelCopyWithImpl<_$_AiPayloadBranchModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AiPayloadBranchModelToJson(
      this,
    );
  }
}

abstract class _AiPayloadBranchModel extends AiPayloadBranchModel {
  const factory _AiPayloadBranchModel(
          {final AiChatShopCardModel? shop,
          final List<AiChatBranchModel> branches,
          final int? total,
          final int? returned,
          @JsonKey(name: 'view_all') final AiChatViewAllModel? viewAll}) =
      _$_AiPayloadBranchModel;
  const _AiPayloadBranchModel._() : super._();

  factory _AiPayloadBranchModel.fromJson(Map<String, dynamic> json) =
      _$_AiPayloadBranchModel.fromJson;

  @override
  AiChatShopCardModel? get shop;
  @override
  List<AiChatBranchModel> get branches;
  @override
  int? get total;
  @override
  int? get returned;
  @override
  @JsonKey(name: 'view_all')
  AiChatViewAllModel? get viewAll;
  @override
  @JsonKey(ignore: true)
  _$$_AiPayloadBranchModelCopyWith<_$_AiPayloadBranchModel> get copyWith =>
      throw _privateConstructorUsedError;
}
