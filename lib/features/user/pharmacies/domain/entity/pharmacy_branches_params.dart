import 'package:flutter_tdd/features/user/category/domain/entities/generic_paginate_params.dart';

class PharmacyBranchesParams {
  final double latitude;
  final double longitude;
  final int pharmacyId;
  final bool formRemote;
  final GenericPaginateParams paginateParams;
  PharmacyBranchesParams({
    required this.latitude,
    required this.longitude,
    required this.pharmacyId,
    required this.paginateParams,
    required this.formRemote,
  });

  Map<String,dynamic> toJson()=>{
    "latitude": latitude,
    "longitude":  longitude,
    ...paginateParams.toJson()
  };


}
