import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/repository/pharmacies_repository.dart';

class DeleteSavedPrescription implements UseCase<bool, int> {
  @override
  Future<bool> call(int param) async {
    var result = await getIt<PharmaciesRepository>().deleteSavedPrescription(param);
    return result.fold(
      (l) => false,
      (r) => r,
    );
  }
}
