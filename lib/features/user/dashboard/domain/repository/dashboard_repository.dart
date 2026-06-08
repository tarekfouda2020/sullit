import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/user/dashboard/domain/models/dashboards.dart';

abstract class DashboardRepository {
  Future<Either<Failure, Dashboards>> getDashboard(bool param);
}
