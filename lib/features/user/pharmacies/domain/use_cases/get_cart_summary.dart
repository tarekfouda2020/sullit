import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/shipping.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/entity/pharmacy_check_out_params.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/repository/pharmacies_repository.dart';

class GetCartSummary extends UseCase<Shipping?, PharmacyCheckoutParams> {
  @override
  Future<Shipping?> call(PharmacyCheckoutParams params) async {
    var result = await getIt<PharmaciesRepository>().getCartSummary(params);
    return result.fold(
      (l) => null,
      (r) => r,
    );
  }
}
