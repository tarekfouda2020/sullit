import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/addresses/domain/models/address.dart';

class UserDomainModel extends BaseDomainModel {
  int? id;
  String? name;
  String? avatar;
  String? avatarOriginal;
  String? email;
  String? phone;
  String?fullPhone;
  String? countryCode;
  String? token;
  String? tokenType;
  bool? isPhoneActive;
  bool? isEmailActive;
   bool? hasValidSubscription;
  AddressDomainModel? address;

  UserDomainModel(
      {this.id,
      this.name,
      this.avatar,
      this.avatarOriginal,
      this.email,
      this.phone,
        this.fullPhone,
      this.countryCode,
      this.token,
      this.tokenType,
      this.isPhoneActive,
      this.isEmailActive,
      this.hasValidSubscription,
      this.address});

  UserDomainModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    avatar = json['avatar'];
    avatarOriginal = json['avatar_original'];
    phone = json['phone'];
    fullPhone=json['full_phone'];
    countryCode = json['country_code'];
    token = json['token'];
    tokenType = json['token_type'];
    isPhoneActive = json['phone_is_active'];
    isEmailActive=json['email_is_active'];
    hasValidSubscription=json['has_valid_subscription'];
    address = json['address'] != null ? AddressDomainModel.fromJson(json['address']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['email'] = email;
    data['avatar'] = avatar;
    data['avatar_original'] = avatarOriginal;
    data['phone'] = phone;
    data['full_phone']=fullPhone;
    data['country_code'] = countryCode;
    data['token'] = token;
    data['token_type'] = tokenType;
    data['phone_is_active'] = isPhoneActive;
    data['email_is_active']=isEmailActive;
    data['has_valid_subscription']=hasValidSubscription;
    if (address != null) {
      data['address'] = address!.toJson();
    }
    // data['address'] = address?.toJson();
    return data;
  }
}
