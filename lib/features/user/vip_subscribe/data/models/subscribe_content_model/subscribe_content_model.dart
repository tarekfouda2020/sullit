import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/vip_subscribe/domain/models/subscribe_content_domain_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'subscribe_content_model.freezed.dart';

part 'subscribe_content_model.g.dart';

@freezed
class SubscribeContentModel extends BaseApiModel<SubscribeContentDomainModel>
    with _$SubscribeContentModel {
  const SubscribeContentModel._();

  @JsonSerializable(explicitToJson: true)
  factory SubscribeContentModel({
    required String title,
    required String description,
    required String icon,
  }) = _SubscribeContentModel;

  factory SubscribeContentModel.fromJson(Map<String, dynamic> json) =>
      _$SubscribeContentModelFromJson(json);

  @override
  SubscribeContentDomainModel toDomainModel() {
    return SubscribeContentDomainModel(
      title: title,
      description: description,
      icon: icon,
    );
  }
}
