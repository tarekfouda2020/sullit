import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/addresses/domain/models/address.dart';
import 'package:flutter_tdd/features/user/addresses/domain/repository/addresses_repository.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_paginate_params.dart';

class GetAddresses implements UseCase<List<Address>, GenericPaginateParams> {
  @override
  Future<List<Address>> call(GenericPaginateParams param) async {
    var result = await getIt<AddressesRepository>().getAddress(param);
    return result.fold(
      (l) => [],
      (r) => r,
    );
  }
}
