import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/addresses/domain/models/address_type_model.dart';
import 'package:flutter_tdd/features/user/addresses/domain/repository/addresses_repository.dart';

class GetAddressTypes implements UseCase<List<AddressTypeModel>, bool> {
  @override
  Future<List<AddressTypeModel>> call(bool param) async {
    var result = await getIt<AddressesRepository>().addressTypes(param);
    return result.fold(
      (l) => [],
      (r) => r,
    );
  }
}
