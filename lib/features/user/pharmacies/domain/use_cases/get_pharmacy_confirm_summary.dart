import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/order_summary.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/entity/pharmacy_confirm_summary_params.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/models/pharmacy_checkout_domai_model.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/repository/pharmacies_repository.dart';


class GetPharmacyConfirmSummary implements UseCase<PharmacyCheckoutDomaiModel?, PharmacyConfirmSummaryParams> {
  @override
  Future<PharmacyCheckoutDomaiModel?> call(PharmacyConfirmSummaryParams params) async {
    var result = await getIt<PharmaciesRepository>().getConfirmSummary(params);
    return result.fold(
          (l) => null,
          (r) => r,
    );
  }
}
