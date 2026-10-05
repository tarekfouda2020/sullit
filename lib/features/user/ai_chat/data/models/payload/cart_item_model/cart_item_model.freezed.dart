// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
part of 'cart_item_model.dart';

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CartItemModel _$CartItemModelFromJson(Map<String, dynamic> json) {
  return _CartItemModel.fromJson(json);
}

mixin _$CartItemModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumbnail_image')
  String? get thumbnailImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_id')
  int? get productId => throw _privateConstructorUsedError;
  String? get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'currency_symbol')
  String? get currencySymbol => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

@JsonSerializable(explicitToJson: true)
class _$_CartItemModel extends _CartItemModel {
  const _$_CartItemModel({
    this.id,
    this.name,
    this.quantity,
    this.price,
    this.thumbnailImage,
    this.productId,
    this.total,
    this.currencySymbol,
  }) : super._();

  factory _$_CartItemModel.fromJson(Map<String, dynamic> json) =>
      _$$_CartItemModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final int? quantity;
  @override
  final String? price;
  @override
  @JsonKey(name: 'thumbnail_image')
  final String? thumbnailImage;
  @override
  @JsonKey(name: 'product_id')
  final int? productId;
  @override
  final String? total;
  @override
  @JsonKey(name: 'currency_symbol')
  final String? currencySymbol;

  @override
  Map<String, dynamic> toJson() => _$$_CartItemModelToJson(this);
}

abstract class _CartItemModel extends CartItemModel {
  const factory _CartItemModel({
    int? id,
    String? name,
    int? quantity,
    String? price,
    @JsonKey(name: 'thumbnail_image') String? thumbnailImage,
    @JsonKey(name: 'product_id') int? productId,
    String? total,
    @JsonKey(name: 'currency_symbol') String? currencySymbol,
  }) = _$_CartItemModel;
  const _CartItemModel._() : super._();

  factory _CartItemModel.fromJson(Map<String, dynamic> json) =
      _$_CartItemModel.fromJson;
}
