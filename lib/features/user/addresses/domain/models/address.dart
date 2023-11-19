import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/core/models/domain_models/city.dart';
import 'package:flutter_tdd/core/models/domain_models/country.dart';
import 'package:flutter_tdd/core/models/domain_models/state.dart';

class Address extends BaseDomainModel {
  int? id;
  int? userId;
  String? address;
  Country? country;
  StateDomainModel? state;
  City? city;
  String? postalCode;
  String? phone;
  String?countryCode;
  String?fullPhone;
  bool? setDefault;
  String? lat;
  String? lang;
  bool? isActive;
  bool? selected = false;

  Address({
    this.id,
    this.userId,
    this.address,
    this.countryCode,
    this.country,
    this.state,
    this.city,
    this.postalCode,
    this.phone,
    this.fullPhone,
    this.setDefault,
    this.lat,
    this.lang,
    this.isActive,
  });

  Address.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    address = json['address'];
    postalCode = json['postal_code'];
    phone = json['phone'];
    countryCode=json['country_code'];
    fullPhone=json['full_phone'];
    setDefault = json['set_default'];
    lat = json['lat'];
    lang = json['lang'];
    isActive = json['is_active'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['user_id'] = userId;
    data['address'] = address;
    data['postal_code'] = postalCode;
    data['phone'] = phone;
    data['full_phone']=fullPhone;
    data['country_code']=countryCode;
    data['set_default'] = setDefault;
    data['lat'] = lat;
    data['lang'] = lang;
    data['is_active'] = isActive;
    return data;
  }
}
