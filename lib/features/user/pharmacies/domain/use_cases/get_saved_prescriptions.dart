import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_paginate_params.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/models/saved_prescription_model.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/repository/pharmacies_repository.dart';

class GetSavedPrescriptions
    extends UseCase<List<SavedPrescriptionModel>, GenericPaginateParams> {
  @override
  Future<List<SavedPrescriptionModel>> call(GenericPaginateParams params) async {
    var result = await getIt<PharmaciesRepository>().getSavedPrescriptions(params);
    return result.fold((l) => [], (r) => r);
  }
}
