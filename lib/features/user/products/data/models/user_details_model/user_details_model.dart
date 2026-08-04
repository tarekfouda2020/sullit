import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/user_details.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_details_model.freezed.dart';
part 'user_details_model.g.dart';

@freezed
@immutable
class UserDetailsModel extends BaseApiModel<UserDetails>
    with _$UserDetailsModel {
  const UserDetailsModel._();

  @JsonSerializable(explicitToJson: true)
  const factory UserDetailsModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'avatar') required String avatar,
    @JsonKey(name: 'avatar_original') required String avatarOriginal,
  }) = _UserDetailsModel;

  factory UserDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$UserDetailsModelFromJson(json);

  @override
  UserDetails toDomainModel() {
    return UserDetails(
        id: id, name: name, avatar: avatar, avatarOriginal: avatar);
  }
}
