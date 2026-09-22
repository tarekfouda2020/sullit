import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/general/auth/domain/models/social_media_login.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'social_media_login_model.freezed.dart';

part 'social_media_login_model.g.dart';

@freezed
class SocialMediaLoginModel extends BaseApiModel<SocialMediaLogin>
    with _$SocialMediaLoginModel {
  const SocialMediaLoginModel._();

  @JsonSerializable(explicitToJson: true)
  factory SocialMediaLoginModel({
    required String name,
    required String provider,
    required String logo,
  }) = _SocialMediaLoginModel;

  factory SocialMediaLoginModel.fromJson(Map<String, dynamic> json) =>
      _$SocialMediaLoginModelFromJson(json);

  @override
  SocialMediaLogin toDomainModel() {
    return SocialMediaLogin(
      name: name,
      provider: provider,
      logo: logo,
    );
  }
}
