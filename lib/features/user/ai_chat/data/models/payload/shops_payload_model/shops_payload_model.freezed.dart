// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
part of 'shops_payload_model.dart';

final _privateConstructorUsedError = UnsupportedError('freezed');

ShopsPayloadModel _$ShopsPayloadModelFromJson(Map<String, dynamic> json) {
  return _ShopsPayloadModel.fromJson(json);
}

mixin _$ShopsPayloadModel {
  List<AiChatShopCardModel> get shops => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;
  int? get returned => throw _privateConstructorUsedError;
  @JsonKey(name: 'view_all')
  AiChatViewAllModel? get viewAll => throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

@JsonSerializable(explicitToJson: true)
class _$_ShopsPayloadModel extends _ShopsPayloadModel {
  const _$_ShopsPayloadModel({
    this.shops = const <AiChatShopCardModel>[],
    this.total,
    this.returned,
    this.viewAll,
  }) : super._();

  factory _$_ShopsPayloadModel.fromJson(Map<String, dynamic> json) =>
      _$$_ShopsPayloadModelFromJson(json);

  @override
  final List<AiChatShopCardModel> shops;
  @override
  final int? total;
  @override
  final int? returned;
  @override
  @JsonKey(name: 'view_all')
  final AiChatViewAllModel? viewAll;

  @override
  Map<String, dynamic> toJson() => _$$_ShopsPayloadModelToJson(this);
}

abstract class _ShopsPayloadModel extends ShopsPayloadModel {
  const factory _ShopsPayloadModel({
    List<AiChatShopCardModel> shops,
    int? total,
    int? returned,
    @JsonKey(name: 'view_all') AiChatViewAllModel? viewAll,
  }) = _$_ShopsPayloadModel;
  const _ShopsPayloadModel._() : super._();

  factory _ShopsPayloadModel.fromJson(Map<String, dynamic> json) =
      _$_ShopsPayloadModel.fromJson;
}
