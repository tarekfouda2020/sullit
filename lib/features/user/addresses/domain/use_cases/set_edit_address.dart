import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/addresses/domain/entities/edit_address_params.dart';
import 'package:flutter_tdd/features/user/addresses/domain/models/address.dart';
import 'package:flutter_tdd/features/user/addresses/domain/repository/addresses_repository.dart';

class SetEditAddress implements UseCase<AddressDomainModel?, EditAddressParams> {
  @override
  Future<AddressDomainModel?> call(EditAddressParams params) async {
    var result = await getIt<AddressesRepository>().editAddress(params);
    return result.fold((l) => null, (r) => r);
  }
}
