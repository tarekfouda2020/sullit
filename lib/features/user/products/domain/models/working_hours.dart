import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class WorkingHours extends BaseDomainModel {
  final int id;
  final int dayOfWeek;
  final String dayLabel;
  final String openTime;
  final String closeTime;
  final bool isClosed;

  WorkingHours({
    required this.id,
    required this.dayOfWeek,
    required this.dayLabel,
    required this.openTime,
    required this.closeTime,
    required this.isClosed,
  });
}
