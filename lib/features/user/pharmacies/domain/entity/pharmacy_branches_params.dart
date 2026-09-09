import 'package:flutter_tdd/core/helpers/user_location_params.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_paginate_params.dart';

class PharmacyBranchesParams {
  final int pharmacyId;
  final bool formRemote;
  final GenericPaginateParams paginateParams;
  final UserLocationParams userLocationParams;

  PharmacyBranchesParams({
    required this.pharmacyId,
    required this.paginateParams,
    required this.formRemote,
    UserLocationParams? userLocationParams,
  }) : userLocationParams = userLocationParams ?? UserLocationParams();

  Map<String, dynamic> toJson() => {
        ...userLocationParams.toJson(),
        ...paginateParams.toJson(),
      };
}
