import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/core/models/domain_models/image_domain_model.dart';
import 'package:flutter_tdd/features/general/auth/domain/models/user_domain_model.dart';

class TicketReply extends BaseDomainModel {
  int id;
  DateTime createdAt;
  String reply;
  UserDomainModel user;
  List<ImageDomainModel> images;

  TicketReply({
    required this.id,
    required this.createdAt,
    required this.user,
    required this.reply,
    required this.images,
  });
}
