import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/core/models/domain_models/image_domain_model.dart';
import 'package:flutter_tdd/features/user/tickets/domain/models/ticket_reply.dart';

class Ticket extends BaseDomainModel {
  int id;
  String ticketId;
  DateTime sendingDate;
  String subject;
  List<ImageDomainModel> images;
  bool selected = false;
  String status;
  List<TicketReply>? replies;

  Ticket(
      {required this.id,
      required this.ticketId,
      required this.sendingDate,
      required this.subject,
      required this.images,
      required this.status,
      this.replies});
}
