import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/entity/pharmacy_confirm_order_params.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/models/pharmacy_confirm_order_domain_model.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/repository/pharmacies_repository.dart';

class ConfirmPharmacyOrder
    implements UseCase<PharmacyConfirmOrderDomainModel?, PharmacyConfirmOrderParams> {
  @override
  Future<PharmacyConfirmOrderDomainModel?> call(PharmacyConfirmOrderParams params) async {
    var result = await getIt<PharmaciesRepository>().confirmOrder(params);
    return result.fold(
      (l) => null,
      (r) => r,
    );
  }
}
