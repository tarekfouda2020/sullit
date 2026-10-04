import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class AiChatBranchCard extends BaseDomainModel {
  final int? id;
  final String? name;
  final bool? isOpen;

  const AiChatBranchCard({this.id, this.name, this.isOpen});
}
