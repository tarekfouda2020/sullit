import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/general/auth/domain/models/user_domain_model.dart';

class UserData extends BaseDomainModel {
  UserDomainModel? user;
  bool? isAdminDiscount;
  String? msgAdminDiscount;

  UserData({
    this.user,
    this.isAdminDiscount,
    this.msgAdminDiscount,
  });

  UserData.fromJson(Map<String, dynamic> json) {
    user = json['user'] != null ? UserDomainModel.fromJson(json['user']) : null;
    msgAdminDiscount = json['msg_admin_discount'];
    isAdminDiscount = json['is_admin_discount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (user != null) {
      data['user'] = user!.toJson();
    }
    data['is_admin_discount'] = isAdminDiscount;
    data['msg_admin_discount'] = msgAdminDiscount;
    return data;
  }
}
