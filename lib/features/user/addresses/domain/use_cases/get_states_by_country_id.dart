import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/models/domain_models/state.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/addresses/domain/repository/addresses_repository.dart';

class GetStatesByCountryId implements UseCase<List<StateDomainModel>, int> {
  @override
  Future<List<StateDomainModel>> call(int param)async {
    var result = await getIt<AddressesRepository>().getStatesByCountryId(param);
    return result.fold((l) => [], (r) => r,);
  }

}