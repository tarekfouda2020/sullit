import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/addresses/domain/entities/add_address_params.dart';
import 'package:flutter_tdd/features/user/addresses/domain/models/address.dart';
import 'package:flutter_tdd/features/user/addresses/domain/repository/addresses_repository.dart';

class SetAddNewAddress implements UseCase<Address?, AddAddressParams> {
  @override
  Future<Address?> call(AddAddressParams params) async {
    var result = await getIt<AddressesRepository>().addNewAddress(params);
    return result.fold((l) => null, (r) => r);
  }
}
