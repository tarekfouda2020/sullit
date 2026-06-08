import 'package:json_annotation/json_annotation.dart';

import '../../../data/models/user_data_model/user_data_model.dart';

class UserDataConverter implements JsonConverter<UserDataModel?, dynamic> {
  const UserDataConverter();

  @override
  UserDataModel? fromJson(dynamic json) {
    if (json is Map<String, dynamic>) {
      return UserDataModel.fromJson(json);
    }
    // if it's a list or null, just return null safely
    return null;
  }

  @override
  dynamic toJson(UserDataModel? object) => object?.toJson();
}
