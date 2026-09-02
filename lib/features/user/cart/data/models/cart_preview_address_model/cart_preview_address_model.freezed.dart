// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_preview_address_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CartPreviewAddressModel _$CartPreviewAddressModelFromJson(
    Map<String, dynamic> json) {
  return _CartPreviewAddressModel.fromJson(json);
}

/// @nodoc
mixin _$CartPreviewAddressModel {
  @JsonKey(name: "has_changes")
  bool get hasChanges => throw _privateConstructorUsedError;
  List<CartPreviewSellerModel> get sellers =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartPreviewAddressModelCopyWith<CartPreviewAddressModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartPreviewAddressModelCopyWith<$Res> {
  factory $CartPreviewAddressModelCopyWith(CartPreviewAddressModel value,
          $Res Function(CartPreviewAddressModel) then) =
      _$CartPreviewAddressModelCopyWithImpl<$Res, CartPreviewAddressModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "has_changes") bool hasChanges,
      List<CartPreviewSellerModel> sellers});
}

/// @nodoc
class _$CartPreviewAddressModelCopyWithImpl<$Res,
        $Val extends CartPreviewAddressModel>
    implements $CartPreviewAddressModelCopyWith<$Res> {
  _$CartPreviewAddressModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasChanges = null,
    Object? sellers = null,
  }) {
    return _then(_value.copyWith(
      hasChanges: null == hasChanges
          ? _value.hasChanges
          : hasChanges // ignore: cast_nullable_to_non_nullable
              as bool,
      sellers: null == sellers
          ? _value.sellers
          : sellers // ignore: cast_nullable_to_non_nullable
              as List<CartPreviewSellerModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CartPreviewAddressModelCopyWith<$Res>
    implements $CartPreviewAddressModelCopyWith<$Res> {
  factory _$$_CartPreviewAddressModelCopyWith(_$_CartPreviewAddressModel value,
          $Res Function(_$_CartPreviewAddressModel) then) =
      __$$_CartPreviewAddressModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "has_changes") bool hasChanges,
      List<CartPreviewSellerModel> sellers});
}

/// @nodoc
class __$$_CartPreviewAddressModelCopyWithImpl<$Res>
    extends _$CartPreviewAddressModelCopyWithImpl<$Res,
        _$_CartPreviewAddressModel>
    implements _$$_CartPreviewAddressModelCopyWith<$Res> {
  __$$_CartPreviewAddressModelCopyWithImpl(_$_CartPreviewAddressModel _value,
      $Res Function(_$_CartPreviewAddressModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasChanges = null,
    Object? sellers = null,
  }) {
    return _then(_$_CartPreviewAddressModel(
      hasChanges: null == hasChanges
          ? _value.hasChanges
          : hasChanges // ignore: cast_nullable_to_non_nullable
              as bool,
      sellers: null == sellers
          ? _value._sellers
          : sellers // ignore: cast_nullable_to_non_nullable
              as List<CartPreviewSellerModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_CartPreviewAddressModel extends _CartPreviewAddressModel {
  const _$_CartPreviewAddressModel(
      {@JsonKey(name: "has_changes") required this.hasChanges,
      final List<CartPreviewSellerModel> sellers = const []})
      : _sellers = sellers,
        super._();

  factory _$_CartPreviewAddressModel.fromJson(Map<String, dynamic> json) =>
      _$$_CartPreviewAddressModelFromJson(json);

  @override
  @JsonKey(name: "has_changes")
  final bool hasChanges;
  final List<CartPreviewSellerModel> _sellers;
  @override
  @JsonKey()
  List<CartPreviewSellerModel> get sellers {
    if (_sellers is EqualUnmodifiableListView) return _sellers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sellers);
  }

  @override
  String toString() {
    return 'CartPreviewAddressModel(hasChanges: $hasChanges, sellers: $sellers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartPreviewAddressModel &&
            (identical(other.hasChanges, hasChanges) ||
                other.hasChanges == hasChanges) &&
            const DeepCollectionEquality().equals(other._sellers, _sellers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, hasChanges, const DeepCollectionEquality().hash(_sellers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartPreviewAddressModelCopyWith<_$_CartPreviewAddressModel>
      get copyWith =>
          __$$_CartPreviewAddressModelCopyWithImpl<_$_CartPreviewAddressModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartPreviewAddressModelToJson(
      this,
    );
  }
}

abstract class _CartPreviewAddressModel extends CartPreviewAddressModel {
  const factory _CartPreviewAddressModel(
      {@JsonKey(name: "has_changes") required final bool hasChanges,
      final List<CartPreviewSellerModel> sellers}) = _$_CartPreviewAddressModel;
  const _CartPreviewAddressModel._() : super._();

  factory _CartPreviewAddressModel.fromJson(Map<String, dynamic> json) =
      _$_CartPreviewAddressModel.fromJson;

  @override
  @JsonKey(name: "has_changes")
  bool get hasChanges;
  @override
  List<CartPreviewSellerModel> get sellers;
  @override
  @JsonKey(ignore: true)
  _$$_CartPreviewAddressModelCopyWith<_$_CartPreviewAddressModel>
      get copyWith => throw _privateConstructorUsedError;
}
