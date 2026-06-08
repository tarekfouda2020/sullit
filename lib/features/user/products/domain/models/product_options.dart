// ignore_for_file: avoid_dynamic_calls

import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class ProductOptions extends BaseDomainModel {
  int? attributeId;
  String? title;
  List<String>? options;
  List<String>? selectedAttribute;
  bool? hasValue;

  ProductOptions({
    required this.attributeId,
    required this.title,
    required this.options,
    this.selectedAttribute,
    this.hasValue = false,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['attribute_id'] = attributeId;
    data['title'] = title;
    data['options'] = options;
    return data;
  }

  ProductOptions.fromJson(Map<String, dynamic> json) {
    attributeId = json['attribute_id'];
    title = json['title'];
    options = json['options'].cast<String>();
  }
}
