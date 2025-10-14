import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/general/auth/data/models/user_data_model/user_data_model.dart';
import 'package:flutter_tdd/features/general/auth/domain/models/user_login.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../presentation/manager/helpers/user_data_converter.dart';

part 'user_login_model.freezed.dart';

part 'user_login_model.g.dart';

@freezed
@immutable
class UserLoginModel extends BaseApiModel<UserLogin> with _$UserLoginModel {
  const UserLoginModel._();
 ///UserDataConverter() is used to handle the response of 'data' key
 ///when return another Type instead of Map<String,dynamic> for UserDataModel

  @JsonSerializable(explicitToJson: true)
  const factory UserLoginModel({
    @JsonKey(name: "key") required String key,
    @JsonKey(name: "msg") required String msg,
    @UserDataConverter()
    @JsonKey(name: "data") UserDataModel? data,

  }) = _UserLoginModel;

  factory UserLoginModel.fromJson(Map<String, dynamic> json) =>
      _$UserLoginModelFromJson(json);

  @override
  UserLogin toDomainModel() {
    return UserLogin(
      msg: msg,
      userData: data?.toDomainModel(),
      key: key,

    );
  }
}
