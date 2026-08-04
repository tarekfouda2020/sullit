import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/entity/upload_prescription_params.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/models/saved_prescription_model.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/repository/pharmacies_repository.dart';

class UploadPrescription
    implements UseCase<SavedPrescriptionModel?, UploadPrescriptionParams> {
  @override
  Future<SavedPrescriptionModel?> call(UploadPrescriptionParams param) async {
    var result = await getIt<PharmaciesRepository>().uploadPrescription(param);
    return result.fold((l) => null, (r) => r);
  }
}
