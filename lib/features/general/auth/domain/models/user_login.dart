import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/general/auth/domain/models/user_data.dart';

class UserLogin extends BaseDomainModel {
  String? key;
  String? msg;
  UserData? userData;


  UserLogin({
    this.key,
    this.msg,
    this.userData,

  });

  UserLogin.fromJson(Map<String, dynamic> json) {
    key = json['key'];
    msg = json['msg'];
    userData = json['data'] != null ? UserData.fromJson(json['data']) : null;

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['key'] = key;
    data['msg'] = msg;
    if (userData != null) {
      data['data'] = userData!.toJson();
    }

    return data;
  }
}
