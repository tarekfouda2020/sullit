import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class AddressTypeModel extends BaseDomainModel {
  final String key;
  final String label;
  bool isSelected;


  AddressTypeModel({
   required this.key,
    required this.label,
    this.isSelected = false
  });

}
