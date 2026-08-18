import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/core/models/domain_models/image_domain_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_model.freezed.dart';
part 'image_model.g.dart';

@freezed
@immutable
class ImageModel extends BaseApiModel<ImageDomainModel> with _$ImageModel {
  const ImageModel._();
  @JsonSerializable(explicitToJson: true)
  const factory ImageModel({required String name, required String url}) =
      _ImageModel;

  factory ImageModel.fromJson(Map<String, dynamic> json) =>
      _$ImageModelFromJson(json);

  @override
  ImageDomainModel toDomainModel() {
    return ImageDomainModel(name: name, url: url);
  }
}
