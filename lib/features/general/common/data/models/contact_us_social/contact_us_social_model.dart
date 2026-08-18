import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/general/common/domain/models/contact_us_socila_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_us_social_model.freezed.dart';
part 'contact_us_social_model.g.dart';

@freezed
class ContactUsSocial extends BaseApiModel<ContactUsSocialModel>
    with _$ContactUsSocial {
  const ContactUsSocial._();
  @JsonSerializable(explicitToJson: true)
  factory ContactUsSocial({
    required String image,
    required String url,
  }) = _ContactUsSocial;

  factory ContactUsSocial.fromJson(Map<String, dynamic> json) =>
      _$ContactUsSocialFromJson(json);

  @override
  ContactUsSocialModel toDomainModel() {
    return ContactUsSocialModel(image: image, url: url);
  }
}
