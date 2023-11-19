import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/general/auth/data/models/user_model/user_model.dart';
import 'package:flutter_tdd/features/general/auth/domain/models/user_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_data_model.freezed.dart';
part 'user_data_model.g.dart';

@freezed
@immutable
class UserDataModel extends BaseApiModel<UserData> with _$UserDataModel {
  const UserDataModel._();

  @JsonSerializable(explicitToJson: true)
  const factory UserDataModel({
    @JsonKey(name: "user") UserModel? user,
  }) = _UserDataModel;

  factory UserDataModel.fromJson(Map<String, dynamic> json) =>
      _$UserDataModelFromJson(json);

  @override
  UserData toDomainModel() {
    return UserData(
      user: user?.toDomainModel(),
    );
  }
}
