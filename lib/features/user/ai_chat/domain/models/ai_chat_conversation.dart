import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class AiChatConversation extends BaseDomainModel {
  final String id;
  final String title;
  final String status;

  const AiChatConversation({
    required this.id,
    this.title = '',
    this.status = '',
  });
}
