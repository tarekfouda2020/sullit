import 'package:auto_route/annotations.dart';
import 'package:flutter_tdd/features/user/addresses/domain/models/address.dart';
import 'package:flutter_tdd/features/user/addresses/presentation/pages/add_new_address/add_new_address_imports.dart';
import 'package:flutter_tdd/features/user/addresses/presentation/pages/addresses/addresses_imports.dart';
import 'package:flutter_tdd/features/user/addresses/presentation/pages/edit_address/edit_address_imports.dart';

const List<AutoRoute> addressesRoute = [
  AdaptiveRoute(page: AddNewAddress),
  AdaptiveRoute<Address>(page: Addresses),
  AdaptiveRoute(page: EditAddress),
];
