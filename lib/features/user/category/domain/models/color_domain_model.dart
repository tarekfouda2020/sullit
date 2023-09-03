import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class ColorDomainModel extends BaseDomainModel {
  int? id;
  String? name;
  String? code;
  bool selected = false;

  ColorDomainModel({
    required this.id,
    required this.name,
    required this.code,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['code'] = code;
    data['name'] = name;
    return data;
  }

  ColorDomainModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    code = json['code'];
  }
}
