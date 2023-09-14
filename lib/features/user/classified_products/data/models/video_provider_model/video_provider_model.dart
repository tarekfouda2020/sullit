import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/models/video_provider.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_provider_model.freezed.dart';
part 'video_provider_model.g.dart';

@freezed
@immutable
class VideoProviderModel extends BaseApiModel<VideoProvider>
    with _$VideoProviderModel {
  const VideoProviderModel._();

  @JsonSerializable(explicitToJson: true)
  const factory VideoProviderModel(
      {required String name, required String provider}) = _VideoProviderModel;

  factory VideoProviderModel.fromJson(Map<String, dynamic> json) =>
      _$VideoProviderModelFromJson(json);

  @override
  VideoProvider toDomainModel() {
    return VideoProvider(
      name: name,
      provider: provider,
    );
  }
}
