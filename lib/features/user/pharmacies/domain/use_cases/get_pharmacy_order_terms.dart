import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/models/pharmacy_order_terms_model.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/repository/pharmacies_repository.dart';

class GetPharmacyOrderTerms extends UseCase<PharmacyOrderTermsModel, NoParams> {
  @override
  Future<PharmacyOrderTermsModel> call(NoParams params) async {
    var result = await getIt<PharmaciesRepository>().getPharmacyOrderTerms();
    return result.fold((l) => PharmacyOrderTermsModel(), (r) => r);
  }
}
