import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/models/domain_models/city.dart';
import 'package:flutter_tdd/core/models/domain_models/country.dart';
import 'package:flutter_tdd/core/models/domain_models/state.dart';
import 'package:flutter_tdd/features/user/addresses/data/models/address_type/address_type.dart';
import 'package:flutter_tdd/features/user/addresses/domain/entities/add_address_params.dart';
import 'package:flutter_tdd/features/user/addresses/domain/entities/edit_address_params.dart';
import 'package:flutter_tdd/features/user/addresses/domain/models/address.dart';
import 'package:flutter_tdd/features/user/addresses/domain/models/address_type_model.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_paginate_params.dart';

abstract class AddressesRepository{
  Future<Either<Failure, List<Address>>> getAddress (GenericPaginateParams param);
  Future<Either<Failure, Address>> addNewAddress (AddAddressParams params);
  Future<Either<Failure, List<Country>>> getCountries (bool param);
  Future<Either<Failure, List<StateDomainModel>>> getStatesByCountryId (int param);
  Future<Either<Failure, List<City>>> getCitiesByStateId (int param);
  Future<Either<Failure, bool>> setDefaultAddress(int param);
  Future<Either<Failure, bool>> deleteAddress (int param);
  Future<Either<Failure, Address>> editAddress (EditAddressParams params);
  Future<Either<Failure, List<AddressTypeModel>>> addressTypes(bool param);
}