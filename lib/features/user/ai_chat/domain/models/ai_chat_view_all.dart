import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/ai_chat/domain/models/ai_chat_view_all_query.dart';

class AiChatViewAll extends BaseDomainModel {
  final String? screen;
  final AiChatViewAllQuery? query;

  const AiChatViewAll({this.screen, this.query});
}
