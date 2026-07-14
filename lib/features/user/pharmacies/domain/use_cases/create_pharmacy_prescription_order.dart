import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/order_summary.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/entity/pharmacy_create_order_params.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/repository/pharmacies_repository.dart';

class CreatePharmacyPrescriptionOrder
    implements UseCase<OrderSummaryDomainModel?, PharmacyCreateOrderParams> {
  @override
  Future<OrderSummaryDomainModel?> call(PharmacyCreateOrderParams params) async {
    var result = await getIt<PharmaciesRepository>().createPrescriptionOrder(params);
    return result.fold(
          (l) => null,
          (r) => r,
    );
  }
}
