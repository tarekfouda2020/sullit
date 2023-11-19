import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_params.dart';
import 'package:flutter_tdd/features/user/tickets/domain/entities/add_ticket_reply.dart';
import 'package:flutter_tdd/features/user/tickets/domain/entities/create_ticket_params.dart';
import 'package:flutter_tdd/features/user/tickets/domain/models/ticket.dart';
import 'package:flutter_tdd/features/user/tickets/domain/models/ticket_reply.dart';

abstract class TicketsRepository {
  Future<Either<Failure, Ticket>> createTicket (CreateTicketParams params);
  Future<Either<Failure, List<Ticket>>> getTickets (bool param);
  Future<Either<Failure, Ticket>> getTicketDetails (GenericParams param);
  Future<Either<Failure, TicketReply>> addTicketReply (AddTicketReplyParams params);
}