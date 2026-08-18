import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/entity/pharamcy_shipping_info_params.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/repository/pharmacies_repository.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/models/pharmacy_shipping_domain_model.dart';

class GetPharmacyShippingInfo
    extends UseCase<List<PharmacyShippingDomainModel>, PharamcyShippingInfoParams> {
  @override
  Future<List<PharmacyShippingDomainModel>> call(PharamcyShippingInfoParams params) async {
    var result = await getIt<PharmaciesRepository>().getPharmacyShippingInfo(params);
    return result.fold(
      (l) => [],
      (r) => r,
    );
  }
}
