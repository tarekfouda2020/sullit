import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class DeliveryInstructionModel extends BaseDomainModel {
  final int id;

  final String image;

  final String name;
  bool isSelect;

  DeliveryInstructionModel({
    required this.id,
    required this.image,
    required this.name,
    this.isSelect = false,
  });
}
