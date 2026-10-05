// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
part of 'ai_payload_branch_model.dart';

final _privateConstructorUsedError = UnsupportedError('freezed');

AiPayloadBranchModel _$AiPayloadBranchModelFromJson(Map<String, dynamic> json) {
  return _AiPayloadBranchModel.fromJson(json);
}

mixin _$AiPayloadBranchModel {
  AiChatShopCardModel? get shop => throw _privateConstructorUsedError;
  List<AiChatBranchModel> get branches => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;
  int? get returned => throw _privateConstructorUsedError;
  @JsonKey(name: 'view_all')
  AiChatViewAllModel? get viewAll => throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

@JsonSerializable(explicitToJson: true)
class _$_AiPayloadBranchModel extends _AiPayloadBranchModel {
  const _$_AiPayloadBranchModel({
    this.shop,
    this.branches = const <AiChatBranchModel>[],
    this.total,
    this.returned,
    this.viewAll,
  }) : super._();

  factory _$_AiPayloadBranchModel.fromJson(Map<String, dynamic> json) =>
      _$$_AiPayloadBranchModelFromJson(json);

  @override
  final AiChatShopCardModel? shop;
  @override
  final List<AiChatBranchModel> branches;
  @override
  final int? total;
  @override
  final int? returned;
  @override
  @JsonKey(name: 'view_all')
  final AiChatViewAllModel? viewAll;

  @override
  Map<String, dynamic> toJson() => _$$_AiPayloadBranchModelToJson(this);
}

abstract class _AiPayloadBranchModel extends AiPayloadBranchModel {
  const factory _AiPayloadBranchModel({
    AiChatShopCardModel? shop,
    List<AiChatBranchModel> branches,
    int? total,
    int? returned,
    @JsonKey(name: 'view_all') AiChatViewAllModel? viewAll,
  }) = _$_AiPayloadBranchModel;
  const _AiPayloadBranchModel._() : super._();

  factory _AiPayloadBranchModel.fromJson(Map<String, dynamic> json) =
      _$_AiPayloadBranchModel.fromJson;
}
