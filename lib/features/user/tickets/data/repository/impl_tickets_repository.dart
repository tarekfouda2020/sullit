import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/models/model_to_domain/model_to_domain.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_params.dart';
import 'package:flutter_tdd/features/user/tickets/data/data_sources/tickets_data_sources.dart';
import 'package:flutter_tdd/features/user/tickets/domain/entities/add_ticket_reply.dart';
import 'package:flutter_tdd/features/user/tickets/domain/entities/create_ticket_params.dart';
import 'package:flutter_tdd/features/user/tickets/domain/models/ticket.dart';
import 'package:flutter_tdd/features/user/tickets/domain/models/ticket_reply.dart';
import 'package:flutter_tdd/features/user/tickets/domain/repository/tickets_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: TicketsRepository)
class ImplTicketsRepository extends TicketsRepository with ModelToDomain {
  var dataSource = getIt<TicketsDataSources>();

  @override
  Future<Either<Failure, Ticket>> createTicket(
      CreateTicketParams params) async {
    var result = await dataSource.createTicket(params);
    return toDomainResult(result);
  }

  @override
  Future<Either<Failure, List<Ticket>>> getTickets(bool param) async {
    var result = await dataSource.getTickets(param);
    return toDomainResultList(result);
  }

  @override
  Future<Either<Failure, Ticket>> getTicketDetails(GenericParams param) async {
    var result = await dataSource.getTicketDetails(param);
    return toDomainResult(result);
  }

  @override
  Future<Either<Failure, TicketReply>> addTicketReply(
      AddTicketReplyParams params) async {
    var result = await dataSource.addTicketReply(params);
    return toDomainResult(result);
  }
}
