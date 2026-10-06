// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shops_payload_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShopsPayloadModel _$ShopsPayloadModelFromJson(Map<String, dynamic> json) {
  return _ShopsPayloadModel.fromJson(json);
}

/// @nodoc
mixin _$ShopsPayloadModel {
  List<AiChatShopCardModel> get shops => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;
  int? get returned => throw _privateConstructorUsedError;
  @JsonKey(name: 'view_all')
  AiChatViewAllModel? get viewAll => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShopsPayloadModelCopyWith<ShopsPayloadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopsPayloadModelCopyWith<$Res> {
  factory $ShopsPayloadModelCopyWith(
          ShopsPayloadModel value, $Res Function(ShopsPayloadModel) then) =
      _$ShopsPayloadModelCopyWithImpl<$Res, ShopsPayloadModel>;
  @useResult
  $Res call(
      {List<AiChatShopCardModel> shops,
      int? total,
      int? returned,
      @JsonKey(name: 'view_all') AiChatViewAllModel? viewAll});

  $AiChatViewAllModelCopyWith<$Res>? get viewAll;
}

/// @nodoc
class _$ShopsPayloadModelCopyWithImpl<$Res, $Val extends ShopsPayloadModel>
    implements $ShopsPayloadModelCopyWith<$Res> {
  _$ShopsPayloadModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shops = null,
    Object? total = freezed,
    Object? returned = freezed,
    Object? viewAll = freezed,
  }) {
    return _then(_value.copyWith(
      shops: null == shops
          ? _value.shops
          : shops // ignore: cast_nullable_to_non_nullable
              as List<AiChatShopCardModel>,
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
abstract class _$$_ShopsPayloadModelCopyWith<$Res>
    implements $ShopsPayloadModelCopyWith<$Res> {
  factory _$$_ShopsPayloadModelCopyWith(_$_ShopsPayloadModel value,
          $Res Function(_$_ShopsPayloadModel) then) =
      __$$_ShopsPayloadModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<AiChatShopCardModel> shops,
      int? total,
      int? returned,
      @JsonKey(name: 'view_all') AiChatViewAllModel? viewAll});

  @override
  $AiChatViewAllModelCopyWith<$Res>? get viewAll;
}

/// @nodoc
class __$$_ShopsPayloadModelCopyWithImpl<$Res>
    extends _$ShopsPayloadModelCopyWithImpl<$Res, _$_ShopsPayloadModel>
    implements _$$_ShopsPayloadModelCopyWith<$Res> {
  __$$_ShopsPayloadModelCopyWithImpl(
      _$_ShopsPayloadModel _value, $Res Function(_$_ShopsPayloadModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shops = null,
    Object? total = freezed,
    Object? returned = freezed,
    Object? viewAll = freezed,
  }) {
    return _then(_$_ShopsPayloadModel(
      shops: null == shops
          ? _value._shops
          : shops // ignore: cast_nullable_to_non_nullable
              as List<AiChatShopCardModel>,
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
class _$_ShopsPayloadModel extends _ShopsPayloadModel {
  const _$_ShopsPayloadModel(
      {final List<AiChatShopCardModel> shops = const <AiChatShopCardModel>[],
      this.total,
      this.returned,
      @JsonKey(name: 'view_all') this.viewAll})
      : _shops = shops,
        super._();

  factory _$_ShopsPayloadModel.fromJson(Map<String, dynamic> json) =>
      _$$_ShopsPayloadModelFromJson(json);

  final List<AiChatShopCardModel> _shops;
  @override
  @JsonKey()
  List<AiChatShopCardModel> get shops {
    if (_shops is EqualUnmodifiableListView) return _shops;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_shops);
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
    return 'ShopsPayloadModel(shops: $shops, total: $total, returned: $returned, viewAll: $viewAll)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShopsPayloadModel &&
            const DeepCollectionEquality().equals(other._shops, _shops) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.returned, returned) ||
                other.returned == returned) &&
            (identical(other.viewAll, viewAll) || other.viewAll == viewAll));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_shops), total, returned, viewAll);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShopsPayloadModelCopyWith<_$_ShopsPayloadModel> get copyWith =>
      __$$_ShopsPayloadModelCopyWithImpl<_$_ShopsPayloadModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShopsPayloadModelToJson(
      this,
    );
  }
}

abstract class _ShopsPayloadModel extends ShopsPayloadModel {
  const factory _ShopsPayloadModel(
          {final List<AiChatShopCardModel> shops,
          final int? total,
          final int? returned,
          @JsonKey(name: 'view_all') final AiChatViewAllModel? viewAll}) =
      _$_ShopsPayloadModel;
  const _ShopsPayloadModel._() : super._();

  factory _ShopsPayloadModel.fromJson(Map<String, dynamic> json) =
      _$_ShopsPayloadModel.fromJson;

  @override
  List<AiChatShopCardModel> get shops;
  @override
  int? get total;
  @override
  int? get returned;
  @override
  @JsonKey(name: 'view_all')
  AiChatViewAllModel? get viewAll;
  @override
  @JsonKey(ignore: true)
  _$$_ShopsPayloadModelCopyWith<_$_ShopsPayloadModel> get copyWith =>
      throw _privateConstructorUsedError;
}
