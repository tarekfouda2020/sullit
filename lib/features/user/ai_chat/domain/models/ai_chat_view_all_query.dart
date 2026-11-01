import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class AiChatViewAllQuery extends BaseDomainModel {
  final String? keyword;

  const AiChatViewAllQuery({this.keyword});
}
