import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/models/pharmacy_order_requested_by_model.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/repository/pharmacies_repository.dart';

class GetPharmacyOrderRequestedBy
    extends UseCase<List<PharmacyOrderRequestedByModel>, NoParams> {
  @override
  Future<List<PharmacyOrderRequestedByModel>> call(NoParams params) async {
    var result = await getIt<PharmaciesRepository>().getPharmacyOrderRequestedBy();
    return result.fold((l) => [], (r) => r);
  }
}
