import 'package:collection/collection.dart';
import 'package:flutter_tdd/core/helpers/date_time_helper.dart';
import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/working_hours.dart';

class BranchDomainModel extends BaseDomainModel {
  final int id;
  final String name;
  final String phone;
  final BranchLocationDomainModel? state;
  final BranchLocationDomainModel? city;
  final String address;
  final String mapDescription;
  final String latitude;
  final String longitude;
  final bool isDefault;
  final double? distanceKm;
  final bool? isOpen;
  final List<WorkingHours>? workingHours;
  bool isSelected;

   BranchDomainModel({
    required this.id,
    required this.name,
    required this.phone,
    required this.state,
    required this.city,
    required this.address,
    required this.mapDescription,
    required this.latitude,
    required this.longitude,
    required this.isDefault,
    this.distanceKm,
    this.isOpen,
    this.workingHours,
     this.isSelected = false,
  });


  WorkingHours? get getCurrentWorkingOursDat => workingHours?.firstWhereOrNull(
        (e) => e.dayOfWeek == DateTimeHelper.currentDayNumber
  );

  bool get isCurrentDayAvailable => getCurrentWorkingOursDat?.isClosed == false;

  bool get isCurrentDayClosed => getCurrentWorkingOursDat?.isClosed == true;


}

class BranchLocationDomainModel extends BaseDomainModel {
  final int id;
  final String name;

  const BranchLocationDomainModel({
    required this.id,
    required this.name,
  });
}